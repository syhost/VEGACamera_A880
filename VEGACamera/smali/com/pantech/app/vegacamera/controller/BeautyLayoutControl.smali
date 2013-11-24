.class public Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "BeautyLayoutControl.java"


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
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_ControlBarInit()V

    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_PhotoShutterButtonInit()V

    .line 66
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_InformationAreaInit()V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_StartVoiceRecognizer()V

    .line 68
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_ZoomButtonInit()V

    .line 69
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_BackTouchInit()V

    .line 70
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_GridLayoutInit()V

    .line 71
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_TimerShotInit()V

    .line 72
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_SetLayoutVisible(II)V

    .line 73
    return-void
.end method


# virtual methods
.method public IsAvailableInteractionFuction()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->GetCurrentOnoffState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_INDICATOR_LOCAL_VOICE:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->IsMenuContainerDepthAct()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 165
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 166
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eq v1, v5, :cond_0

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-nez v1, :cond_2

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->IsMenuContainerDepthAct()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 174
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 176
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eq v1, v5, :cond_0

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public OnMenuContainerOneDepthMenuAct(Z)V
    .locals 2
    .parameter "act"

    .prologue
    const/4 v1, 0x2

    .line 130
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnMenuContainerOneDepthMenuAct(Z)V

    .line 131
    if-eqz p1, :cond_0

    .line 132
    const/4 v0, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_SetLayoutVisible(II)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_SetLayoutVisible(II)V

    goto :goto_0
.end method

.method public OnPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "device"

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnPreviewFrame([BLandroid/hardware/Camera;)V

    .line 147
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_SetLayoutVisible(II)V

    .line 149
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_StartVoiceRecognizer()V

    .line 151
    :cond_0
    return-void
.end method

.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 123
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_ActionVR(I)V

    .line 125
    return-void
.end method

.method public OnTimerShotCancel(Z)V
    .locals 2
    .parameter "forced"

    .prologue
    .line 140
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_SetLayoutVisible(II)V

    .line 141
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnTimerShotCancel(Z)V

    .line 142
    return-void
.end method

.method public SetBeautyPreviewDone()V
    .locals 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_SetLayoutVisible(II)V

    .line 157
    :cond_0
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_InitLocalLayout()V

    .line 109
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_InitLocalLayout()V

    .line 79
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_MenuContainerStart()V

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_FocusContainerStart()V

    .line 81
    return-void
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 21
    sget v0, Lcom/pantech/app/vegacamera/R$array;->beauty_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ID_MAIN_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ID_SUB_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ID_THUMBNAIL_FRAME:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ID_INFORMATION_AREA:I

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

    .line 94
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 95
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 96
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 97
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 98
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 99
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 100
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 101
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 103
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ID_LAYOUT_PHOTO_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    .line 28
    new-instance v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 36
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _LongPressedCapture(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 113
    if-eqz p1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_FocusContainerFocusStart(I)V

    .line 117
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_ShutterButtonClick()V

    .line 119
    :cond_1
    return-void
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_MenuContainerStop()V

    .line 86
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_FocusContainerStopFaceDetect()V

    .line 87
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_FocusContainerFocusReleased()V

    .line 88
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_StopVoiceRecognizer()V

    .line 89
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/BeautyLayoutControl;->_TimerShotStop()V

    .line 90
    return-void
.end method
