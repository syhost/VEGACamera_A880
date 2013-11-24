.class public Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "ComboAlbum.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/ContentListener;


# instance fields
.field private mName:Ljava/lang/String;

.field private final mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .parameter "mediaSets"
    .parameter "name"

    .prologue
    .line 32
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 33
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 34
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 37
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mName:Ljava/lang/String;

    .line 38
    return-void

    .line 34
    :cond_0
    aget-object v0, v2, v1

    .line 35
    .local v0, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->addContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V

    .line 34
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 9
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
    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v7, :cond_1

    .line 57
    :cond_0
    return-object v2

    .line 43
    :cond_1
    aget-object v3, v6, v5

    .line 44
    .local v3, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v4

    .line 45
    .local v4, size:I
    const/4 v8, 0x1

    if-lt p2, v8, :cond_0

    .line 47
    if-ge p1, v4, :cond_3

    .line 48
    add-int v8, p1, p2

    if-gt v8, v4, :cond_2

    move v0, p2

    .line 49
    .local v0, fetchCount:I
    :goto_1
    invoke-virtual {v3, p1, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 50
    .local v1, fetchItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr p2, v8

    .line 52
    const/4 p1, 0x0

    .line 43
    .end local v0           #fetchCount:I
    .end local v1           #fetchItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 48
    :cond_2
    sub-int v0, v4, p1

    goto :goto_1

    .line 54
    :cond_3
    sub-int/2addr p1, v4

    goto :goto_2
.end method

.method public getMediaItemCount()I
    .locals 6

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, count:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 66
    return v0

    .line 63
    :cond_0
    aget-object v1, v3, v2

    .line 64
    .local v1, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v5

    add-int/2addr v0, v5

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->notifyContentChanged()V

    .line 99
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v2, v5

    .local v2, n:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mDataVersion:J

    .line 94
    :cond_0
    iget-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mDataVersion:J

    return-wide v5

    .line 88
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J

    move-result-wide v3

    .line 89
    .local v3, version:J
    iget-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mDataVersion:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 90
    const/4 v0, 0x1

    .line 87
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public requestSync(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;
    .locals 1
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;",
            ")",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->requestSyncOnMultipleSets([Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v0

    return-object v0
.end method

.method public useNameOfChild(I)V
    .locals 1
    .parameter "i"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;->mName:Ljava/lang/String;

    .line 82
    :cond_0
    return-void
.end method
