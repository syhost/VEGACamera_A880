.class public Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "FilterEmptyPromptSet.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/ContentListener;


# instance fields
.field private mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

.field private mEmptyItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 2
    .parameter "path"
    .parameter "baseSet"
    .parameter "emptyItem"

    .prologue
    .line 28
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    .line 30
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 32
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->addContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V

    .line 33
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
    .line 47
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 48
    .local v0, itemCount:I
    if-lez v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    .line 50
    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 51
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mEmptyItem:Ljava/util/ArrayList;

    goto :goto_0

    .line 53
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public getMediaItemCount()I
    .locals 2

    .prologue
    .line 37
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v0

    .line 38
    .local v0, itemCount:I
    if-lez v0, :cond_0

    .line 41
    .end local v0           #itemCount:I
    :goto_0
    return v0

    .restart local v0       #itemCount:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCameraRoll()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->isCameraRoll()Z

    move-result v0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->notifyContentChanged()V

    .line 60
    return-void
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J

    move-result-wide v0

    return-wide v0
.end method
