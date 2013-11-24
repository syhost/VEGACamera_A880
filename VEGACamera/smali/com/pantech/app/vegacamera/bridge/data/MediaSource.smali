.class public abstract Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSource"


# instance fields
.field private mPrefix:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->mPrefix:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public abstract createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 1
    .parameter "uri"
    .parameter "type"

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 1
    .parameter "item"

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTargetCacheSize()J
    .locals 2

    .prologue
    .line 59
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTotalUsedCacheSize()J
    .locals 2

    .prologue
    .line 55
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;)V
    .locals 8
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;",
            ">;",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 80
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 94
    return-void

    .line 81
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;

    .line 82
    .local v3, pid:Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;
    iget-object v5, v3, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getObject()Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v2

    .line 83
    .local v2, obj:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    if-nez v2, :cond_1

    .line 85
    :try_start_0
    iget-object v5, v3, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 90
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 91
    iget v5, v3, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->id:I

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .end local v2           #obj:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    invoke-interface {p2, v5, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;->consume(ILcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 80
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .restart local v2       #obj:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :catch_0
    move-exception v4

    .line 87
    .local v4, th:Ljava/lang/Throwable;
    const-string v5, "MediaSource"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot create media object: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v3, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method
