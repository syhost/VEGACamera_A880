.class Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;
.super Ljava/lang/Thread;
.source "ImpleBestFaceShotCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageSaver"
.end annotation


# static fields
.field private static final QUEUE_LIMIT:I = 0x3


# instance fields
.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)V
    .locals 1
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 423
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->start()V

    .line 424
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V
    .locals 9
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 511
    .local v3, filename:Ljava/lang/String;
    const/4 v8, 0x0

    .line 514
    .local v8, filePath:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$12(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "/data/data/com.pantech.app.vegacamera/files/bestface/"

    move-object v1, p3

    move-object v4, p1

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/vegacamera/util/Storage;->addTempImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/com.pantech.app.vegacamera/files/bestface/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 520
    :try_start_1
    const-string v0, "Test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add filePath = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "iShotMaxNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotMaxNum:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$29(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 526
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->aFilePath:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$29(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotMaxNum:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->iShotCnt:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;I)V

    .line 528
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    #calls: Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->ProcessAfterEditing(Landroid/location/Location;II)V
    invoke-static {v0, p4, p5, p6}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;->access$30(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;Landroid/location/Location;II)V

    .line 530
    :cond_0
    return-void

    .line 515
    :catch_0
    move-exception v7

    .line 516
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "BestFaceCapture"

    const-string v1, "[Camera] Exception while compressing image."

    invoke-static {v0, v1, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 522
    .end local v7           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 523
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v0, "BestFaceCapture"

    const-string v1, "[Camera] Exception while compressing image."

    invoke-static {v0, v1, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public addImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V
    .locals 3
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 428
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;)V

    .line 429
    .local v0, r:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;
    iput-object p1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->data:[B

    .line 430
    iput-object p2, v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->uri:Landroid/net/Uri;

    .line 431
    iput-object p3, v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->title:Ljava/lang/String;

    .line 432
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->loc:Landroid/location/Location;

    .line 433
    iput p5, v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->width:I

    .line 434
    iput p6, v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->height:I

    .line 435
    iput p7, v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->orientation:I

    .line 436
    monitor-enter p0

    .line 437
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 444
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 436
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    return-void

    .line 432
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 439
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 440
    :catch_0
    move-exception v1

    goto :goto_1

    .line 436
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
    .line 496
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->waitDone()V

    .line 497
    monitor-enter p0

    .line 498
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->mStop:Z

    .line 499
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 497
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 506
    :goto_0
    return-void

    .line 497
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 503
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    .line 454
    :goto_0
    monitor-enter p0

    .line 455
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 456
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 460
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    .line 461
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    return-void

    .line 464
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 468
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 470
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;

    .line 454
    .local v8, r:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 473
    iget-object v1, v8, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->data:[B

    iget-object v2, v8, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v8, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v8, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v8, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->width:I

    iget v6, v8, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->height:I

    iget v7, v8, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;->orientation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;III)V

    .line 474
    monitor-enter p0

    .line 475
    :try_start_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 476
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 474
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 465
    .end local v8           #r:Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 483
    monitor-enter p0

    .line 484
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    return-void

    .line 486
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    goto :goto_0

    .line 483
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
