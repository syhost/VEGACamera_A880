.class public Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecodeUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapRegionDecoder(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "jc"
    .parameter "fd"
    .parameter "shareable"

    .prologue
    .line 220
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    :goto_0
    return-object v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 4
    .parameter "jc"
    .parameter "is"
    .parameter "shareable"

    .prologue
    .line 229
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    :goto_0
    return-object v1

    .line 230
    :catch_0
    move-exception v0

    .line 233
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "requestCreateBitmapRegionDecoder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    .locals 2
    .parameter "jc"
    .parameter "filePath"
    .parameter "shareable"

    .prologue
    .line 211
    :try_start_0
    invoke-static {p1, p2}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 214
    :goto_0
    return-object v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBitmapRegionDecoder(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIIZ)Landroid/graphics/BitmapRegionDecoder;
    .locals 6
    .parameter "jc"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "shareable"

    .prologue
    .line 196
    if-ltz p2, :cond_0

    if-lez p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 198
    const-string v2, "offset = %s, length = %s, bytes = %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 205
    :goto_0
    return-object v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "DecodeUtils"

    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 205
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "jc"
    .parameter "fd"
    .parameter "options"

    .prologue
    .line 61
    if-nez p2, :cond_0

    .line 62
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 63
    .restart local p2
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 64
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 65
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "jc"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    .line 81
    if-nez p4, :cond_0

    .line 82
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 83
    .restart local p4
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 84
    invoke-static {p4}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 85
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"
    .parameter "bytes"
    .parameter "options"

    .prologue
    .line 77
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1, p2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decode(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeBounds(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter "jc"
    .parameter "fd"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 69
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 70
    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 72
    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 73
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 74
    return-void

    :cond_0
    move v0, v2

    .line 69
    goto :goto_0
.end method

.method public static decodeBounds(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BIILandroid/graphics/BitmapFactory$Options;)V
    .locals 3
    .parameter "jc"
    .parameter "bytes"
    .parameter "offset"
    .parameter "length"
    .parameter "options"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-eqz p4, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 90
    iput-boolean v1, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 91
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v0, p4}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 92
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 93
    iput-boolean v2, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 94
    return-void

    :cond_0
    move v0, v2

    .line 89
    goto :goto_0
.end method

.method public static decodeIfBigEnough(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "jc"
    .parameter "data"
    .parameter "options"
    .parameter "targetSize"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 165
    if-nez p2, :cond_0

    .line 166
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 167
    .restart local p2
    :cond_0
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v1, p2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 170
    array-length v1, p1

    invoke-static {p1, v2, v1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 171
    invoke-interface {p0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    :cond_1
    :goto_0
    return-object v0

    .line 173
    :cond_2
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v1, p3, :cond_1

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lt v1, p3, :cond_1

    .line 176
    iget v0, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v1, p3}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->computeSampleSizeLarger(III)I

    move-result v0

    iput v0, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 177
    iput-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 178
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 180
    array-length v0, p1

    invoke-static {p1, v2, v0, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public static decodeThumbnail(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "jc"
    .parameter "fd"
    .parameter "options"
    .parameter "targetSize"
    .parameter "type"

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 111
    if-nez p2, :cond_0

    .line 112
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    .end local p2
    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 113
    .restart local p2
    :cond_0
    new-instance v6, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;

    invoke-direct {v6, p2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils$DecodeCanceller;-><init>(Landroid/graphics/BitmapFactory$Options;)V

    invoke-interface {p0, v6}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->setCancelListener(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$CancelListener;)V

    .line 115
    iput-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 116
    invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 117
    invoke-interface {p0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 156
    :cond_1
    :goto_0
    return-object v5

    .line 120
    :cond_2
    iget v4, p2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 121
    .local v4, w:I
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 123
    .local v1, h:I
    if-ne p4, v8, :cond_5

    .line 126
    int-to-float v6, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 127
    .local v3, scale:F
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 131
    const v0, 0x9c400

    .line 132
    .local v0, MAX_PIXEL_COUNT:I
    iget v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v6, v4, v6

    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v7, v1, v7

    mul-int/2addr v6, v7

    const v7, 0x9c400

    if-le v6, v7, :cond_3

    .line 133
    const v6, 0x491c4000

    mul-int v7, v4, v1

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->computeSampleSize(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 141
    .end local v0           #MAX_PIXEL_COUNT:I
    :cond_3
    :goto_1
    const/4 v6, 0x0

    iput-boolean v6, p2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 142
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V

    .line 144
    invoke-static {p1, v5, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 145
    .local v2, result:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 150
    int-to-float v6, p3

    .line 151
    if-ne p4, v8, :cond_6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_2
    int-to-float v5, v5

    .line 150
    div-float v3, v6, v5

    .line 154
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_4

    .line 155
    invoke-static {v2, v3, v9}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->resizeBitmapByScale(Landroid/graphics/Bitmap;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 156
    :cond_4
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0

    .line 137
    .end local v2           #result:Landroid/graphics/Bitmap;
    .end local v3           #scale:F
    :cond_5
    int-to-float v6, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    int-to-float v7, v7

    div-float v3, v6, v7

    .line 138
    .restart local v3       #scale:F
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->computeSampleSizeLarger(F)I

    move-result v6

    iput v6, p2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    .line 152
    .restart local v2       #result:Landroid/graphics/Bitmap;
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 151
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_2
.end method

.method public static decodeThumbnail(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "jc"
    .parameter "filePath"
    .parameter "options"
    .parameter "targetSize"
    .parameter "type"

    .prologue
    .line 97
    const/4 v2, 0x0

    .line 99
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v2           #fis:Ljava/io/FileInputStream;
    .local v3, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 101
    .local v1, fd:Ljava/io/FileDescriptor;
    invoke-static {p0, v1, p2, p3, p4}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decodeThumbnail(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 106
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 104
    .end local v1           #fd:Ljava/io/FileDescriptor;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v4

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string v4, "DecodeUtils"

    invoke-static {v4, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 104
    const/4 v4, 0x0

    goto :goto_0

    .line 105
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 106
    :goto_2
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 107
    throw v4

    .line 105
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 102
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 187
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, p0

    .line 191
    :goto_0
    return-object v0

    .line 189
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, newBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static setOptionsMutable(Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .parameter "options"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 56
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_OPTIONS_IN_MUTABLE:Z

    if-eqz v0, :cond_0

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 58
    :cond_0
    return-void
.end method
