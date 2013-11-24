.class Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;
.super Ljava/lang/Object;
.source "TileImageView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TileDecoder"
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
.field private mNotifier:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 798
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 800
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder$1;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->mNotifier:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 798
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    .locals 1
    .parameter

    .prologue
    .line 798
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Void;
    .locals 3
    .parameter "jc"

    .prologue
    .line 811
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setMode(I)Z

    .line 812
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->mNotifier:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;

    invoke-interface {p1, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 813
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    const/4 v1, 0x0

    return-object v1

    .line 814
    :cond_1
    const/4 v0, 0x0

    .line 815
    .local v0, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    monitor-enter v2

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mDecodeQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->access$7(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->pop()Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    move-result-object v0

    .line 817
    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 818
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->waitWithoutInterrupt(Ljava/lang/Object;)V

    .line 815
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 821
    if-eqz v0, :cond_0

    .line 823
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->decodeTile(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->queueForUpload(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)V

    goto :goto_0

    .line 815
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
