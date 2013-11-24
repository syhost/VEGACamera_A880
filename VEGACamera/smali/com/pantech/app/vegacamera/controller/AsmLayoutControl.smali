.class public Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "AsmLayoutControl.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 11
    return-void
.end method

.method private _InitLocalLayout()V
    .locals 0

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_ControlBarInit()V

    .line 60
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_PhotoShutterButtonInit()V

    .line 61
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_InformationAreaInit()V

    .line 62
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_StartVoiceRecognizer()V

    .line 63
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_TimerShotInit()V

    .line 64
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_ZoomButtonInit()V

    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_BackTouchInit()V

    .line 66
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_GridLayoutInit()V

    .line 67
    return-void
.end method


# virtual methods
.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 113
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_ActionVR(I)V

    .line 115
    return-void
.end method

.method public OnShutterButtonLongPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 109
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_InitLocalLayout()V

    .line 104
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_InitLocalLayout()V

    .line 73
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_MenuContainerStart()V

    .line 74
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_FocusContainerStart()V

    .line 75
    return-void
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lcom/pantech/app/vegacamera/R$array;->asm_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjAsmContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ID_MAIN_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ID_SUB_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ID_THUMBNAIL_FRAME:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ID_INFORMATION_AREA:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_0
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 89
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 90
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 91
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 92
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 93
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 94
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 95
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjAsmContainer:Ljava/lang/Object;

    .line 96
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 97
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 98
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ID_LAYOUT_PHOTO_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/pantech/app/vegacamera/controller/AsmContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/AsmContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjAsmContainer:Ljava/lang/Object;

    .line 29
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 31
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 32
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_MenuContainerStop()V

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_FocusContainerStopFaceDetect()V

    .line 81
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_FocusContainerFocusReleased()V

    .line 82
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_StopVoiceRecognizer()V

    .line 83
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/AsmLayoutControl;->_TimerShotStop()V

    .line 84
    return-void
.end method
