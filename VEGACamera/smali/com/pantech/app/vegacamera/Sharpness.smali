.class public Lcom/pantech/app/vegacamera/Sharpness;
.super Lcom/pantech/app/vegacamera/Photo;
.source "Sharpness.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Sharpness"


# instance fields
.field private mSharpnessLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mSharpnessLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 12
    return-void
.end method


# virtual methods
.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mSharpnessLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method protected OnCreateCameraScreenNail()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 47
    return-void
.end method

.method protected ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mSharpnessLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 42
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 25
    const-string v0, "Sharpness"

    const-string v1, "[Cover] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Sharpness;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mSharpnessLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 28
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/Sharpness;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Sharpness;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Sharpness;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Sharpness;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 32
    return-void
.end method

.method protected _InflateModuleLayout()V
    .locals 3

    .prologue
    .line 19
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->sharpness:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 21
    return-void
.end method

.method protected _UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 91
    const-string v0, "4"

    .line 92
    .local v0, value:Ljava/lang/String;
    const-string v1, "Sharpness"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Hdr mode, ev is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Sharpness;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "luma-adaptation"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 52
    return-void
.end method

.method protected _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 56
    const-string v0, "none"

    .line 57
    .local v0, value:Ljava/lang/String;
    const-string v1, "Sharpness"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cover mode, color tone is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method protected _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method protected _UpdateCameraParametersFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 98
    const-string v0, "pantech-hdr-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "Sharpness"

    const-string v1, "[Cover] is not supported hdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Sharpness;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected _UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 80
    const-string v0, "auto"

    .line 82
    .local v0, whiteBalance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 84
    const-string v1, "Sharpness"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Cover] set param wb = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
