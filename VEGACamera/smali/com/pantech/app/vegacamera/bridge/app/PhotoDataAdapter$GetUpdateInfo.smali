.class Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetUpdateInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1025
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)V

    return-void
.end method

.method private needContentReload()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 1028
    const-string v4, "PhotoDataAdapter"

    const-string v5, "needContentReload"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$6(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v1

    .local v1, i:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$7(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v2

    .local v2, n:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 1033
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$8(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$9(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v5

    rem-int/lit16 v5, v5, 0x100

    aget-object v0, v4, v5

    .line 1034
    .local v0, current:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$10(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v5

    if-ne v4, v5, :cond_0

    const/4 v3, 0x0

    .end local v0           #current:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_0
    return v3

    .line 1030
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mData:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$8(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v4

    rem-int/lit16 v5, v1, 0x100

    aget-object v4, v4, v5

    if-eqz v4, :cond_0

    .line 1029
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public call()Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1039
    const-string v1, "PhotoDataAdapter"

    const-string v2, "GetUpdateInfo call()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;-><init>(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;)V

    .line 1042
    .local v0, info:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSourceVersion:J
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$11(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->version:J

    .line 1043
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->needContentReload()Z

    move-result v1

    iput-boolean v1, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->reloadContent:Z

    .line 1044
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mItemPath:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$10(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->target:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 1045
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mCurrentIndex:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$9(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->indexHint:I

    .line 1046
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentStart:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$6(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->contentStart:I

    .line 1047
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mContentEnd:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$7(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->contentEnd:I

    .line 1048
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->this$0:Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->mSize:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;->access$12(Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter;)I

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;->size:I

    .line 1049
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$GetUpdateInfo;->call()Lcom/pantech/app/vegacamera/bridge/app/PhotoDataAdapter$UpdateInfo;

    move-result-object v0

    return-object v0
.end method
