.class public Lcom/pantech/app/vegacamera/Self;
.super Lcom/pantech/app/vegacamera/Photo;
.source "Self.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Self"


# instance fields
.field private mSelfLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mSelfLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 14
    return-void
.end method


# virtual methods
.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mSelfLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method public OnResume()V
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnResume()V

    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 122
    return-void
.end method

.method public OnSmartCoverOpen()V
    .locals 2

    .prologue
    .line 113
    const-string v0, "Self"

    const-string v1, "OnSmartCoverOpen()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mSelfLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    check-cast v0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetShutterLayoutEnabble(Z)V

    .line 115
    return-void
.end method

.method public OperCapture(II)V
    .locals 6
    .parameter "what"
    .parameter "count"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusOper()V

    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Self;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Self;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;II)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Self;->_UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onCapture()V

    .line 69
    return-void
.end method

.method protected ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mSelfLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 48
    return-void
.end method

.method public ZoomControl(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 27
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 31
    const-string v0, "Self"

    const-string v1, "[Self] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Self;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mSelfLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/Self;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Self;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Self;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Self;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 38
    return-void
.end method

.method protected _InflateModuleLayout()V
    .locals 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->self:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 22
    return-void
.end method

.method protected _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 73
    const-string v0, "none"

    .line 74
    .local v0, value:Ljava/lang/String;
    const-string v1, "Self"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Asm mode, color tone is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 106
    const-string v0, "off"

    .line 107
    .local v0, value:Ljava/lang/String;
    const-string v1, "Self"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Self mode, flash is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected _UpdateCameraParametersFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 126
    const-string v1, "Self"

    const-string v2, "[Self] UpdateCameraParametersFocusMode"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Self;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->GetFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, mode:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Self;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 85
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method protected _UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Self;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected _UpdateCameraParametersZSL(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedZSLModes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 97
    :goto_0
    return-void

    .line 93
    :cond_0
    const-string v0, "Self"

    const-string v1, "[BestFace] set zsl mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 95
    const-string v0, "on"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFocusCallback(Z)V
    .locals 5
    .parameter "focused"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->setFocusCallback(Z)V

    .line 53
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Self;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_timershot"

    .line 54
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Self;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_timershot_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 53
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, timershot:Ljava/lang/String;
    const-string v1, "Off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Self;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Capture()Z

    .line 58
    :cond_0
    return-void
.end method
