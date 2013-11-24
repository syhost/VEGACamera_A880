.class Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;
.super Ljava/lang/Object;
.source "LocalMergeAlbum.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FetchCache"
.end annotation


# instance fields
.field private mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

.field private mCacheRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStartPos:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V
    .locals 0
    .parameter "baseSet"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 210
    return-void
.end method


# virtual methods
.method public getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 4
    .parameter "index"

    .prologue
    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, needLoading:Z
    const/4 v0, 0x0

    .line 219
    .local v0, cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_0

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    add-int/lit8 v2, v2, 0x40

    if-lt p1, v2, :cond_4

    .line 220
    :cond_0
    const/4 v1, 0x1

    .line 228
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 229
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mBaseSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 230
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 231
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    .line 234
    :cond_2
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    if-lt p1, v2, :cond_3

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt p1, v2, :cond_5

    .line 235
    :cond_3
    const/4 v2, 0x0

    .line 238
    :goto_1
    return-object v2

    .line 222
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 223
    .restart local v0       #cache:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    if-nez v0, :cond_1

    .line 224
    const/4 v1, 0x1

    goto :goto_0

    .line 238
    :cond_5
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mStartPos:I

    sub-int v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    goto :goto_1
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->mCacheRef:Ljava/lang/ref/SoftReference;

    .line 214
    return-void
.end method
