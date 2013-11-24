.class Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field protected volatile mCancelled:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->mCancelled:Z

    .line 360
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 366
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    const-string v1, "Effects"

    const-string v2, "[Effects] CameraStartUpThread, run()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    if-eqz v1, :cond_4

    .line 373
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->tStopEffectsRecordingThread:Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/video/EffectsRecorder$StopEffectsRecordingThread;->isEffectRecordingStopThreadFinished:Z

    if-nez v1, :cond_4

    .line 378
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const/4 v2, 0x1

    #setter for: Lcom/pantech/app/vegacamera/Effects;->iseffectPreviewConditionBlocked:Z
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/Effects;->access$40(Lcom/pantech/app/vegacamera/Effects;Z)V

    .line 379
    const-string v1, "Effects"

    const-string v2, "effectPreviewCondition.block()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->effectPreviewCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 385
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->iCameraId:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Effects;->access$41(Lcom/pantech/app/vegacamera/Effects;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->OpenCamera(Landroid/content/Context;I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_2

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$42(Lcom/pantech/app/vegacamera/Effects;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 407
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_InitializeCapabilities()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$43(Lcom/pantech/app/vegacamera/Effects;)V

    .line 409
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 415
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const-wide/16 v2, -0x1

    #calls: Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/Effects;->access$7(Lcom/pantech/app/vegacamera/Effects;J)V

    .line 416
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 422
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->effectPreviewCondition:Landroid/os/ConditionVariable;

    if-nez v1, :cond_3

    .line 423
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, v1, Lcom/pantech/app/vegacamera/Effects;->effectPreviewCondition:Landroid/os/ConditionVariable;

    .line 425
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_StartPreview()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$44(Lcom/pantech/app/vegacamera/Effects;)V

    .line 427
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 429
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 382
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const/4 v2, 0x0

    #setter for: Lcom/pantech/app/vegacamera/Effects;->iseffectPreviewConditionBlocked:Z
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/Effects;->access$40(Lcom/pantech/app/vegacamera/Effects;Z)V

    goto/16 :goto_1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    const-string v1, "Effects"

    const-string v2, "[Effects] CameraHardwareException()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 392
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 393
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    const-string v1, "Effects"

    const-string v2, "[Effects] CameraDisabledException()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 396
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    :catch_2
    move-exception v0

    .line 397
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    const-string v1, "Effects"

    const-string v2, "[Effects] CameraAppCrashException()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
