.class public Lcom/pantech/app/vegacamera/Hdr;
.super Lcom/pantech/app/vegacamera/Photo;
.source "Hdr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/Hdr$HdrOneShotPreviewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Hdr"


# instance fields
.field private mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

.field private mHdrLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

.field private mHdrOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Hdr$HdrOneShotPreviewCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 19
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 20
    new-instance v0, Lcom/pantech/app/vegacamera/Hdr$HdrOneShotPreviewCallback;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Hdr$HdrOneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Hdr;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Hdr$HdrOneShotPreviewCallback;

    .line 15
    return-void
.end method

.method private _DissmissHdrDialog()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->dismissDialog()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 161
    :cond_0
    return-void
.end method

.method private _HdrDialogSetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setOrientation(I)V

    .line 154
    :cond_0
    return-void
.end method

.method private _ShowHdrDialog()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Hdr;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Hdr;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->hdr_save_processing:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->showDialog()V

    .line 148
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/Hdr;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Hdr;->_DissmissHdrDialog()V

    return-void
.end method


# virtual methods
.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 174
    sparse-switch p1, :sswitch_data_0

    .line 184
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 178
    :sswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 174
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 189
    sparse-switch p1, :sswitch_data_0

    .line 199
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 193
    :sswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->isShowDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public OnOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->OnOrientationChanged(I)V

    .line 205
    iget v0, p0, Lcom/pantech/app/vegacamera/Hdr;->iOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Hdr;->_HdrDialogSetOrientation(I)V

    .line 206
    return-void
.end method

.method public OnPause()V
    .locals 2

    .prologue
    .line 136
    const-string v0, "Hdr"

    const-string v1, "[HDR] OnPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Hdr;->_DissmissHdrDialog()V

    .line 138
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnPause()V

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 140
    return-void
.end method

.method public OperCapture(II)V
    .locals 0
    .parameter "what"
    .parameter "count"

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->OperCapture(II)V

    .line 114
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Hdr;->_ShowHdrDialog()V

    .line 115
    return-void
.end method

.method protected ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 41
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "Hdr"

    const-string v1, "[Hdr] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/pantech/app/vegacamera/controller/HdrLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Hdr;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/HdrLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 27
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/Hdr;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Hdr;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Hdr;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Hdr;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 31
    return-void
.end method

.method protected _SetDisplayOrientation()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetDisplayOrientation()V

    .line 131
    iget v0, p0, Lcom/pantech/app/vegacamera/Hdr;->iOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Hdr;->_HdrDialogSetOrientation(I)V

    .line 132
    return-void
.end method

.method protected _SetOneShotPreviewCallBack()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "Hdr"

    const-string v1, "[HDR] _SetOneShotPreviewCallBack()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Hdr;->mHdrOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Hdr$HdrOneShotPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 47
    return-void
.end method

.method protected _UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 97
    const-string v0, "4"

    .line 98
    .local v0, value:Ljava/lang/String;
    const-string v1, "Hdr"

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

    .line 99
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Hdr;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "luma-adaptation"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 58
    return-void
.end method

.method protected _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 69
    const-string v0, "none"

    .line 70
    .local v0, value:Ljava/lang/String;
    const-string v1, "Hdr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hdr mode, color tone is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method protected _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method protected _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 62
    const-string v0, "off"

    .line 63
    .local v0, value:Ljava/lang/String;
    const-string v1, "Hdr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "hdr mode, flash is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method protected _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 104
    const-string v0, "pantech-hdr-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    const-string v0, "Hdr"

    const-string v1, "[Hdr] is not supported hdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    const-string v0, "pantech-hdr"

    const-string v1, "on"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method protected _UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 87
    const-string v0, "auto"

    .line 89
    .local v0, whiteBalance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 91
    const-string v1, "Hdr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Hdr] set param wb = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    return-void
.end method

.method protected _UpdateCameraParametersZSL(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 52
    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public onCaptureComplete()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "Hdr"

    const-string v1, "[HDR] onCaptureComplete()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Hdr;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 122
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Hdr;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->onCaptureComplete()V

    .line 123
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Hdr;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Hdr;->iCaptureMode:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CheckFocusState(I)I

    .line 124
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Hdr;->_StartPreview()V

    .line 125
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Hdr;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 126
    return-void
.end method
