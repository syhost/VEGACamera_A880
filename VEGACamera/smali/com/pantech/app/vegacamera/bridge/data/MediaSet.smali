.class public abstract Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;,
        Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;,
        Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;
    }
.end annotation


# static fields
.field private static final FUTURE_STUB:Lcom/pantech/app/vegacamera/bridge/util/Future; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final MEDIAITEM_BATCH_FETCH_COUNT:I = 0x1f4

.field public static final SYNC_RESULT_CANCELLED:I = 0x1

.field public static final SYNC_RESULT_ERROR:I = 0x2

.field public static final SYNC_RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaSet"


# instance fields
.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 250
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$1;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$1;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->FUTURE_STUB:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 273
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V
    .locals 1
    .parameter "path"
    .parameter "version"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 154
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    .line 59
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    return-void
.end method

.method protected enumerateMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)I
    .locals 9
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v6

    .line 212
    .local v6, total:I
    const/4 v5, 0x0

    .line 213
    .local v5, start:I
    :goto_0
    if-lt v5, v6, :cond_0

    .line 222
    return v6

    .line 214
    :cond_0
    const/16 v7, 0x1f4

    sub-int v8, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 215
    .local v0, count:I
    invoke-virtual {p0, v5, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    .line 216
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, n:I
    :goto_1
    if-lt v1, v4, :cond_1

    .line 220
    add-int/2addr v5, v0

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 218
    .local v2, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    add-int v7, p2, v5

    add-int/2addr v7, v1

    invoke-interface {p1, v7, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;->consume(ILcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public enumerateMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->enumerateMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)I

    .line 197
    return-void
.end method

.method protected enumerateTotalMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)I
    .locals 5
    .parameter "consumer"
    .parameter "startIndex"

    .prologue
    .line 228
    const/4 v2, 0x0

    .line 229
    .local v2, start:I
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->enumerateMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 230
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .line 231
    .local v1, m:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 234
    return v2

    .line 232
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v3

    add-int v4, p2, v2

    invoke-virtual {v3, p1, v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->enumerateTotalMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public enumerateTotalMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;)V
    .locals 1
    .parameter "consumer"

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->enumerateTotalMediaItems(Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)I

    .line 201
    return-void
.end method

.method public getCoverMediaItem()Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 77
    const/4 v4, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    .line 78
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 79
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 85
    :goto_0
    return-object v4

    .line 80
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 85
    const/4 v4, 0x0

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getCoverMediaItem()Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v0

    .line 82
    .local v0, cover:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-eqz v0, :cond_2

    move-object v4, v0

    .line 83
    goto :goto_0

    .line 80
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getDetails()Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    .locals 3

    .prologue
    .line 187
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->getDetails()Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;

    move-result-object v0

    .line 188
    .local v0, details:Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 189
    return-object v0
.end method

.method protected getIndexOf(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/util/ArrayList;)I
    .locals 3
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 145
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 149
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 146
    .restart local v0       #i:I
    :cond_1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-eq v2, p1, :cond_0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getIndexOfItem(Lcom/pantech/app/vegacamera/bridge/data/Path;I)I
    .locals 8
    .parameter "path"
    .parameter "hint"

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v3, 0x1f4

    .line 121
    const-string v6, "MediaSet"

    const-string v7, "getIndexOfItem()"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    add-int/lit16 v6, p2, -0xfa

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 125
    .local v2, start:I
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 126
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    invoke-virtual {p0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getIndexOf(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 127
    .local v0, index:I
    if-eq v0, v5, :cond_0

    .line 128
    add-int v3, v2, v0

    .line 138
    :goto_0
    return v3

    .line 131
    :cond_0
    if-nez v2, :cond_1

    move v2, v3

    .line 132
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    :goto_2
    invoke-virtual {p0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getIndexOf(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/util/ArrayList;)I

    move-result v0

    .line 135
    if-eq v0, v5, :cond_2

    .line 136
    add-int v3, v2, v0

    goto :goto_0

    :cond_1
    move v2, v4

    .line 131
    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v3, :cond_3

    move v3, v5

    .line 138
    goto :goto_0

    .line 139
    :cond_3
    add-int/lit16 v2, v2, 0x1f4

    .line 140
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    .line 133
    goto :goto_2
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 1
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
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 5

    .prologue
    .line 111
    const-string v3, "MediaSet"

    const-string v4, "getTotalMediaItemCount()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItemCount()I

    move-result v2

    .line 113
    .local v2, total:I
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 116
    return v2

    .line 114
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/2addr v2, v3

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isCameraRoll()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentChanged()V
    .locals 3

    .prologue
    .line 175
    const-string v1, "MediaSet"

    const-string v2, "notifyContentChanged()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    return-void

    .line 176
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/ContentListener;

    .line 177
    .local v0, listener:Lcom/pantech/app/vegacamera/bridge/data/ContentListener;
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/data/ContentListener;->onContentDirty()V

    goto :goto_0
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-void
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
    .line 246
    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;->onSyncDone(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;I)V

    .line 247
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->FUTURE_STUB:Lcom/pantech/app/vegacamera/bridge/util/Future;

    return-object v0
.end method

.method protected requestSyncOnMultipleSets([Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;
    .locals 1
    .parameter "sets"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;",
            ")",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$MultiSetSyncFuture;-><init>(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$SyncListener;)V

    return-object v0
.end method
