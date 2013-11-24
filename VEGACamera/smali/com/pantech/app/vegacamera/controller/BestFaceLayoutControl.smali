.class public Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;
.source "BestFaceLayoutControl.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 14
    return-void
.end method

.method private _SetShutterLayoutEnabble(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_SetListnerClickAble(IZ)V

    .line 48
    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_MenuContainerShow()V

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_MenuContainerClear()V

    goto :goto_0
.end method

.method private _SnapBestShot()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 38
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_SetLayoutVisible(II)V

    .line 39
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_SetLayoutVisible(II)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_SetLayoutVisible(II)V

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_SetShutterLayoutEnabble(Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 108
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_ActionVR(I)V

    .line 110
    return-void
.end method

.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_SnapBestShot()V

    .line 34
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V

    .line 35
    return-void
.end method

.method public OnTimerShotCancel(Z)V
    .locals 1
    .parameter "forced"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->OnTimerShotCancel(Z)V

    .line 87
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_SetShutterLayoutEnabble(Z)V

    .line 88
    return-void
.end method

.method public OnTimerShotEnd()V
    .locals 0

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_TimerShotClearIcon()V

    .line 93
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_CaptureOper()V

    .line 94
    return-void
.end method

.method protected _CaptureCount()I
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$integer;->number_of_images:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public _ColorExtCtlInit()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 21
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 22
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 23
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 25
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 26
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 27
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method protected _LongPressedCapture(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 98
    if-eqz p1, :cond_1

    .line 99
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_FocusContainerFocusStart(I)V

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_ShutterButtonClick()V

    .line 104
    :cond_1
    return-void
.end method

.method protected _ShutterButtonClick()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_SnapBestShot()V

    .line 76
    invoke-super {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_ShutterButtonClick()V

    goto :goto_0
.end method

.method protected _StopLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v2, 0x1

    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 66
    :cond_0
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/controller/BestFaceLayoutControl;->_SetShutterLayoutEnabble(Z)V

    .line 67
    invoke-super {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_StopLayout()V

    .line 68
    return-void
.end method
