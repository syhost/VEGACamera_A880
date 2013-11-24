.class public Lcom/pantech/app/vegacamera/controller/TextLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "TextLayoutControl.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 16
    return-void
.end method

.method private _InitLocalLayout()V
    .locals 0

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_ControlBarInit()V

    .line 66
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_PhotoShutterButtonInit()V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_InformationAreaInit()V

    .line 68
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_StartVoiceRecognizer()V

    .line 69
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_TimerShotInit()V

    .line 70
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_ZoomButtonInit()V

    .line 71
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_TextModeCtlInit()V

    .line 72
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_BackTouchInit()V

    .line 73
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_GridLayoutInit()V

    .line 74
    return-void
.end method


# virtual methods
.method public OnMenuContainerOneDepthMenuAct(Z)V
    .locals 2
    .parameter "act"

    .prologue
    const/4 v1, 0x2

    .line 131
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnMenuContainerOneDepthMenuAct(Z)V

    .line 132
    if-eqz p1, :cond_0

    .line 133
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetLayoutVisible(II)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0
.end method

.method public OnPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "device"

    .prologue
    .line 141
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnPreviewFrame([BLandroid/hardware/Camera;)V

    .line 142
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetLayoutVisible(II)V

    .line 145
    :cond_0
    return-void
.end method

.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 125
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_ActionVR(I)V

    .line 127
    return-void
.end method

.method public OnShutterButtonMove(Z)V
    .locals 3
    .parameter "move"

    .prologue
    const/16 v2, 0x1b

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetVisibility(I)V

    .line 171
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetListnerClickAble(IZ)V

    .line 173
    :cond_0
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnShutterButtonMove(Z)V

    .line 174
    return-void
.end method

.method public OnShutterButtonTimerShot(ZI)V
    .locals 3
    .parameter "value"
    .parameter "timer"

    .prologue
    const/16 v2, 0x1b

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetVisibility(I)V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetListnerClickAble(IZ)V

    .line 164
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnShutterButtonTimerShot(ZI)V

    .line 165
    return-void
.end method

.method public OnShutterTimerActionCanceled()V
    .locals 3

    .prologue
    const/16 v2, 0x1b

    .line 178
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetVisibility(I)V

    .line 179
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetListnerClickAble(IZ)V

    .line 180
    invoke-super {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnShutterTimerActionCanceled()V

    .line 181
    return-void
.end method

.method public OnTimerShotCancel(Z)V
    .locals 3
    .parameter "forced"

    .prologue
    const/16 v2, 0x1b

    .line 185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetVisibility(I)V

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetListnerClickAble(IZ)V

    .line 189
    :cond_0
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnTimerShotCancel(Z)V

    .line 190
    return-void
.end method

.method public OnTimerShotEnd()V
    .locals 3

    .prologue
    const/16 v2, 0x1b

    .line 149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetVisibility(I)V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetListnerClickAble(IZ)V

    .line 153
    :cond_0
    invoke-super {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnTimerShotEnd()V

    .line 154
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_InitLocalLayout()V

    .line 113
    return-void
.end method

.method protected _InitLayout()V
    .locals 2

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_InitLocalLayout()V

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_MenuContainerStart()V

    .line 81
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_FocusContainerStart()V

    .line 82
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetLayoutVisible(II)V

    .line 84
    return-void
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/pantech/app/vegacamera/R$array;->text_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjTextContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ID_MAIN_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ID_SUB_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ID_THUMBNAIL_FRAME:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ID_INFORMATION_AREA:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v4, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetLayoutVisible(II)V

    .line 62
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 98
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 99
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 100
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 101
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 103
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjTextContainer:Ljava/lang/Object;

    .line 104
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 105
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 106
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 107
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 108
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ID_LAYOUT_PHOTO_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 32
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/TextContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjTextContainer:Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 37
    return-void

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _LongPressedCapture(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 117
    if-eqz p1, :cond_0

    .line 118
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_FocusContainerFocusStart(I)V

    .line 119
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_ShutterButtonClick()V

    .line 121
    :cond_0
    return-void
.end method

.method protected _ShutterButtonClick()V
    .locals 4

    .prologue
    const/16 v3, 0x1b

    const/16 v2, 0x13

    .line 194
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_IsTimerShotEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->AvailableTimerShot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TextContainer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TextContainer;->SetVisibility(I)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, v3, v0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_SetListnerClickAble(IZ)V

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->_ShutterButtonClick()V

    .line 202
    return-void
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_MenuContainerStop()V

    .line 89
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_FocusContainerStopFaceDetect()V

    .line 90
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_FocusContainerFocusReleased()V

    .line 91
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_StopVoiceRecognizer()V

    .line 92
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/TextLayoutControl;->_TimerShotStop()V

    .line 93
    return-void
.end method
