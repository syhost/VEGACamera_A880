.class public Lcom/pantech/app/vegacamera/Beauty;
.super Lcom/pantech/app/vegacamera/Photo;
.source "Beauty.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# static fields
.field private static final DEFAULT_SKIN_SMOOTHING_STRENGTH:I = 0x28

.field private static final DEFAULT_SKIN_TONE_ADJUSTMENT_STRENGTH:I = 0x46

.field private static final TAG:Ljava/lang/String; = "Beauty"


# instance fields
.field private beautyEngine:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

.field private mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

.field private mBeautyLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

.field private mCameraTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 30
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 34
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->beautyEngine:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    .line 23
    return-void
.end method

.method private _BeaytyDialogSetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setOrientation(I)V

    .line 259
    :cond_0
    return-void
.end method

.method private _DismissBeautyDialog()V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->dismissDialog()V

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 266
    :cond_0
    return-void
.end method

.method private _ShowBeautyDialog()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->beauty_save_processing:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->showDialog()V

    .line 253
    return-void
.end method


# virtual methods
.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method public OnOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 276
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->OnOrientationChanged(I)V

    .line 277
    iget v0, p0, Lcom/pantech/app/vegacamera/Beauty;->iOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Beauty;->_BeaytyDialogSetOrientation(I)V

    .line 278
    return-void
.end method

.method public OnPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 46
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onStop()V

    .line 51
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->onCaptureComplete()V

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Beauty;->_DismissBeautyDialog()V

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->beautyEngine:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    if-eqz v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->beautyEngine:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    invoke-virtual {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->release()V

    .line 58
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->beautyEngine:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->releaseSurfaceTexture()V

    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 63
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 65
    :cond_3
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnPause()V

    .line 66
    return-void
.end method

.method public OnResume()V
    .locals 2

    .prologue
    .line 282
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->OnResume()V

    .line 283
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 284
    return-void
.end method

.method public OperCapture(II)V
    .locals 3
    .parameter "what"
    .parameter "count"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/pantech/app/vegacamera/capture/ImpleBeautyCapture;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 184
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/operator/ICapture;->setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Beauty;->_ShowBeautyDialog()V

    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onCapture()V

    .line 189
    return-void
.end method

.method protected ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 150
    return-void
.end method

.method protected _CameaAfterPreviewDone()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    check-cast v0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->SetBeautyPreviewDone()V

    .line 70
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 133
    const-string v0, "Beauty"

    const-string v1, "[Beauty] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mBeautyLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/Beauty;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Beauty;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 140
    return-void
.end method

.method protected _InflateModuleLayout()V
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->beauty:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    return-void
.end method

.method protected _IsLowMagnification()Z
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method protected _SetDisplayOrientation()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetDisplayOrientation()V

    .line 271
    iget v0, p0, Lcom/pantech/app/vegacamera/Beauty;->iOrientationCompensation:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Beauty;->_BeaytyDialogSetOrientation(I)V

    .line 272
    return-void
.end method

.method protected _StartPreview()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 73
    const-string v0, "Beauty"

    const-string v1, "[Beauty] _StartPreview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->_StopPreview()V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->GetCameraId()I

    move-result v0

    invoke-static {v5, v0}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayOrientation(II)I

    move-result v4

    .line 79
    .local v4, iCameraDisplayOrientation:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->_SetOneShotPreviewCallBack()V

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->_SetPreviewCallBack()V

    .line 82
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Beauty;->_SetCameraParameters(J)V

    .line 83
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->_SetDisplayOrientation()V

    .line 85
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v9, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v9, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    .line 86
    .local v9, screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-nez v0, :cond_2

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v10

    .line 89
    .local v10, size:Landroid/hardware/Camera$Size;
    rem-int/lit16 v0, v4, 0xb4

    if-nez v0, :cond_3

    .line 90
    iget v0, v10, Landroid/hardware/Camera$Size;->width:I

    iget v1, v10, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v9, v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->NotifyScreenNailChanged()V

    .line 97
    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->acquireSurfaceTexture()V

    .line 98
    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 101
    new-instance v0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 102
    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getWidth()I

    move-result v2

    .line 103
    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getHeight()I

    move-result v3

    .line 106
    const/16 v6, 0x28

    .line 107
    const/16 v7, 0x46

    invoke-direct/range {v0 .. v7}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIIZII)V

    .line 101
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->beautyEngine:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->beautyEngine:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    invoke-virtual {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    .line 117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mCameraTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 123
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 129
    return-void

    .line 92
    .restart local v10       #size:Landroid/hardware/Camera$Size;
    :cond_3
    iget v0, v10, Landroid/hardware/Camera$Size;->height:I

    iget v1, v10, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v9, v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    goto :goto_0

    .line 124
    .end local v10           #size:Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v8

    .line 125
    .local v8, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->_CloseCamera()V

    .line 126
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startPreview failed"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected _UpdateCameraParametersBeauty(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 160
    return-void
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 171
    const-string v0, "snapshot-burst-num"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method protected _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 211
    const-string v0, "none"

    .line 212
    .local v0, value:Ljava/lang/String;
    const-string v1, "Beauty"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beauty mode, color tone is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method protected _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method protected _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 204
    const-string v0, "off"

    .line 205
    .local v0, value:Ljava/lang/String;
    const-string v1, "Beauty"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Beauty mode, flash is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method protected _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 166
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method protected _UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method protected _UpdateCameraParametersZSL(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedZSLModes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 196
    :cond_0
    const-string v0, "Beauty"

    const-string v1, "[Beauty] set zsl mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 198
    const-string v0, "on"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCaptureComplete()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "Beauty"

    const-string v1, "[Beauty] onCaptureComplete()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 240
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 241
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->onCaptureComplete()V

    .line 242
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Beauty;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Beauty;->iCaptureMode:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CheckFocusState(I)I

    .line 243
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Beauty;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 244
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Beauty;->_DismissBeautyDialog()V

    .line 245
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "surfaceTexture"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->beautyEngine:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Beauty;->beautyEngine:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    invoke-virtual {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->doProcessing()V

    goto :goto_0
.end method
