.class public Lcom/pantech/app/vegacamera/Text;
.super Lcom/pantech/app/vegacamera/Photo;
.source "Text.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/Text$TextOneShotPreviewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Text"


# instance fields
.field private mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

.field private mTextLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

.field private mTextOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Text$TextOneShotPreviewCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 17
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 19
    new-instance v0, Lcom/pantech/app/vegacamera/Text$TextOneShotPreviewCallback;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Text$TextOneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Text;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Text$TextOneShotPreviewCallback;

    .line 14
    return-void
.end method

.method private _DissmissTextDialog()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->dismissDialog()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 119
    :cond_0
    return-void
.end method

.method private _ShowTextDialog()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Text;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Text;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->text_save_processing:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->showDialog()V

    .line 106
    return-void
.end method

.method private _TextDialogSetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setOrientation(I)V

    .line 112
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/Text;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Text;->_DissmissTextDialog()V

    return-void
.end method


# virtual methods
.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method public OnOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->OnOrientationChanged(I)V

    .line 165
    iget v0, p0, Lcom/pantech/app/vegacamera/Text;->iOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Text;->_TextDialogSetOrientation(I)V

    .line 166
    return-void
.end method

.method public OnResume()V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnResume()V

    .line 171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 172
    return-void
.end method

.method public OperCapture(II)V
    .locals 0
    .parameter "what"
    .parameter "count"

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->OperCapture(II)V

    .line 97
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Text;->_ShowTextDialog()V

    .line 98
    return-void
.end method

.method protected ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 51
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 28
    const-string v0, "Text"

    const-string v1, "[Text] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Text;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mTextLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 31
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/Text;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Text;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Text;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Text;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 35
    return-void
.end method

.method protected _InflateModuleLayout()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->text:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 24
    return-void
.end method

.method protected _IsLowMagnification()Z
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    return v0
.end method

.method protected _SetDisplayOrientation()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetDisplayOrientation()V

    .line 159
    iget v0, p0, Lcom/pantech/app/vegacamera/Text;->iOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Text;->_TextDialogSetOrientation(I)V

    .line 160
    return-void
.end method

.method protected _SetOneShotPreviewCallBack()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "Text"

    const-string v1, "[HDR] _SetOneShotPreviewCallBack()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Text;->mTextOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Text$TextOneShotPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 41
    return-void
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 130
    const-string v0, "snapshot-burst-num"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method protected _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 146
    const-string v0, "none"

    .line 147
    .local v0, value:Ljava/lang/String;
    const-string v1, "Text"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Text mode, color tone is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method protected _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Text;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method protected _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 123
    const-string v0, "off"

    .line 124
    .local v0, value:Ljava/lang/String;
    const-string v1, "Text"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Text mode, flash is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method protected _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 77
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected _UpdateCameraParametersText(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 55
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Text;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_mode_text"

    .line 56
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Text;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_mode_text_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, mText:Ljava/lang/String;
    const-string v1, "Text"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] TextMode, mText = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    if-eqz v0, :cond_1

    const-string v1, "whiteboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Text;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-whiteboard-b"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "whiteboard_c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Text;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-whiteboard-c"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    if-eqz v0, :cond_0

    const-string v1, "blackboard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Text;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-blackboard-b"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 136
    const-string v0, "auto"

    .line 138
    .local v0, whiteBalance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 140
    const-string v1, "Text"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Text] set param wb = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected _UpdateCameraParametersZSL(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "param"

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 72
    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    .line 73
    return-void
.end method
