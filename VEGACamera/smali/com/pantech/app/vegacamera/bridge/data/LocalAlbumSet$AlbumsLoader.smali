.class Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;
.super Ljava/lang/Object;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumsLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Ljava/util/ArrayList;
    .locals 16
    .parameter "jc"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;

    move-object/from16 v0, p1

    #calls: Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->loadBucketEntries(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)[Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->access$0(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)[Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;

    move-result-object v9

    .line 187
    .local v9, entries:[Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    const/4 v8, 0x0

    .line 209
    :cond_0
    return-object v8

    .line 190
    :cond_1
    const/4 v12, 0x0

    .line 193
    .local v12, offset:I
    if-eqz v9, :cond_3

    .line 194
    sget v1, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    #calls: Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->findBucket([Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;I)I
    invoke-static {v9, v1}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->access$1([Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;I)I

    move-result v11

    .line 195
    .local v11, index:I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_2

    .line 196
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .local v13, offset:I
    #calls: Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V
    invoke-static {v9, v12, v11}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->access$2([Ljava/lang/Object;II)V

    move v12, v13

    .line 198
    .end local v13           #offset:I
    .restart local v12       #offset:I
    :cond_2
    sget v1, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->DOWNLOAD_BUCKET_ID:I

    #calls: Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->findBucket([Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;I)I
    invoke-static {v9, v1}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->access$1([Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;I)I

    move-result v11

    .line 199
    const/4 v1, -0x1

    if-eq v11, v1, :cond_3

    .line 200
    add-int/lit8 v13, v12, 0x1

    .end local v12           #offset:I
    .restart local v13       #offset:I
    #calls: Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V
    invoke-static {v9, v12, v11}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->access$2([Ljava/lang/Object;II)V

    move v12, v13

    .line 203
    .end local v11           #index:I
    .end local v13           #offset:I
    .restart local v12       #offset:I
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v8, albums:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSet;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->access$3(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;)Lcom/pantech/app/vegacamera/bridge/CameraApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v2

    .line 205
    .local v2, dataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    array-length v15, v9

    const/4 v1, 0x0

    move v14, v1

    :goto_0
    if-ge v14, v15, :cond_0

    aget-object v10, v9, v14

    .line 206
    .local v10, entry:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;

    #getter for: Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mType:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->access$4(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;->this$0:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    iget v5, v10, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;->bucketId:I

    iget-object v6, v10, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;->bucketName:Ljava/lang/String;

    #calls: Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->getLocalAlbum(Lcom/pantech/app/vegacamera/bridge/data/DataManager;ILcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-static/range {v1 .. v6}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->access$5(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;Lcom/pantech/app/vegacamera/bridge/data/DataManager;ILcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v7

    .line 207
    .local v7, album:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit8 v1, v14, 0x1

    move v14, v1

    goto :goto_0
.end method
