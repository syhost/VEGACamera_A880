.class public Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;
.super Ljava/lang/Object;
.source "BitmapPool.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapPool"


# instance fields
.field private final mHeight:I

.field private final mOneSize:Z

.field private final mPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mPoolLimit:I

.field private final mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "poolLimit"

    .prologue
    const/4 v0, -0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mWidth:I

    .line 52
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mHeight:I

    .line 53
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPoolLimit:I

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mOneSize:Z

    .line 56
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "poolLimit"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mWidth:I

    .line 43
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mHeight:I

    .line 44
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPoolLimit:I

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mOneSize:Z

    .line 47
    return-void
.end method

.method private findCachedBitmap(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"
    .parameter "fileDescriptor"
    .parameter "options"

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mOneSize:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 108
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decodeBounds(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V

    .line 109
    iget v0, p3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private findCachedBitmap(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mOneSize:Z

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 101
    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decodeBounds(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V

    .line 102
    iget v0, p5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"
    .parameter "fileDescriptor"
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 140
    if-nez p3, :cond_0

    .line 141
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    .end local p3
    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    .restart local p3
    :cond_0
    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v2, v4, :cond_1

    .line 143
    iput v4, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 144
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 145
    iget v2, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v2, v4, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->findCachedBitmap(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 147
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_2

    .line 149
    iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 150
    const/4 v2, 0x0

    iput-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v2, v3

    .line 145
    goto :goto_0

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 155
    throw v1

    .line 157
    :cond_4
    const-string v2, "BitmapPool"

    const-string v4, "decode fail with a given bitmap, try decode to a new bitmap"

    invoke-static {v2, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v2, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 159
    iput-object v3, p3, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 160
    invoke-static {p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 113
    if-nez p5, :cond_0

    .line 114
    new-instance p5, Landroid/graphics/BitmapFactory$Options;

    .end local p5
    invoke-direct {p5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 115
    .restart local p5
    :cond_0
    iget v2, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ge v2, v4, :cond_1

    .line 116
    iput v4, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 117
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 118
    iget v2, p5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-ne v2, v4, :cond_3

    invoke-direct/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->findCachedBitmap(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_0
    iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 120
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v2, v0, :cond_2

    .line 122
    iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 123
    const/4 v2, 0x0

    iput-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-object v0

    :cond_3
    move-object v2, v3

    .line 118
    goto :goto_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    .line 128
    throw v1

    .line 130
    :cond_4
    const-string v2, "BitmapPool"

    const-string v4, "decode fail with a given bitmap, try decode to a new bitmap"

    invoke-static {v2, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v2, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 132
    iput-object v3, p5, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 133
    invoke-static {p1, p2, p3, p4, p5}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mOneSize:Z

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 61
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 62
    .local v0, size:I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    .end local v0           #size:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getBitmap(II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mOneSize:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 68
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-gez v1, :cond_1

    .line 74
    const/4 v2, 0x0

    :goto_2
    monitor-exit p0

    return-object v2

    .line 67
    .end local v1           #i:I
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 69
    .restart local v1       #i:I
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 70
    .local v0, b:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 71
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 68
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 67
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public recycle(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mOneSize:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mWidth:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mHeight:I

    if-eq v0, v1, :cond_2

    .line 84
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 87
    :cond_2
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPoolLimit:I

    if-lt v0, v1, :cond_3

    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->mPool:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
