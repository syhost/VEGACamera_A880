.class Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;
.super Ljava/lang/Thread;
.source "VideoRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/VideoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StopRecordingThread"
.end annotation


# instance fields
.field private actionStop:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Z)V
    .locals 0
    .parameter
    .parameter "stop"

    .prologue
    .line 509
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 510
    iput-boolean p2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->actionStop:Z

    .line 511
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/16 v11, 0x18

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 514
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "[VideoRecord] StopRecordingThread is run"

    invoke-static {v4, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v4

    const/4 v7, 0x6

    if-ne v4, v7, :cond_3

    .line 516
    const/4 v3, 0x0

    .line 517
    .local v3, needToRegisterRecording:Z
    const-wide/16 v0, 0x0

    .line 518
    .local v0, delta:J
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x16

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 520
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-wide v9, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingStartTime:J

    sub-long v0, v7, v9

    .line 522
    :try_start_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->recordingStop()V

    .line 527
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/video/VideoRecord;->sFileName:Ljava/lang/String;

    iput-object v7, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;

    .line 528
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sCurrentFileName:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v8, v8, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    const/4 v3, 0x1

    .line 540
    :goto_0
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->actionStop:Z

    if-eqz v4, :cond_0

    const-wide/16 v7, 0x514

    cmp-long v4, v0, v7

    if-ltz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-wide v7, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingStartTime:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    if-nez v4, :cond_5

    .line 541
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 542
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/temp.tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_DeleteVideoFile(Ljava/lang/String;)V

    .line 544
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v7, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v8, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->actionStop:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v8, v11, v4, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 554
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->sFileName:Ljava/lang/String;

    .line 557
    .end local v0           #delta:J
    .end local v3           #needToRegisterRecording:Z
    :cond_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 561
    return-void

    .line 530
    .restart local v0       #delta:J
    .restart local v3       #needToRegisterRecording:Z
    :catch_0
    move-exception v2

    .line 531
    .local v2, e:Ljava/lang/RuntimeException;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[VideoRecord] stop recording fail: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/temp.tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_DeleteVideoFile(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_4
    move v4, v6

    .line 544
    goto :goto_1

    .line 545
    :cond_5
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->actionStop:Z

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 546
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_RegisterVideo()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 547
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateThumbNail()V

    .line 548
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    goto :goto_2

    .line 550
    :cond_6
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "[VideoCamera] _RegisterVideo() failed"

    invoke-static {v4, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method
