.class public Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;
.super Ljava/lang/Object;
.source "ImageCacheService.java"


# static fields
.field private static final IMAGE_CACHE_FILE:Ljava/lang/String; = "imgcache"

.field private static final IMAGE_CACHE_MAX_BYTES:I = 0xc800000

.field private static final IMAGE_CACHE_MAX_ENTRIES:I = 0x1388

.field private static final IMAGE_CACHE_VERSION:I = 0x4


# instance fields
.field private mCache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "imgcache"

    const/16 v1, 0x1388

    const/high16 v2, 0xc80

    .line 43
    const/4 v3, 0x4

    .line 42
    invoke-static {p1, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/util/CacheManager;->getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/pantech/app/vegacamera/bridge/common/BlobCache;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;->mCache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;

    .line 44
    return-void
.end method

.method private static isSameKey([B[B)Z
    .locals 5
    .parameter "key"
    .parameter "buffer"

    .prologue
    const/4 v2, 0x0

    .line 96
    array-length v1, p0

    .line 97
    .local v1, n:I
    array-length v3, p1

    if-ge v3, v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return v2

    .line 100
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-lt v0, v1, :cond_2

    .line 105
    const/4 v2, 0x1

    goto :goto_0

    .line 101
    :cond_2
    aget-byte v3, p0, v0

    aget-byte v4, p1, v0

    if-ne v3, v4, :cond_0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static makeKey(Lcom/pantech/app/vegacamera/bridge/data/Path;I)[B
    .locals 2
    .parameter "path"
    .parameter "type"

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getImageData(Lcom/pantech/app/vegacamera/bridge/data/Path;ILcom/pantech/app/vegacamera/bridge/data/BytesBufferPool$BytesBuffer;)Z
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "buffer"

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-static {p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;->makeKey(Lcom/pantech/app/vegacamera/bridge/data/Path;I)[B

    move-result-object v2

    .line 55
    .local v2, key:[B
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->crc64Long([B)J

    move-result-wide v0

    .line 57
    .local v0, cacheKey:J
    :try_start_0
    new-instance v3, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;

    invoke-direct {v3}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;-><init>()V

    .line 58
    .local v3, request:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;
    iput-wide v0, v3, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->key:J

    .line 59
    iget-object v5, p3, Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool$BytesBuffer;->data:[B

    iput-object v5, v3, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    .line 60
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;->mCache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;

    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;->mCache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;

    invoke-virtual {v5, v3}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->lookup(Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 62
    monitor-exit v6

    .line 73
    .end local v3           #request:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;
    :cond_0
    :goto_0
    return v4

    .line 60
    .restart local v3       #request:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :try_start_2
    iget-object v5, v3, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    invoke-static {v2, v5}, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;->isSameKey([B[B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 65
    iget-object v5, v3, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->buffer:[B

    iput-object v5, p3, Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool$BytesBuffer;->data:[B

    .line 66
    array-length v5, v2

    iput v5, p3, Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool$BytesBuffer;->offset:I

    .line 67
    iget v5, v3, Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;->length:I

    iget v6, p3, Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool$BytesBuffer;->offset:I

    sub-int/2addr v5, v6

    iput v5, p3, Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool$BytesBuffer;->length:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    const/4 v4, 0x1

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 70
    .end local v3           #request:Lcom/pantech/app/vegacamera/bridge/common/BlobCache$LookupRequest;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public putImageData(Lcom/pantech/app/vegacamera/bridge/data/Path;I[B)V
    .locals 7
    .parameter "path"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 77
    invoke-static {p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;->makeKey(Lcom/pantech/app/vegacamera/bridge/data/Path;I)[B

    move-result-object v3

    .line 78
    .local v3, key:[B
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->crc64Long([B)J

    move-result-wide v1

    .line 79
    .local v1, cacheKey:J
    array-length v4, v3

    array-length v5, p3

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 80
    .local v0, buffer:Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 82
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;->mCache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;

    monitor-enter v5

    .line 84
    :try_start_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheService;->mCache:Lcom/pantech/app/vegacamera/bridge/common/BlobCache;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4, v1, v2, v6}, Lcom/pantech/app/vegacamera/bridge/common/BlobCache;->insert(J[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 89
    return-void

    .line 82
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 85
    :catch_0
    move-exception v4

    goto :goto_0
.end method
