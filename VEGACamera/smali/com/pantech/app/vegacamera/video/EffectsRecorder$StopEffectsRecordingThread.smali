.class public Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;
.super Ljava/lang/Thread;
.source "EffectsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/EffectsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StopEffectsRecordingThread"
.end annotation


# instance fields
.field private actionStop:Z

.field public isEffectRecordingStopThreadFinished:Z

.field public isRecordingDone:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/video/EffectsRecorder;Z)V
    .locals 1
    .parameter
    .parameter "stop"

    .prologue
    .line 546
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 543
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isRecordingDone:Z

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isEffectRecordingStopThreadFinished:Z

    .line 547
    iput-boolean p2, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->actionStop:Z

    .line 548
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/16 v13, 0x18

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 551
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isEffectRecordingStopThreadFinished:Z

    .line 552
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v5

    const/4 v8, 0x6

    if-ne v5, v8, :cond_4

    .line 553
    const-string v5, "EffectsRecorder"

    const-string v8, "[EffectsRecorder] StopEffectsRecordingThread is run"

    invoke-static {v5, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v3, 0x0

    .line 555
    .local v3, needToRegisterRecording:Z
    const-wide/16 v0, 0x0

    .line 556
    .local v0, delta:J
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v8, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->recordSync:Ljava/lang/Object;

    monitor-enter v8

    .line 557
    :try_start_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x16

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 559
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-wide v11, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRecordingStartTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v0, v9, v11

    .line 578
    :try_start_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v5, v5, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v5, :cond_5

    .line 579
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    #getter for: Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRunner:Landroid/filterfw/core/GraphRunner;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->access$1(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)Landroid/filterfw/core/GraphRunner;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v5

    const-string v9, "recorder"

    invoke-virtual {v5, v9}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v4

    .line 580
    .local v4, recorder:Landroid/filterfw/core/Filter;
    const-string v5, "recording"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v4, v5, v9}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 586
    .end local v4           #recorder:Landroid/filterfw/core/Filter;
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v9, v9, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->sFileName:Ljava/lang/String;

    iput-object v9, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->sCurrentFileName:Ljava/lang/String;

    .line 588
    const-string v5, "EffectsRecorder"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "sCurrentFileName:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v10, v10, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->sCurrentFileName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 589
    const/4 v3, 0x1

    .line 556
    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 598
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->actionStop:Z

    if-eqz v5, :cond_1

    const-wide/16 v8, 0x514

    cmp-long v5, v0, v8

    if-ltz v5, :cond_1

    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-wide v8, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mRecordingStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_7

    .line 599
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->sCurrentFileName:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 600
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/temp.tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_DeleteVideoFile(Ljava/lang/String;)V

    .line 602
    :cond_2
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v8, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v9, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->actionStop:Z

    if-eqz v5, :cond_6

    move v5, v6

    :goto_1
    invoke-virtual {v9, v13, v5, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 629
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    const/4 v7, 0x0

    iput-object v7, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->sFileName:Ljava/lang/String;

    .line 631
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    #getter for: Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mEffectsListener:Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->access$2(Lcom/pantech/app/vegacamera/video/EffectsRecorder;)Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;->EffectRecordingThreadComplete()V

    .line 633
    .end local v0           #delta:J
    .end local v3           #needToRegisterRecording:Z
    :cond_4
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 634
    const-string v5, "EffectsRecorder"

    const-string v6, "StopEffectsRecordingThread"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    return-void

    .line 582
    .restart local v0       #delta:J
    .restart local v3       #needToRegisterRecording:Z
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 583
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->recordingStop()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 590
    :catch_0
    move-exception v2

    .line 591
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v5, "EffectsRecorder"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[VideoRecord] stop recording fail: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/temp.tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_DeleteVideoFile(Ljava/lang/String;)V

    .line 593
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 556
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    :cond_6
    move v5, v7

    .line 602
    goto :goto_1

    .line 603
    :cond_7
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->actionStop:Z

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    .line 604
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->actionStop:Z

    if-eqz v5, :cond_9

    .line 605
    monitor-enter p0

    .line 607
    :try_start_5
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isRecordingDone:Z

    if-nez v5, :cond_8

    .line 608
    const-wide/16 v8, 0xbb8

    invoke-virtual {p0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1

    .line 605
    :cond_8
    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 614
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isRecordingDone:Z

    .line 617
    :cond_9
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v5, v5, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v5, :cond_b

    .line 618
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_RegisterVideo()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 619
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_UpdateThumbNail()V

    .line 620
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    goto/16 :goto_2

    .line 609
    :catch_1
    move-exception v2

    .line 611
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 605
    .end local v2           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v5

    .line 622
    :cond_a
    const-string v5, "EffectsRecorder"

    const-string v8, "[VideoCamera] _RegisterVideo() failed"

    invoke-static {v5, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v8, v8, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v13, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 626
    :cond_b
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v5, v5, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x1b

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2
.end method
