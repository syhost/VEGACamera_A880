.class Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;
.super Ljava/lang/Thread;
.source "ImpleBeautyCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;
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
            "Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)V
    .locals 1
    .parameter

    .prologue
    .line 369
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 365
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 371
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->start()V

    .line 372
    return-void
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
    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

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

    .line 487
    .local v14, ok:Z
    if-eqz v14, :cond_1

    .line 489
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    const/4 v13, 0x1

    .line 489
    .local v13, needThumbnail:Z
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 496
    if-eqz v13, :cond_0

    .line 499
    move/from16 v0, p5

    int-to-double v3, v0

    move/from16 v0, p7

    int-to-double v5, v0

    div-double/2addr v3, v5

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v15, v3

    .line 500
    .local v15, ratio:I
    invoke-static {v15}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v12

    .line 501
    .local v12, inSampleSize:I
    move-object/from16 v0, p1

    move/from16 v1, p8

    move-object/from16 v2, p2

    invoke-static {v0, v1, v12, v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateThumbnail([BIILandroid/net/Uri;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v16

    .line 502
    .local v16, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 505
    :try_start_3
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$14(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 502
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 509
    .end local v12           #inSampleSize:I
    .end local v15           #ratio:I
    .end local v16           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :cond_0
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/pantech/app/vegacamera/util/Util;->BroadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 511
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->beautyFilters:Ljava/util/ArrayList;

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->StoreDonePerformTest()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 518
    .end local v13           #needThumbnail:Z
    :cond_1
    :goto_1
    return-void

    .line 494
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 489
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

    .line 515
    :catch_0
    move-exception v11

    .line 516
    .local v11, e:Ljava/lang/Exception;
    const-string v3, "NormalCapture"

    const-string v4, "[Camera] Exception while compressing image."

    invoke-static {v3, v4, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 502
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
    .line 461
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$14(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 463
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 464
    .local v0, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 461
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 461
    .end local v0           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 471
    .restart local v0       #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :cond_1
    if-eqz v0, :cond_0

    .line 472
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailView()Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 473
    monitor-enter v0

    .line 474
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 475
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailView()Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;->access$13(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->SetBitmap(Landroid/graphics/Bitmap;)V

    .line 473
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 3
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 377
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;)V

    .line 378
    .local v0, r:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;
    iput-object p1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->data:[B

    .line 379
    iput-object p2, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->uri:Landroid/net/Uri;

    .line 380
    iput-object p3, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->title:Ljava/lang/String;

    .line 381
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->loc:Landroid/location/Location;

    .line 382
    iput p5, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->width:I

    .line 383
    iput p6, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->height:I

    .line 384
    iput p7, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->thumbnailWidth:I

    .line 385
    iput p8, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->orientation:I

    .line 386
    monitor-enter p0

    .line 387
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 394
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 386
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    return-void

    .line 381
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 389
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 390
    :catch_0
    move-exception v1

    goto :goto_1

    .line 386
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 447
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->waitDone()V

    .line 448
    monitor-enter p0

    .line 449
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mStop:Z

    .line 450
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 448
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 457
    :goto_0
    return-void

    .line 448
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 454
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 404
    :goto_0
    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 410
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    .line 411
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    return-void

    .line 415
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 421
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;

    .line 404
    .local v9, r:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 423
    iget-object v1, v9, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->data:[B

    iget-object v2, v9, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v9, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v9, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v9, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->width:I

    iget v6, v9, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->height:I

    iget v7, v9, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->thumbnailWidth:I

    iget v8, v9, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;->orientation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 424
    monitor-enter p0

    .line 425
    :try_start_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 424
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 416
    .end local v9           #r:Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    .line 434
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 433
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture$ImageSaver;->UpdateThumbNail()V

    .line 443
    return-void

    .line 436
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
