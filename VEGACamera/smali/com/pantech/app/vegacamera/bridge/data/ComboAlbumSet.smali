.class public Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "ComboAlbumSet.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/ContentListener;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V
    .locals 4
    .parameter "path"
    .parameter "application"
    .parameter "mediaSets"

    .prologue
    .line 32
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 33
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 34
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 37
    invoke-interface {p2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->set_label_all_albums:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mName:Ljava/lang/String;

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
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 5
    .parameter "index"

    .prologue
    .line 42
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 49
    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 42
    :cond_0
    aget-object v0, v3, v2

    .line 43
    .local v0, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .line 44
    .local v1, size:I
    if-ge p1, v1, :cond_1

    .line 45
    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v2

    goto :goto_1

    .line 47
    :cond_1
    sub-int/2addr p1, v1

    .line 42
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 6

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, count:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 58
    return v0

    .line 55
    :cond_0
    aget-object v1, v3, v2

    .line 56
    .local v1, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    add-int/2addr v0, v5

    .line 55
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 3

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 72
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 69
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->isLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const/4 v2, 0x1

    goto :goto_1

    .line 68
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->notifyContentChanged()V

    .line 90
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v2, v5

    .local v2, n:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->nextVersionNumber()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mDataVersion:J

    .line 85
    :cond_0
    iget-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mDataVersion:J

    return-wide v5

    .line 79
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J

    move-result-wide v3

    .line 80
    .local v3, version:J
    iget-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mDataVersion:J

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 81
    const/4 v0, 0x1

    .line 78
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
    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->mSets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {p0, v0, p1}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;->requestSyncOnMultipleSets([Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v0

    return-object v0
.end method
