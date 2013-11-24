.class public Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "SingleItemAlbum.java"


# instance fields
.field private final mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 2
    .parameter "path"
    .parameter "item"

    .prologue
    .line 28
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 29
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SingleItemAlbum("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;->mName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getItem()Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    return-object v0
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
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    if-gtz p1, :cond_0

    add-int v1, p1, p2

    if-lez v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;->mDataVersion:J

    return-wide v0
.end method
