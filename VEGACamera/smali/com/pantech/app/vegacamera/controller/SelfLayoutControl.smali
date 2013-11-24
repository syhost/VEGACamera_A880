.class public Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "SelfLayoutControl.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 18
    return-void
.end method

.method private _InitLocalLayout()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_ControlBarInit()V

    .line 63
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_InformationAreaInit()V

    .line 64
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SelfShutterButtonInit()V

    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_StartVoiceRecognizer()V

    .line 66
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_TimerShotInit()V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_BackTouchInit()V

    .line 68
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_GridLayoutInit()V

    .line 69
    return-void
.end method

.method private _SetVisibleTutorial(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ID_SELF_TUTORIAL:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, _vTutorial:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 162
    if-eqz p1, :cond_1

    .line 163
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private _SnapShelShot()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x13

    const/4 v3, 0x4

    .line 127
    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetShutterLayoutEnabble(Z)V

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$raw;->selftimer_4_490:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SoundPlay(Landroid/app/Activity;ILandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->AvailableTimerShot()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->IsShutterTimerActionStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    .line 135
    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusData(II)V

    .line 137
    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_FocusContainerFocusStart(I)V

    .line 140
    invoke-virtual {p0, v6, v3}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 141
    invoke-virtual {p0, v7, v3}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 142
    invoke-virtual {p0, v4, v5}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 143
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetVisibleTutorial(Z)V

    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->Start()Z

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {p0, v6, v3}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 151
    const/16 v0, 0x11

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 152
    invoke-virtual {p0, v7, v3}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x2

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusData(II)V

    .line 156
    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_FocusContainerFocusStart(I)V

    goto :goto_0
.end method


# virtual methods
.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 220
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_ActionVR(I)V

    .line 222
    return-void
.end method

.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjSelfShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ID_SELF_SHUTTER:I

    if-ne v0, v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SnapShelShot()V

    goto :goto_0
.end method

.method public OnShutterButtonLongPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 173
    return-void
.end method

.method public OnTimerShotCancel(Z)V
    .locals 4
    .parameter "forced"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 206
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 216
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_TimerShotClearIcon()V

    .line 210
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 211
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v3}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 212
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetVisibleTutorial(Z)V

    .line 213
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetShutterLayoutEnabble(Z)V

    .line 215
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto :goto_0
.end method

.method public OnTimerShotEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 194
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_TimerShotClearIcon()V

    .line 196
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_CaptureOper()V

    .line 197
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_MenuContainerShow()V

    .line 198
    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 199
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v2}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetLayoutVisible(II)V

    .line 200
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetVisibleTutorial(Z)V

    .line 201
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 202
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_InitLocalLayout()V

    .line 114
    return-void
.end method

.method protected _CaptureCount()I
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$integer;->self_number_of_images:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public _CaptureOper()V
    .locals 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->iOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_CaptureCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/IOperInterface;->SetOperHandler(II)V

    .line 190
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_InitLocalLayout()V

    .line 75
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_MenuContainerStart()V

    .line 76
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_FocusContainerStart()V

    .line 77
    return-void
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/pantech/app/vegacamera/R$array;->self_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjSelfShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ID_SELF_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ID_THUMBNAIL_FRAME:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ID_INFORMATION_AREA:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 103
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 104
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 105
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjSelfShutter:Ljava/lang/Object;

    .line 106
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 107
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 108
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 29
    new-instance v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 31
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ID_LAYOUT_SELF_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjSelfShutter:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/TimerShot;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjTimerShot:Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 37
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->GetRotateControlInstance()Lcom/pantech/app/vegacamera/controller/RotateControl;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ID_SELF_TUTORIAL:I

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 38
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public _SetShutterLayoutEnabble(Z)V
    .locals 2
    .parameter "b"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjSelfShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 91
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_MenuContainerShow()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_MenuContainerClear()V

    goto :goto_0
.end method

.method protected _ShutterButtonClick()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->ObjSelfShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SnapShelShot()V

    goto :goto_0
.end method

.method protected _StopLayout()V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_MenuContainerStop()V

    .line 82
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_FocusContainerStopFaceDetect()V

    .line 83
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_FocusContainerFocusReleased()V

    .line 84
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_StopVoiceRecognizer()V

    .line 85
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/SelfLayoutControl;->_SetShutterLayoutEnabble(Z)V

    .line 86
    return-void
.end method
