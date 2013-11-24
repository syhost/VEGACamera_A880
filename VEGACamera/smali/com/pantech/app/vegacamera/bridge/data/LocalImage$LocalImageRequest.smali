.class public Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalImageRequest;
.super Lcom/pantech/app/vegacamera/bridge/data/ImageCacheRequest;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/LocalImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalImageRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;Lcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)V
    .locals 1
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"

    .prologue
    .line 154
    invoke-static {p3}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getTargetSize(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheRequest;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;Lcom/pantech/app/vegacamera/bridge/data/Path;II)V

    .line 155
    iput-object p4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 160
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v7, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 162
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getTargetSize(I)I

    move-result v5

    .line 165
    .local v5, targetSize:I
    const/4 v7, 0x2

    if-ne p2, v7, :cond_0

    .line 166
    const/4 v1, 0x0

    .line 167
    .local v1, exif:Landroid/media/ExifInterface;
    const/4 v6, 0x0

    .line 169
    .local v6, thumbData:[B
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1           #exif:Landroid/media/ExifInterface;
    .local v2, exif:Landroid/media/ExifInterface;
    if-eqz v2, :cond_1

    .line 171
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v1, v2

    .line 176
    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v6, :cond_0

    .line 177
    invoke-static {p1, v6, v3, v5}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decodeIfBigEnough(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;[BLandroid/graphics/BitmapFactory$Options;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 183
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v6           #thumbData:[B
    :goto_1
    return-object v0

    .line 173
    .restart local v1       #exif:Landroid/media/ExifInterface;
    .restart local v6       #thumbData:[B
    :catch_0
    move-exception v4

    .line 174
    .local v4, t:Ljava/lang/Throwable;
    :goto_2
    const-string v7, "LocalImage"

    const-string v8, "fail to get exif thumb"

    invoke-static {v7, v8, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 183
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v4           #t:Ljava/lang/Throwable;
    .end local v6           #thumbData:[B
    :cond_0
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalImageRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {p1, v7, v3, v5, p2}, Lcom/pantech/app/vegacamera/bridge/data/DecodeUtils;->decodeThumbnail(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 173
    .restart local v2       #exif:Landroid/media/ExifInterface;
    .restart local v6       #thumbData:[B
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_2

    .end local v1           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :cond_1
    move-object v1, v2

    .end local v2           #exif:Landroid/media/ExifInterface;
    .restart local v1       #exif:Landroid/media/ExifInterface;
    goto :goto_0
.end method

.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheRequest;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
