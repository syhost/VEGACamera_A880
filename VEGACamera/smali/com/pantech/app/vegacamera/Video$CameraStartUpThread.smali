.class Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/Video;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 312
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 312
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;-><init>(Lcom/pantech/app/vegacamera/Video;)V

    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->mCancelled:Z

    .line 317
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 323
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const-string v1, "Video"

    const-string v2, "[Video] CameraStartUpThread, run()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Video;->access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->iCameraId:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Video;->access$19(Lcom/pantech/app/vegacamera/Video;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->OpenCamera(Landroid/content/Context;I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_2

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$20(Lcom/pantech/app/vegacamera/Video;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 351
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_InitializeCapabilities()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$21(Lcom/pantech/app/vegacamera/Video;)V

    .line 353
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 359
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    const-wide/16 v2, -0x1

    #calls: Lcom/pantech/app/vegacamera/Video;->_SetCameraParameters(J)V
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/Video;->access$22(Lcom/pantech/app/vegacamera/Video;J)V

    .line 360
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_StartPreview()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$23(Lcom/pantech/app/vegacamera/Video;)V

    .line 367
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 369
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    const-string v1, "Video"

    const-string v2, "[Video] CameraHardwareException()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 336
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 337
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    const-string v1, "Video"

    const-string v2, "[Video] CameraDisabledException()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 340
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    :catch_2
    move-exception v0

    .line 341
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    const-string v1, "Video"

    const-string v2, "[Video] CameraAppCrashException()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
