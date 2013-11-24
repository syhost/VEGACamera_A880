.class Lcom/pantech/app/vegacamera/Effects$ImageSaver;
.super Ljava/lang/Thread;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# static fields
.field private static final QUEUE_LIMIT:I = 0x3


# instance fields
.field private mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/Effects$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 1
    .parameter

    .prologue
    .line 3272
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 3268
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 3273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 3274
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->start()V

    .line 3275
    return-void
.end method

.method private setFEffect_ExifInfo(Ljava/lang/String;)V
    .locals 9
    .parameter "title"

    .prologue
    .line 3421
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3422
    .local v4, path:Ljava/lang/String;
    const/4 v2, 0x0

    .line 3424
    .local v2, exif:Landroid/media/ExifInterface;
    const/4 v5, 0x0

    .line 3427
    .local v5, updated:Z
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 3431
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    const-string v6, "Make"

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 3432
    const-string v6, "Make"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3433
    const/4 v5, 0x1

    .line 3435
    :cond_0
    const-string v6, "Model"

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 3436
    const-string v6, "Model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3437
    const/4 v5, 0x1

    .line 3439
    :cond_1
    const-string v6, "FocalLength"

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 3440
    const-string v6, "FocalLength"

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v8}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, " mm"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3441
    const/4 v5, 0x1

    .line 3444
    :cond_2
    if-eqz v5, :cond_3

    .line 3446
    :try_start_1
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3451
    :cond_3
    :goto_1
    return-void

    .line 3428
    :catch_0
    move-exception v1

    .line 3429
    .local v1, ex:Ljava/io/IOException;
    const-string v6, "Effects"

    const-string v7, "cannot read exif"

    invoke-static {v6, v7, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3447
    .end local v1           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 3448
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 17
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    .line 3386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p8

    move-object/from16 v8, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-static/range {v3 .. v10}, Lcom/pantech/app/vegacamera/util/Storage;->updateImage(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Landroid/location/Location;I[BII)Z

    move-result v14

    .line 3387
    .local v14, ok:Z
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->setFEffect_ExifInfo(Ljava/lang/String;)V

    .line 3390
    if-eqz v14, :cond_1

    .line 3392
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3397
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    const/4 v13, 0x1

    .line 3392
    .local v13, needThumbnail:Z
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3399
    if-eqz v13, :cond_0

    .line 3402
    move/from16 v0, p5

    int-to-double v3, v0

    move/from16 v0, p7

    int-to-double v5, v0

    div-double/2addr v3, v5

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v15, v3

    .line 3403
    .local v15, ratio:I
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v12

    .line 3404
    .local v12, inSampleSize:I
    move-object/from16 v0, p1

    move/from16 v1, p8

    move-object/from16 v2, p2

    invoke-static {v0, v1, v12, v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateThumbnail([BIILandroid/net/Uri;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v16

    .line 3405
    .local v16, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3408
    :try_start_3
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 3409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mCaptureHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Effects;->access$45(Lcom/pantech/app/vegacamera/Effects;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3405
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3412
    .end local v12           #inSampleSize:I
    .end local v15           #ratio:I
    .end local v16           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :cond_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/pantech/app/vegacamera/util/Util;->BroadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 3418
    .end local v13           #needThumbnail:Z
    :cond_1
    return-void

    .line 3397
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 3392
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 3414
    :catch_0
    move-exception v11

    .line 3415
    .local v11, e:Ljava/lang/Exception;
    const-string v3, "Effects"

    const-string v4, "[Effects] Exception while compressing image."

    invoke-static {v3, v4, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3416
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    throw v3

    .line 3405
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v12       #inSampleSize:I
    .restart local v13       #needThumbnail:Z
    .restart local v15       #ratio:I
    .restart local v16       #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :catchall_1
    move-exception v3

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
.end method


# virtual methods
.method public UpdateThumbNail()V
    .locals 4

    .prologue
    .line 3368
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3369
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mCaptureHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$45(Lcom/pantech/app/vegacamera/Effects;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3370
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 3371
    .local v0, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 3368
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3373
    if-eqz v0, :cond_0

    .line 3374
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailView()Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3375
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 3376
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailView()Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->SetBitmap(Landroid/graphics/Bitmap;)V

    .line 3380
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    .line 3381
    return-void

    .line 3368
    .end local v0           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 4
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    const/4 v2, 0x0

    .line 3280
    new-instance v1, Lcom/pantech/app/vegacamera/Effects$SaveRequest;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/Effects$SaveRequest;-><init>(Lcom/pantech/app/vegacamera/Effects$SaveRequest;)V

    .line 3281
    .local v1, r:Lcom/pantech/app/vegacamera/Effects$SaveRequest;
    iput-object p1, v1, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->data:[B

    .line 3282
    iput-object p2, v1, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->uri:Landroid/net/Uri;

    .line 3283
    iput-object p3, v1, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->title:Ljava/lang/String;

    .line 3284
    if-nez p4, :cond_0

    :goto_0
    iput-object v2, v1, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->loc:Landroid/location/Location;

    .line 3285
    iput p5, v1, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->width:I

    .line 3286
    iput p6, v1, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->height:I

    .line 3287
    iput p7, v1, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->thumbnailWidth:I

    .line 3288
    iput p8, v1, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->orientation:I

    .line 3289
    monitor-enter p0

    .line 3290
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    .line 3298
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3299
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3289
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3301
    return-void

    .line 3284
    :cond_0
    new-instance v2, Landroid/location/Location;

    invoke-direct {v2, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 3292
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3293
    :catch_0
    move-exception v0

    .line 3295
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 3289
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 3353
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->waitDone()V

    .line 3354
    monitor-enter p0

    .line 3355
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mStop:Z

    .line 3356
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3354
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3359
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3364
    return-void

    .line 3354
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3360
    :catch_0
    move-exception v0

    .line 3362
    .local v0, ex:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method

.method public run()V
    .locals 11

    .prologue
    .line 3308
    :goto_0
    monitor-enter p0

    .line 3309
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3310
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3314
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    .line 3315
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3334
    return-void

    .line 3319
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3324
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 3308
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3320
    :catch_0
    move-exception v9

    .line 3322
    .local v9, ex:Ljava/lang/InterruptedException;
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 3326
    .end local v9           #ex:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/app/vegacamera/Effects$SaveRequest;

    .line 3308
    .local v10, r:Lcom/pantech/app/vegacamera/Effects$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3328
    iget-object v1, v10, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->data:[B

    iget-object v2, v10, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v10, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v10, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v10, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->width:I

    iget v6, v10, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->height:I

    iget v7, v10, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->thumbnailWidth:I

    iget v8, v10, Lcom/pantech/app/vegacamera/Effects$SaveRequest;->orientation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 3329
    monitor-enter p0

    .line 3330
    :try_start_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3331
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3329
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public waitDone()V
    .locals 2

    .prologue
    .line 3338
    monitor-enter p0

    .line 3339
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3338
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3348
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->UpdateThumbNail()V

    .line 3349
    return-void

    .line 3341
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3342
    :catch_0
    move-exception v0

    .line 3344
    .local v0, ex:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 3338
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
