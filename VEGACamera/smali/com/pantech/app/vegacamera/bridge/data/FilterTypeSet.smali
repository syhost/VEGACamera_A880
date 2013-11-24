.class public Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "FilterTypeSet.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/ContentListener;


# instance fields
.field private final mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

.field private final mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

.field private final mMediaType:I

.field private final mPaths:Ljava/util/ArrayList;
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
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;I)V
    .locals 2
    .parameter "path"
    .parameter "dataManager"
    .parameter "baseSet"
    .parameter "mediaType"

    .prologue
    .line 32
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    .line 33
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    .line 34
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 35
    iput p4, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mMediaType:I

    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->addContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mMediaType:I

    return v0
.end method

.method private updateData()V
    .locals 10

    .prologue
    .line 80
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 81
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/filter/mediatype/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mMediaType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, basePath:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    .local v5, n:I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 96
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 97
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v7

    .line 98
    .local v7, total:I
    new-array v1, v7, [Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 100
    .local v1, buf:[Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    new-instance v9, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$1;

    invoke-direct {v9, p0, v7, v1}, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$1;-><init>(Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;I[Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->enumerateMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;)V

    .line 111
    const/4 v4, 0x0

    :goto_1
    if-lt v4, v7, :cond_3

    .line 116
    return-void

    .line 84
    .end local v1           #buf:[Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v7           #total:I
    :cond_0
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v8, v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v6

    .line 85
    .local v6, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/bridge/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, filteredPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    invoke-virtual {v8, v2}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v3

    .line 87
    .local v3, filteredSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    if-eqz v3, :cond_2

    .line 88
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J

    .line 89
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v8

    if-gtz v8, :cond_1

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    if-lez v8, :cond_2

    .line 90
    :cond_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    .end local v2           #filteredPath:Ljava/lang/String;
    .end local v3           #filteredSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .end local v6           #set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .restart local v1       #buf:[Lcom/pantech/app/vegacamera/bridge/data/Path;
    .restart local v7       #total:I
    :cond_3
    aget-object v8, v1, v4

    if-eqz v8, :cond_4

    .line 113
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    aget-object v9, v1, v4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet$2;-><init>(Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;)V

    .line 132
    .local v0, consumer:Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)V

    .line 133
    return-void
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
    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    invoke-static {v0, p1, p2, v1}, Lcom/pantech/app/vegacamera/bridge/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/pantech/app/vegacamera/bridge/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x5

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->notifyContentChanged()V

    .line 76
    return-void
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mDataVersion:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 67
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->updateData()V

    .line 68
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mDataVersion:J

    .line 70
    :cond_0
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;->mDataVersion:J

    return-wide v0
.end method
