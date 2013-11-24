.class public Lcom/pantech/app/vegacamera/BestFace;
.super Lcom/pantech/app/vegacamera/Photo;
.source "BestFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BestFace"


# instance fields
.field private final mAutoFocusCallback:Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;

.field private mBestFaceLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    .line 17
    iput-object v1, p0, Lcom/pantech/app/vegacamera/BestFace;->mBestFaceLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 18
    new-instance v0, Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/BestFace;Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;

    .line 14
    return-void
.end method


# virtual methods
.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mBestFaceLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method public OnPause()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onRelease()V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnPause()V

    .line 120
    return-void
.end method

.method public OnResume()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnResume()V

    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 146
    return-void
.end method

.method public OperCapture(II)V
    .locals 6
    .parameter "what"
    .parameter "count"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusOper()V

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    .line 56
    const-string v1, "pref_focus_mode_status"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/BestFace;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_focus_mode_default:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/BestFace;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/BestFace$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 61
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/BestFace;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/BestFace;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/capture/ImpleBestFaceShotCapture;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;II)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/operator/ICapture;->setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V

    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onCapture()V

    .line 64
    return-void
.end method

.method protected ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mBestFaceLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 50
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 22
    const-string v0, "BestFace"

    const-string v1, "[BestFace] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/BestFace;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mBestFaceLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 25
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/BestFace;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/BestFace;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/BestFace;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/BestFace;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 29
    return-void
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 96
    const-string v0, "snapshot-burst-num"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 89
    const-string v0, "none"

    .line 90
    .local v0, value:Ljava/lang/String;
    const-string v1, "BestFace"

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

    .line 91
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method protected _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method protected _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 82
    const-string v0, "off"

    .line 83
    .local v0, value:Ljava/lang/String;
    const-string v1, "BestFace"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BestFace mode, flash is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 101
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method protected _UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method protected _UpdateCameraParametersZSL(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedZSLModes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string v0, "BestFace"

    const-string v1, "[BestFace] set zsl mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 38
    const-string v0, "on"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCaptureComplete()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "BestFace"

    const-string v1, "[Photo] onCaptureComplete()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mBestFaceLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mBestFaceLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->onCaptureComplete()V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 134
    iget-object v0, p0, Lcom/pantech/app/vegacamera/BestFace;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsZSLUsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/BestFace;->_StartPreview()V

    .line 139
    :goto_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/BestFace;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 140
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/BestFace;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/BestFace;->iCaptureMode:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CheckFocusState(I)I

    goto :goto_0
.end method
