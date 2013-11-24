.class public Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "PhotoLayoutControl.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 15
    return-void
.end method

.method private _InitLocalLayout()V
    .locals 0

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_ControlBarInit()V

    .line 64
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_InformationAreaInit()V

    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_PhotoShutterButtonInit()V

    .line 66
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_StartVoiceRecognizer()V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_TimerShotInit()V

    .line 68
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_ZoomButtonInit()V

    .line 69
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_ColorExtCtlInit()V

    .line 70
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_BackTouchInit()V

    .line 71
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_GridLayoutInit()V

    .line 72
    return-void
.end method


# virtual methods
.method public OnPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 0
    .parameter "data"
    .parameter "device"

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnPreviewFrame([BLandroid/hardware/Camera;)V

    .line 89
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ShutterButtonInit()V

    .line 90
    return-void
.end method

.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 130
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_ActionVR(I)V

    .line 132
    return-void
.end method

.method protected ShutterButtonInit()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x1f

    const/4 v2, 0x1

    .line 75
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_SetListnerClickAble(IZ)V

    .line 77
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0, v4, v2}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_SetListnerClickAble(IZ)V

    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 84
    :cond_1
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_InitLocalLayout()V

    .line 126
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_InitLocalLayout()V

    .line 95
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_MenuContainerStart()V

    .line 96
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_FocusContainerStart()V

    .line 97
    return-void
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/pantech/app/vegacamera/R$array;->photo_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjColorExtractCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ID_MAIN_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ID_SUB_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ID_THUMBNAIL_FRAME:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ID_INFORMATION_AREA:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :cond_0
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 111
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 112
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 113
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 114
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 115
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 116
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 117
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjColorExtractCtlBar:Ljava/lang/Object;

    .line 118
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 119
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 120
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 121
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 25
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ID_LAYOUT_PHOTO_SHUTTER:I

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedColorExtraction()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjColorExtractCtlBar:Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :cond_0
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 36
    return-void

    :cond_1
    move-object v0, v1

    .line 32
    goto :goto_0
.end method

.method protected _LongPressedCapture(Z)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsOnBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsOnIPLEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_LongPressedCapture(Z)V

    .line 153
    :goto_0
    return-void

    .line 139
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->isExternMemoryLocation()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    if-eqz p1, :cond_2

    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/4 v1, 0x5

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(II)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(II)V

    goto :goto_0

    .line 146
    :cond_3
    if-eqz p1, :cond_4

    .line 147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/4 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(II)V

    goto :goto_0

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(II)V

    goto :goto_0
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_MenuContainerStop()V

    .line 102
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_FocusContainerStopFaceDetect()V

    .line 103
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_FocusContainerFocusReleased()V

    .line 104
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_StopVoiceRecognizer()V

    .line 105
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;->_TimerShotStop()V

    .line 106
    return-void
.end method
