.class public Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "SnailAlbum.java"


# instance fields
.field private mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 2
    .parameter "path"
    .parameter "item"

    .prologue
    .line 30
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    check-cast p2, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    .end local p2
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->mItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    .line 32
    return-void
.end method


# virtual methods
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
    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    if-gtz p1, :cond_0

    add-int v1, p1, p2

    if-lez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->mItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "SnailAlbum"

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public notifyChange()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 72
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->notifyContentChanged()V

    .line 73
    return-void
.end method

.method public reload()J
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->mDirty:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->mItem:Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;->updateVersion()V

    .line 65
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->mDataVersion:J

    .line 67
    :cond_0
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;->mDataVersion:J

    return-wide v0
.end method
