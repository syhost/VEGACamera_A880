.class Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;
.super Ljava/lang/Thread;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStartUpThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/Photo;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->mCancelled:Z

    .line 331
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 337
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    const-string v1, "Photo"

    const-string v2, "[Photo] CameraStartUpThread, run()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->CameraOpenStartPerformTest()V

    .line 346
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #getter for: Lcom/pantech/app/vegacamera/Photo;->iCameraId:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/Photo;->access$12(Lcom/pantech/app/vegacamera/Photo;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->OpenCamera(Landroid/content/Context;I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_2

    .line 362
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 363
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->CameraOpenDonePerformTest()V

    .line 367
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #getter for: Lcom/pantech/app/vegacamera/Photo;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Photo;->access$13(Lcom/pantech/app/vegacamera/Photo;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 369
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #calls: Lcom/pantech/app/vegacamera/Photo;->_InitializeCapabilities()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Photo;->access$14(Lcom/pantech/app/vegacamera/Photo;)V

    .line 371
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 375
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 377
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->_StartPreview()V

    .line 384
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 386
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    const-string v1, "Photo"

    const-string v2, "[Photo] CameraHardwareException()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 351
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 352
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    const-string v1, "Photo"

    const-string v2, "[Photo] CameraDisabledException()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 355
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    :catch_2
    move-exception v0

    .line 356
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    const-string v1, "Photo"

    const-string v2, "[Photo] CameraAppCrashException()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
