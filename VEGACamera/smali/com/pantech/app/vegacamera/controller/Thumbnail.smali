.class public Lcom/pantech/app/vegacamera/controller/Thumbnail;
.super Ljava/lang/Object;
.source "Thumbnail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    }
.end annotation


# static fields
.field private static final BUCKET_ID:Ljava/lang/String; = null

.field private static final BUFSIZE:I = 0x1000

.field private static final DCIM:Ljava/lang/String; = null

.field private static final DIRECTORY:Ljava/lang/String; = null

.field public static final LAST_THUMB_FILENAME:Ljava/lang/String; = "last_thumb"

.field private static final MIMETYPE_3GPP:Ljava/lang/String; = "video/3gpp"

.field private static final MIMETYPE_MP4:Ljava/lang/String; = "video/mp4"

.field private static final TAG:Ljava/lang/String; = "Thumbnail"

.field public static final THUMBNAIL_DELETED:I = 0x2

.field public static final THUMBNAIL_FOUND:I = 0x1

.field public static final THUMBNAIL_NOT_FOUND:I

.field private static bucket_id:Ljava/lang/String;

.field private static mStorageLocationDir:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFromFile:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->DCIM:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pantech/app/vegacamera/controller/Thumbnail;->DCIM:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->DIRECTORY:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->BUCKET_ID:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->BUCKET_ID:Ljava/lang/String;

    sput-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->bucket_id:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mStorageLocationDir:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mFromFile:Z

    .line 63
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mUri:Landroid/net/Uri;

    .line 64
    const-string v0, "Thumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Thumbnail] Thumbnail uri:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , bitmap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p2, p3}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_RotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null bitmap"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method public static CreateLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;
    .locals 10
    .parameter "resolver"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 316
    invoke-static {p0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_GetLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;

    move-result-object v1

    .line 317
    .local v1, image:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    invoke-static {p0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_GetLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;

    move-result-object v3

    .line 318
    .local v3, video:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    if-nez v1, :cond_1

    if-nez v3, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-object v4

    .line 321
    :cond_1
    const/4 v0, 0x0

    .line 325
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    iget-wide v5, v1, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->dateTaken:J

    iget-wide v7, v3, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->dateTaken:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_3

    .line 326
    :cond_2
    iget-wide v5, v1, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->id:J

    invoke-static {p0, v5, v6, v9, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 327
    move-object v2, v1

    .line 334
    .local v2, lastMedia:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    :goto_1
    iget-object v5, v2, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v5, p0}, Lcom/pantech/app/vegacamera/util/Util;->IsUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 335
    iget-object v4, v2, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v5, v2, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->orientation:I

    invoke-static {v4, v0, v5}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v4

    goto :goto_0

    .line 329
    .end local v2           #lastMedia:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    :cond_3
    iget-wide v5, v3, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->id:J

    invoke-static {p0, v5, v6, v9, v4}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 330
    move-object v2, v3

    .restart local v2       #lastMedia:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    goto :goto_1
.end method

.method public static CreateThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/pantech/app/vegacamera/controller/Thumbnail;
    .locals 5
    .parameter "uri"
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 210
    if-nez p1, :cond_0

    .line 211
    const-string v2, "Thumbnail"

    const-string v3, "Failed to create thumbnail from null bitmap"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-object v1

    .line 215
    :cond_0
    :try_start_0
    const-string v2, "Thumbnail"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Thumbnail] createThumbnail uri:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v2, Lcom/pantech/app/vegacamera/controller/Thumbnail;

    invoke-direct {v2, p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "Thumbnail"

    const-string v3, "Failed to construct thumbnail"

    invoke-static {v2, v3, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static CreateThumbnail([BIILandroid/net/Uri;)Lcom/pantech/app/vegacamera/controller/Thumbnail;
    .locals 4
    .parameter "jpeg"
    .parameter "orientation"
    .parameter "inSampleSize"
    .parameter "uri"

    .prologue
    .line 202
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 203
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 204
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 205
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const-string v2, "Thumbnail"

    const-string v3, "[Thumbnail] createThumbnail()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-static {p3, v0, p1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v2

    return-object v2
.end method

.method public static CreateVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 224
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CreateVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static CreateVideoThumbnailBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "filePath"
    .parameter "targetWidth"

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CreateVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/pantech/app/vegacamera/controller/Thumbnail;)I
    .locals 11
    .parameter "resolver"
    .parameter "result"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 341
    invoke-static {p0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_GetLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;

    move-result-object v1

    .line 342
    .local v1, image:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    invoke-static {p0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_GetLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;

    move-result-object v3

    .line 343
    .local v3, video:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    if-nez v1, :cond_0

    if-nez v3, :cond_0

    .line 363
    :goto_0
    return v4

    .line 346
    :cond_0
    const/4 v0, 0x0

    .line 350
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    if-eqz v3, :cond_1

    iget-wide v6, v1, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->dateTaken:J

    iget-wide v8, v3, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->dateTaken:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 351
    :cond_1
    iget-wide v6, v1, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->id:J

    invoke-static {p0, v6, v7, v5, v10}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 352
    move-object v2, v1

    .line 359
    .local v2, lastMedia:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    :goto_1
    iget-object v6, v2, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->uri:Landroid/net/Uri;

    invoke-static {v6, p0}, Lcom/pantech/app/vegacamera/util/Util;->IsUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 360
    iget-object v6, v2, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->uri:Landroid/net/Uri;

    iget v7, v2, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->orientation:I

    invoke-static {v6, v0, v7}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v6

    aput-object v6, p1, v4

    move v4, v5

    .line 361
    goto :goto_0

    .line 354
    .end local v2           #lastMedia:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    :cond_2
    iget-wide v6, v3, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;->id:J

    invoke-static {p0, v6, v7, v5, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 355
    move-object v2, v3

    .restart local v2       #lastMedia:Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    goto :goto_1

    .line 363
    :cond_3
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public static GetLastThumbnailFromFile(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;
    .locals 16
    .parameter "filesDir"
    .parameter "resolver"

    .prologue
    .line 282
    new-instance v9, Ljava/io/File;

    const-string v12, "last_thumb"

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 283
    .local v9, file:Ljava/io/File;
    const/4 v11, 0x0

    .line 284
    .local v11, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 285
    .local v3, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 286
    .local v7, f:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 287
    .local v1, b:Ljava/io/BufferedInputStream;
    const/4 v4, 0x0

    .line 288
    .local v4, d:Ljava/io/DataInputStream;
    sget-object v13, Lcom/pantech/app/vegacamera/controller/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v13

    .line 290
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v7           #f:Ljava/io/FileInputStream;
    .local v8, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    const/16 v12, 0x1000

    invoke-direct {v2, v8, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 292
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .local v2, b:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 293
    .end local v4           #d:Ljava/io/DataInputStream;
    .local v5, d:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 294
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/pantech/app/vegacamera/util/Util;->IsUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 295
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 304
    :try_start_4
    invoke-static {v8}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 305
    invoke-static {v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 306
    invoke-static {v5}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 296
    const/4 v10, 0x0

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 312
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    :goto_0
    return-object v10

    .line 298
    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :cond_0
    :try_start_5
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 299
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 304
    :try_start_6
    invoke-static {v8}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 305
    invoke-static {v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 306
    invoke-static {v5}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 288
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 309
    const/4 v12, 0x0

    invoke-static {v11, v3, v12}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateThumbnail(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v10

    .line 310
    .local v10, thumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    if-eqz v10, :cond_1

    .line 311
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->SetFromFile(Z)V

    :cond_1
    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 312
    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_0

    .line 300
    .end local v10           #thumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :catch_0
    move-exception v6

    .line 301
    .local v6, e:Ljava/io/IOException;
    :goto_1
    :try_start_7
    const-string v12, "Thumbnail"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Fail to load bitmap. "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 304
    :try_start_8
    invoke-static {v7}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 305
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 306
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    monitor-exit v13

    .line 302
    const/4 v10, 0x0

    goto :goto_0

    .line 303
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 304
    :goto_2
    invoke-static {v7}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 305
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 306
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 307
    throw v12

    .line 288
    :catchall_1
    move-exception v12

    :goto_3
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v12

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v12

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_3

    .line 303
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v12

    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_4
    move-exception v12

    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catchall_5
    move-exception v12

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .line 300
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v6

    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .end local v4           #d:Ljava/io/DataInputStream;
    .end local v7           #f:Ljava/io/FileInputStream;
    .restart local v2       #b:Ljava/io/BufferedInputStream;
    .restart local v5       #d:Ljava/io/DataInputStream;
    .restart local v8       #f:Ljava/io/FileInputStream;
    :catch_3
    move-exception v6

    move-object v4, v5

    .end local v5           #d:Ljava/io/DataInputStream;
    .restart local v4       #d:Ljava/io/DataInputStream;
    move-object v1, v2

    .end local v2           #b:Ljava/io/BufferedInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #f:Ljava/io/FileInputStream;
    .restart local v7       #f:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static GetStorageLocationDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mStorageLocationDir:Ljava/lang/String;

    return-object v0
.end method

.method public static SetStorageLocationDir(Ljava/lang/String;)V
    .locals 3
    .parameter "dir"

    .prologue
    .line 272
    sput-object p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mStorageLocationDir:Ljava/lang/String;

    .line 274
    sget-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mStorageLocationDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->bucket_id:Ljava/lang/String;

    .line 275
    const-string v0, "Thumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[thumbnailtest] SetStorageLocationDir dir:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mStorageLocationDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "Thumbnail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[thumbnailtest] SetStorageLocationDir bucket_id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/pantech/app/vegacamera/controller/Thumbnail;->bucket_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private static _CloseSilently(Ljava/io/Closeable;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 367
    if-nez p0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 371
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static _CreateVideoThumbnailBitmap(Ljava/lang/String;Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "filePath"
    .parameter "fd"
    .parameter "targetWidth"

    .prologue
    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 235
    .local v3, retriever:Landroid/media/MediaMetadataRetriever;
    if-eqz p0, :cond_0

    .line 236
    :try_start_0
    invoke-virtual {v3, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 240
    :goto_0
    const-wide/16 v7, -0x1

    invoke-virtual {v3, v7, v8}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 247
    :try_start_1
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5

    .line 252
    :goto_1
    if-nez v0, :cond_1

    .line 253
    const/4 v7, 0x0

    .line 264
    :goto_2
    return-object v7

    .line 238
    :cond_0
    :try_start_2
    invoke-virtual {v3, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 241
    :catch_0
    move-exception v7

    .line 247
    :try_start_3
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 248
    :catch_1
    move-exception v7

    goto :goto_1

    .line 243
    :catch_2
    move-exception v7

    .line 247
    :try_start_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 248
    :catch_3
    move-exception v7

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v7

    .line 247
    :try_start_5
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 251
    :goto_3
    throw v7

    .line 256
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 257
    .local v6, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 258
    .local v2, height:I
    if-le v6, p2, :cond_2

    .line 259
    int-to-float v7, p2

    int-to-float v8, v6

    div-float v4, v7, v8

    .line 260
    .local v4, scale:F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 261
    .local v5, w:I
    int-to-float v7, v2

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 262
    .local v1, h:I
    const/4 v7, 0x1

    invoke-static {v0, v5, v1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1           #h:I
    .end local v4           #scale:F
    .end local v5           #w:I
    :cond_2
    move-object v7, v0

    .line 264
    goto :goto_2

    .line 248
    .end local v2           #height:I
    .end local v6           #width:I
    :catch_4
    move-exception v8

    goto :goto_3

    :catch_5
    move-exception v7

    goto :goto_1
.end method

.method private static _GetLastImageThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    .locals 15
    .parameter "resolver"

    .prologue
    const/4 v6, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 148
    sget-object v13, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 150
    .local v13, baseUri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v9, "1"

    invoke-virtual {v0, v4, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 151
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v11

    const-string v0, "orientation"

    aput-object v0, v2, v10

    const-string v0, "datetaken"

    aput-object v0, v2, v12

    .line 152
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "mime_type=\'image/jpeg\' AND bucket_id="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/pantech/app/vegacamera/controller/Thumbnail;->bucket_id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, selection:Ljava/lang/String;
    const-string v5, "datetaken DESC,_id DESC"

    .line 155
    .local v5, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 157
    .local v14, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "[getLastImageThumbnail] query:"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " , projection:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " , selection:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 158
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " , order:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 157
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 160
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "cursor.getString(1) : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 163
    .local v7, id:J
    new-instance v6, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;

    const/4 v0, 0x1

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v14, :cond_0

    .line 167
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 170
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    if-eqz v14, :cond_1

    .line 167
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 169
    :cond_1
    throw v0

    .line 166
    :cond_2
    if-eqz v14, :cond_0

    .line 167
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static _GetLastVideoThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;
    .locals 17
    .parameter "resolver"

    .prologue
    .line 174
    sget-object v13, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 176
    .local v13, baseUri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "limit"

    const-string v6, "1"

    invoke-virtual {v0, v4, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 177
    .local v1, query:Landroid/net/Uri;
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v0

    const/4 v0, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v0

    const/4 v0, 0x2

    const-string v4, "date_modified"

    aput-object v4, v2, v0

    .line 179
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "(mime_type=\'video/3gpp\' OR mime_type=\'video/mp4\') AND bucket_id="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    sget-object v4, Lcom/pantech/app/vegacamera/controller/Thumbnail;->bucket_id:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .local v3, selection:Ljava/lang/String;
    const-string v5, "date_modified DESC,_id DESC"

    .line 183
    .local v5, order:Ljava/lang/String;
    const/4 v14, 0x0

    .line 185
    .local v14, cursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    move-object/from16 v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 186
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_GetLastVideoThumbnail : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "Thumbnail"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "_GetLastVideoThumbnail : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-interface {v14, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 190
    .local v7, id:J
    new-instance v6, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;

    const/4 v9, 0x0

    const/4 v0, 0x2

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-wide/16 v15, 0x3e8

    mul-long/2addr v10, v15

    invoke-static {v13, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    invoke-direct/range {v6 .. v12}, Lcom/pantech/app/vegacamera/controller/Thumbnail$Media;-><init>(JIJLandroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    if-eqz v14, :cond_0

    .line 194
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 197
    .end local v7           #id:J
    :cond_0
    :goto_0
    return-object v6

    .line 192
    :catchall_0
    move-exception v0

    .line 193
    if-eqz v14, :cond_1

    .line 194
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_1
    throw v0

    .line 193
    :cond_2
    if-eqz v14, :cond_3

    .line 194
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static _RotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/high16 v3, 0x3f00

    .line 88
    if-eqz p1, :cond_1

    .line 90
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 94
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 97
    .local v7, rotated:Landroid/graphics/Bitmap;
    if-eq v7, p0, :cond_0

    .line 98
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #rotated:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v7

    .line 100
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 101
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "Thumbnail"

    const-string v1, "Failed to rotate thumbnail"

    invoke-static {v0, v1, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_1
    move-object v7, p0

    .line 104
    goto :goto_0
.end method


# virtual methods
.method public FromFile()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mFromFile:Z

    return v0
.end method

.method public GetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public GetUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public SaveLastThumbnailToFile(Ljava/io/File;)V
    .locals 13
    .parameter "filesDir"

    .prologue
    .line 109
    new-instance v7, Ljava/io/File;

    const-string v9, "last_thumb"

    invoke-direct {v7, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .local v7, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 111
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 112
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 113
    .local v2, d:Ljava/io/DataOutputStream;
    sget-object v10, Lcom/pantech/app/vegacamera/controller/Thumbnail;->sLock:Ljava/lang/Object;

    monitor-enter v10

    .line 115
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 118
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v9, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 119
    iget-object v9, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mBitmap:Landroid/graphics/Bitmap;

    sget-object v11, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v12, 0x5a

    invoke-virtual {v9, v11, v12, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v8

    .line 120
    .local v8, flag:Z
    const-string v9, "Thumbnail"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[ThumbNail] saveLastThumbnailToFile :"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", bitmap compress success : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 121
    const-string v12, ", URI :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 120
    invoke-static {v9, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 126
    :try_start_4
    invoke-static {v6}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 127
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v3}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 113
    .end local v6           #f:Ljava/io/FileOutputStream;
    .end local v8           #flag:Z
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :goto_0
    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    return-void

    .line 123
    :catch_0
    move-exception v4

    .line 124
    .local v4, e:Ljava/io/IOException;
    :goto_1
    :try_start_6
    const-string v9, "Thumbnail"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Fail to store bitmap. path="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 126
    :try_start_7
    invoke-static {v5}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 127
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 113
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v9

    .line 125
    :catchall_1
    move-exception v9

    .line 126
    :goto_3
    :try_start_8
    invoke-static {v5}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 127
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->_CloseSilently(Ljava/io/Closeable;)V

    .line 129
    throw v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 113
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    .restart local v8       #flag:Z
    :catchall_2
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 125
    .end local v5           #f:Ljava/io/FileOutputStream;
    .end local v8           #flag:Z
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_4
    move-exception v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 123
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v4

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public SetFromFile(Z)V
    .locals 0
    .parameter "fromFile"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/Thumbnail;->mFromFile:Z

    .line 81
    return-void
.end method

.method public getColumnInfoFromURI(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "mContext"
    .parameter "column_info"

    .prologue
    const/4 v3, 0x0

    .line 378
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v2, v0

    .line 380
    .local v2, proj:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetUri()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 385
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 386
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 387
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 388
    .local v8, index:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 390
    return-object v8
.end method
