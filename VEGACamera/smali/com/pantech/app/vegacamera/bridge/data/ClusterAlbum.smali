.class public Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/ContentListener;


# instance fields
.field private mClusterAlbumSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

.field private mCover:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

.field private mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

.field private mName:Ljava/lang/String;

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V
    .locals 2
    .parameter "path"
    .parameter "dataManager"
    .parameter "clusterAlbumSet"

    .prologue
    .line 30
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    .line 32
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mClusterAlbumSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mClusterAlbumSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->addContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V

    .line 34
    return-void
.end method

.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcom/pantech/app/vegacamera/bridge/data/DataManager;)Ljava/util/ArrayList;
    .locals 8
    .parameter
    .parameter "start"
    .parameter "count"
    .parameter "dataManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;II",
            "Lcom/pantech/app/vegacamera/bridge/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 89
    :cond_0
    return-object v4

    .line 76
    :cond_1
    add-int v6, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 77
    .local v2, end:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 78
    .local v5, subset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    sub-int v6, v2, p1

    new-array v0, v6, [Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 79
    .local v0, buf:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum$1;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum$1;-><init>([Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 84
    .local v1, consumer:Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;
    const/4 v6, 0x0

    invoke-virtual {p3, v5, v1, v6}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)V

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    sub-int v6, v2, p1

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 86
    .local v4, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 87
    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 122
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum$2;-><init>(Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;)V

    .line 129
    .local v0, consumer:Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)V

    .line 130
    return-void
.end method

.method protected enumerateMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)I
    .locals 2
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)V

    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCoverMediaItem()Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mCover:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mCover:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getCoverMediaItem()Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/pantech/app/vegacamera/bridge/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 117
    const/16 v0, 0x405

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->notifyContentChanged()V

    .line 113
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mClusterAlbumSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mDataVersion:J

    .line 108
    :cond_0
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setCoverMediaItem(Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 0
    .parameter "cover"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mCover:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 38
    return-void
.end method

.method setMediaItems(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, paths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->mName:Ljava/lang/String;

    .line 55
    return-void
.end method
