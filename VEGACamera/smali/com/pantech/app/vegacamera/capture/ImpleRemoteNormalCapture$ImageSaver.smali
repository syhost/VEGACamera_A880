.class Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;
.super Ljava/lang/Thread;
.source "ImpleRemoteNormalCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;
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
            "Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z

.field private mUpdateThumbnailLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)V
    .locals 1
    .parameter

    .prologue
    .line 400
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 396
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    .line 402
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->start()V

    .line 403
    return-void
.end method

.method private storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V
    .locals 19
    .parameter "data"
    .parameter "uri"
    .parameter "title"
    .parameter "loc"
    .parameter "width"
    .parameter "height"
    .parameter "thumbnailWidth"
    .parameter "orientation"

    .prologue
    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

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

    move-result v15

    .line 524
    .local v15, ok:Z
    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/pantech/app/vegacamera/util/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 525
    .local v13, lastFilePath:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 528
    .local v17, saveName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRequestSnapshot()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setFileName(Ljava/lang/String;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setLastFilePath(Ljava/lang/String;)V

    .line 531
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4b

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 535
    :cond_0
    const-string v3, "RemoteCapture"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Camera] StoreImage_1 lastFilePath :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    const-string v5, ", mRemoteData.getRequestSnapshot() :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRequestSnapshot()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 535
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    if-eqz v15, :cond_2

    .line 540
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_3

    const/4 v14, 0x1

    .line 540
    .local v14, needThumbnail:Z
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    if-eqz v14, :cond_1

    .line 550
    move/from16 v0, p5

    int-to-double v3, v0

    move/from16 v0, p7

    int-to-double v5, v0

    div-double/2addr v3, v5

    :try_start_2
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move/from16 v16, v0

    .line 551
    .local v16, ratio:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v12

    .line 552
    .local v12, inSampleSize:I
    move-object/from16 v0, p1

    move/from16 v1, p8

    move-object/from16 v2, p2

    invoke-static {v0, v1, v12, v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateThumbnail([BIILandroid/net/Uri;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v18

    .line 553
    .local v18, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 556
    :try_start_3
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 557
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$14(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 553
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 560
    .end local v12           #inSampleSize:I
    .end local v16           #ratio:I
    .end local v18           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lcom/pantech/app/vegacamera/util/Util;->BroadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 562
    const-string v3, "RemoteCapture"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Camera] StoreImage_2 lastFilePath :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 563
    const-string v5, ", mRemoteData.getRequestSnapshot() :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRequestSnapshot()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 562
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getRequestSnapshot()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setLastFilePath(Ljava/lang/String;)V

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$20(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x4c

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 575
    .end local v13           #lastFilePath:Ljava/lang/String;
    .end local v14           #needThumbnail:Z
    .end local v17           #saveName:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 545
    .restart local v13       #lastFilePath:Ljava/lang/String;
    .restart local v17       #saveName:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 540
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

    .line 572
    .end local v13           #lastFilePath:Ljava/lang/String;
    .end local v17           #saveName:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 573
    .local v11, e:Ljava/lang/Exception;
    const-string v3, "RemoteCapture"

    const-string v4, "[Camera] Exception while compressing image."

    invoke-static {v3, v4, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 553
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v12       #inSampleSize:I
    .restart local v13       #lastFilePath:Ljava/lang/String;
    .restart local v14       #needThumbnail:Z
    .restart local v16       #ratio:I
    .restart local v17       #saveName:Ljava/lang/String;
    .restart local v18       #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
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
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 493
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mUpdateThumbnailLock:Ljava/lang/Object;

    monitor-enter v2

    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$14(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 495
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 496
    .local v0, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 493
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 516
    :cond_0
    :goto_0
    return-void

    .line 493
    .end local v0           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 503
    .restart local v0       #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :cond_1
    if-eqz v0, :cond_2

    .line 504
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailView()Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 505
    monitor-enter v0

    .line 506
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 507
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnailView()Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->SetBitmap(Landroid/graphics/Bitmap;)V

    .line 505
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 511
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 513
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->UpdateThumbnailView()V

    goto :goto_0
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

    .line 408
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;)V

    .line 409
    .local v0, r:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;
    iput-object p1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->data:[B

    .line 410
    iput-object p2, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->uri:Landroid/net/Uri;

    .line 411
    iput-object p3, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->title:Ljava/lang/String;

    .line 412
    if-nez p4, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->loc:Landroid/location/Location;

    .line 413
    iput p5, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->width:I

    .line 414
    iput p6, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->height:I

    .line 415
    iput p7, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->thumbnailWidth:I

    .line 416
    iput p8, v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->orientation:I

    .line 417
    monitor-enter p0

    .line 418
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 425
    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 417
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    return-void

    .line 412
    :cond_0
    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p4}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    goto :goto_0

    .line 420
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 421
    :catch_0
    move-exception v1

    goto :goto_1

    .line 417
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
    .line 479
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->waitDone()V

    .line 480
    monitor-enter p0

    .line 481
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mStop:Z

    .line 482
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 480
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 489
    :goto_0
    return-void

    .line 480
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 486
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 435
    :goto_0
    monitor-enter p0

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 441
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mStop:Z

    if-eqz v0, :cond_0

    .line 442
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    return-void

    .line 446
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 450
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 452
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;

    .line 435
    .local v9, r:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 454
    iget-object v1, v9, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->data:[B

    iget-object v2, v9, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->uri:Landroid/net/Uri;

    iget-object v3, v9, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->title:Ljava/lang/String;

    iget-object v4, v9, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->loc:Landroid/location/Location;

    iget v5, v9, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->width:I

    iget v6, v9, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->height:I

    iget v7, v9, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->thumbnailWidth:I

    iget v8, v9, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;->orientation:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->storeImage([BLandroid/net/Uri;Ljava/lang/String;Landroid/location/Location;IIII)V

    .line 456
    monitor-enter p0

    .line 457
    :try_start_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 456
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 447
    .end local v9           #r:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updateThumbnailBydeleteFile()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 579
    const-string v2, "RemoteCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Camera] updateThumbnailBydeleteFile :: updateThumbnailBydeleteFile : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v2, 0x1

    new-array v1, v2, [Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 582
    .local v1, result:[Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetLastThumbnailFromContentResolver(Landroid/content/ContentResolver;[Lcom/pantech/app/vegacamera/controller/Thumbnail;)I

    move-result v0

    .line 584
    .local v0, code:I
    packed-switch v0, :pswitch_data_0

    .line 595
    iput-object v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 599
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->this$0:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;

    #getter for: Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->access$14(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 600
    return-void

    .line 586
    :pswitch_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    goto :goto_0

    .line 589
    :pswitch_1
    iput-object v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    goto :goto_0

    .line 592
    :pswitch_2
    iput-object v5, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mPendingThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    goto :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public waitDone()V
    .locals 1

    .prologue
    .line 465
    monitor-enter p0

    .line 466
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 465
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->UpdateThumbNail()V

    .line 475
    return-void

    .line 468
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    goto :goto_0

    .line 465
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
