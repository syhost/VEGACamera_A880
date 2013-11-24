.class Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;
.super Ljava/lang/Thread;
.source "VideoRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/VideoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartRecordingThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 471
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[VideoRecord] StartRecordingThread is run"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v2, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordSync:Ljava/lang/Object;

    monitor-enter v2

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[VideoRecord] stop start recording is pausing"

    invoke-static {v1, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 476
    monitor-exit v2

    .line 503
    :goto_0
    return-void

    .line 479
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/video/VideoRecord;->CheckFileSize(Lcom/pantech/app/vegacamera/ActivityBase;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_CheckMMSRecordingSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->Device_StartRecording()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 492
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 493
    :catch_0
    move-exception v0

    .line 494
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[VideoRecord] StartRecordingThread failed RuntimeException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopVideoRecording(Z)V

    .line 501
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->OnBackPressed()Z

    .line 472
    monitor-exit v2

    goto :goto_0

    .line 498
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "[VideoRecord] _InitRecorder : Not enough storage!"

    invoke-static {v1, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
