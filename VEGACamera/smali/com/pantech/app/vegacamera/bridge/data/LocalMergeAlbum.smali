.class public Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "LocalMergeAlbum.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;
    }
.end annotation


# static fields
.field private static final PAGE_SIZE:I = 0x40

.field private static final TAG:Ljava/lang/String; = "LocalMergeAlbum"


# instance fields
.field private mBucketId:I

.field private final mComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFetcher:[Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;

.field private mIndex:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private final mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

.field private mSupportedOperation:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/util/Comparator;[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;I)V
    .locals 5
    .parameter "path"
    .parameter
    .parameter "sources"
    .parameter "bucketId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;[",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    const/4 v2, 0x0

    .line 51
    const-wide/16 v3, -0x1

    invoke-direct {p0, p1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 48
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    .line 52
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    .line 53
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 54
    array-length v1, p3

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mBucketId:I

    .line 56
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v4, v3

    move v1, v2

    :goto_1
    if-lt v1, v4, :cond_1

    .line 59
    return-void

    .line 54
    :cond_0
    aget-object v1, p3, v2

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 56
    :cond_1
    aget-object v0, v3, v1

    .line 57
    .local v0, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->addContentListener(Lcom/pantech/app/vegacamera/bridge/data/ContentListener;)V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private invalidateCache()V
    .locals 5

    .prologue
    .line 76
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 79
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 80
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [I

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    return-void

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mFetcher:[Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->invalidate()V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateData()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_0

    move v2, v3

    .line 64
    .local v2, supported:I
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v4, v4

    new-array v4, v4, [Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mFetcher:[Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;

    .line 65
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v1, v4

    .local v1, n:I
    :goto_1
    if-lt v0, v1, :cond_1

    .line 69
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSupportedOperation:I

    .line 70
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->clear()V

    .line 71
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v6, v6

    new-array v6, v6, [I

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v4, v4

    if-nez v4, :cond_2

    const-string v3, ""

    :goto_2
    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    .line 73
    return-void

    .line 63
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #supported:I
    :cond_0
    const/4 v2, -0x1

    goto :goto_0

    .line 66
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #supported:I
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mFetcher:[Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;

    new-instance v5, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    aget-object v6, v6, v0

    invoke-direct {v5, v6}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;-><init>(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V

    aput-object v5, v4, v0

    .line 67
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getSupportedOperations()I

    move-result v4

    and-int/2addr v2, v4

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public delete()V
    .locals 4

    .prologue
    .line 191
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 194
    return-void

    .line 191
    :cond_0
    aget-object v0, v2, v1

    .line 192
    .local v0, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->delete()V

    .line 191
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 85
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 86
    const-string v1, "bucketId"

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mBucketId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 14
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
    .line 103
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v7, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    iget-object v11, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v12, p1, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    .line 106
    .local v2, head:Ljava/util/SortedMap;,"Ljava/util/SortedMap<Ljava/lang/Integer;[I>;"
    invoke-interface {v2}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 107
    .local v6, markPos:I
    const/4 v10, 0x0

    .line 110
    .local v10, subPos:[I
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    invoke-virtual {v11}, [I->clone()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, [I

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    iget-object v11, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v11, v11

    new-array v9, v11, [Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 118
    .local v9, slot:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    iget-object v11, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v8, v11

    .line 121
    .local v8, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-lt v3, v8, :cond_1

    .line 125
    move v3, v6

    :goto_1
    add-int v11, p1, p2

    if-lt v3, v11, :cond_2

    .line 152
    .end local v3           #i:I
    .end local v8           #size:I
    .end local v9           #slot:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_0
    :goto_2
    return-object v7

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v11, "LocalMergeAlbum"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "NullPointerException e "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 122
    .end local v1           #e:Ljava/lang/NullPointerException;
    .restart local v3       #i:I
    .restart local v8       #size:I
    .restart local v9       #slot:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :cond_1
    iget-object v11, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mFetcher:[Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;

    aget-object v11, v11, v3

    aget v12, v10, v3

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v11

    aput-object v11, v9, v3

    .line 121
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    :cond_2
    const/4 v5, -0x1

    .line 127
    .local v5, k:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    if-lt v4, v8, :cond_5

    .line 136
    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    .line 140
    aget v11, v10, v5

    add-int/lit8 v11, v11, 0x1

    aput v11, v10, v5

    .line 141
    if-lt v3, p1, :cond_3

    .line 142
    aget-object v11, v9, v5

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    :cond_3
    iget-object v11, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mFetcher:[Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;

    aget-object v11, v11, v5

    aget v12, v10, v5

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum$FetchCache;->getItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v11

    aput-object v11, v9, v5

    .line 147
    add-int/lit8 v11, v3, 0x1

    rem-int/lit8 v11, v11, 0x40

    if-nez v11, :cond_4

    .line 148
    iget-object v12, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mIndex:Ljava/util/TreeMap;

    add-int/lit8 v11, v3, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10}, [I->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    invoke-virtual {v12, v13, v11}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 128
    :cond_5
    aget-object v11, v9, v4

    if-eqz v11, :cond_7

    .line 129
    const/4 v11, -0x1

    if-eq v5, v11, :cond_6

    iget-object v11, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mComparator:Ljava/util/Comparator;

    aget-object v12, v9, v4

    aget-object v13, v9, v5

    invoke-interface {v11, v12, v13}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_7

    .line 130
    :cond_6
    move v5, v4

    .line 127
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public getMediaItemCount()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->getTotalMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSupportedOperation:I

    return v0
.end method

.method public getTotalMediaItemCount()I
    .locals 6

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, count:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 161
    return v0

    .line 158
    :cond_0
    aget-object v1, v3, v2

    .line 159
    .local v1, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    add-int/2addr v0, v5

    .line 158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->notifyContentChanged()V

    .line 182
    return-void
.end method

.method public reload()J
    .locals 7

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, changed:Z
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v2, v3

    .local v2, n:I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->nextVersionNumber()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mDataVersion:J

    .line 173
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->updateData()V

    .line 174
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->invalidateCache()V

    .line 176
    :cond_0
    iget-wide v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mDataVersion:J

    return-wide v3

    .line 168
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mDataVersion:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 169
    const/4 v0, 0x1

    .line 167
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public rotate(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    .line 198
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;->mSources:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 201
    return-void

    .line 198
    :cond_0
    aget-object v0, v2, v1

    .line 199
    .local v0, set:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->rotate(I)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
