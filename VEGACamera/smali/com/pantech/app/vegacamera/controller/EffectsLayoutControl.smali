.class public Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "EffectsLayoutControl.java"


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
    .line 61
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_ControlBarInit()V

    .line 62
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_InformationAreaInit()V

    .line 63
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_PhotoShutterButtonInit()V

    .line 64
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_StartVoiceRecognizer()V

    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_FaceDistortCtlInit()V

    .line 66
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_BackTouchInit()V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_GridLayoutInit()V

    .line 69
    return-void
.end method


# virtual methods
.method public OnFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    const/16 v2, 0x13

    const/4 v1, 0x0

    .line 145
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_MenuContainerCloseAllDepth()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_MenuContainerShow()V

    .line 152
    if-eqz p1, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->isSaveAfterViewOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->bIsGoingToQuickView:Z

    if-eqz v0, :cond_2

    .line 155
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->bIsGoingToQuickView:Z

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_StartVoiceRecognizer()V

    .line 159
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_IsTimerShotEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_SetListnerClickAble(IZ)V

    .line 162
    :cond_3
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0

    .line 164
    :cond_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_StopVoiceRecognizer()V

    .line 165
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_IsTimerShotEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0, v2, v1}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 108
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[EffectsLayoutControl] onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_ActionVR(I)V

    .line 110
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_InitLocalLayout()V

    .line 104
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_InitLocalLayout()V

    .line 75
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_MenuContainerStart()V

    .line 76
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_FocusContainerStart()V

    .line 77
    return-void
.end method

.method protected _IsTimerShotEnable()Z
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/pantech/app/vegacamera/R$array;->effect_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ID_MAIN_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ID_SUB_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ID_THUMBNAIL_FRAME:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ID_INFORMATION_AREA:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 90
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 91
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 92
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 93
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 94
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 95
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 96
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 98
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ID_LAYOUT_PHOTO_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 27
    new-instance v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FaceDistortContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjFaceDistortCtlBar:Ljava/lang/Object;

    .line 31
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 35
    return-void

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_MenuContainerStop()V

    .line 82
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_FocusContainerStopFaceDetect()V

    .line 83
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_FocusContainerFocusReleased()V

    .line 84
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_StopVoiceRecognizer()V

    .line 85
    return-void
.end method

.method public _goto_EffectsIndex()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mOperator:Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;->OnShotModeChanged(I)V

    .line 141
    :cond_0
    return-void
.end method

.method public _setShutterButton_Disable()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x1f

    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 123
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_SetListnerClickAble(IZ)V

    .line 124
    invoke-virtual {p0, v4, v2}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method

.method public _setShutterButton_Enable()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x1f

    const/4 v2, 0x1

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 133
    invoke-virtual {p0, v3, v2}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_SetListnerClickAble(IZ)V

    .line 134
    invoke-virtual {p0, v4, v2}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_SetListnerClickAble(IZ)V

    goto :goto_0
.end method
