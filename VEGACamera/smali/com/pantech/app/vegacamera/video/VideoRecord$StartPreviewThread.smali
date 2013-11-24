.class Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;
.super Ljava/lang/Thread;
.source "VideoRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/video/VideoRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartPreviewThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->mCancelled:Z

    .line 425
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 428
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->mCancelled:Z

    if-eqz v1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[VideoRecord] CameraStartUpThread ,run() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_2

    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->OpenCamera(Landroid/content/Context;I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_2

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #calls: Lcom/pantech/app/vegacamera/video/VideoRecord;->_InitializeCapabilities()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$5(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    .line 454
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 456
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 458
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->mCancelled:Z

    if-nez v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #calls: Lcom/pantech/app/vegacamera/video/VideoRecord;->_StartPreview()Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$6(Lcom/pantech/app/vegacamera/video/VideoRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[VideoRecord] CameraHardwareException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 441
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 442
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[VideoRecord] CameraDisabledException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 445
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    :catch_2
    move-exception v0

    .line 446
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    #getter for: Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[VideoRecord] CameraAppCrashException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->this$0:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
