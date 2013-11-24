.class Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;
.super Ljava/lang/Thread;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetUpDeviceThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 651
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Panorama;Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    return-void
.end method


# virtual methods
.method public Cancel()V
    .locals 1

    .prologue
    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->mCancelled:Z

    .line 656
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 660
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->mCancelled:Z

    if-eqz v0, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_OpenDevice()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$24(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 665
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$22(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$25(Lcom/pantech/app/vegacamera/Panorama;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 666
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$22(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    #setter for: Lcom/pantech/app/vegacamera/Panorama;->mInitialParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Panorama;->access$26(Lcom/pantech/app/vegacamera/Panorama;Landroid/hardware/Camera$Parameters;)V

    .line 667
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mInitialParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$27(Lcom/pantech/app/vegacamera/Panorama;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_SetupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Panorama;->access$28(Lcom/pantech/app/vegacamera/Panorama;Landroid/hardware/Camera$Parameters;)V

    .line 668
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mInitialParams:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$27(Lcom/pantech/app/vegacamera/Panorama;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_DeviceSetParameters(Landroid/hardware/Camera$Parameters;)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Panorama;->access$29(Lcom/pantech/app/vegacamera/Panorama;Landroid/hardware/Camera$Parameters;)V

    .line 669
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$22(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Panorama;->access$22(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 670
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->mCancelled:Z

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
