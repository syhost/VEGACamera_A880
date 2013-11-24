.class Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperation:I

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "operation"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1576
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1577
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->mOperation:I

    .line 1578
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->mItems:Ljava/util/ArrayList;

    .line 1579
    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 8
    .parameter "jc"

    .prologue
    .line 1583
    const/4 v1, 0x0

    .line 1584
    .local v1, index:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v2

    .line 1585
    .local v2, manager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    const/4 v3, 0x1

    .line 1587
    .local v3, result:I
    :try_start_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onProgressStart()V
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$7(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;)V

    .line 1588
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_0

    .line 1601
    :goto_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onProgressComplete(I)V
    invoke-static {v5, v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$6(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V

    .line 1603
    :goto_2
    const/4 v5, 0x0

    return-object v5

    .line 1588
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 1589
    .local v0, id:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1590
    const/4 v3, 0x3

    .line 1591
    goto :goto_1

    .line 1593
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->mOperation:I

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->execute(Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;ILcom/pantech/app/vegacamera/bridge/data/Path;)Z
    invoke-static {v6, v2, p1, v7, v0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$8(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;ILcom/pantech/app/vegacamera/bridge/data/Path;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1594
    const/4 v3, 0x2

    .line 1596
    :cond_2
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    add-int/lit8 v1, v1, 0x1

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onProgressUpdate(I)V
    invoke-static {v6, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$9(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1598
    .end local v0           #id:Lcom/pantech/app/vegacamera/bridge/data/Path;
    :catch_0
    move-exception v4

    .line 1599
    .local v4, th:Ljava/lang/Throwable;
    :try_start_2
    const-string v5, "PhotoPage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "failed to execute operation "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->mOperation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1601
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onProgressComplete(I)V
    invoke-static {v5, v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$6(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V

    goto :goto_2

    .line 1600
    .end local v4           #th:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 1601
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$MediaOperation;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->onProgressComplete(I)V
    invoke-static {v6, v3}, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;->access$6(Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;I)V

    .line 1602
    throw v5
.end method
