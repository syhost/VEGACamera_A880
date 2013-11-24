.class public Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "VideoLayoutControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoLayoutControl"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 76
    return-void
.end method

.method private _InitLocalLayout()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_ControlBarInit()V

    .line 122
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_InformationAreaInit()V

    .line 123
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_VideoShutterButtonInit()V

    .line 124
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_StartVoiceRecognizer()V

    .line 125
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_TimerShotInit()V

    .line 126
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_ZoomButtonInit()V

    .line 127
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_TimeLapseModeCtlInit()V

    .line 128
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_BackTouchInit()V

    .line 129
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_GridLayoutInit()V

    .line 130
    return-void
.end method


# virtual methods
.method public OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 45
    const-string v2, "VideoLayoutControl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnKeyDown keyCode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 71
    :goto_0
    return v0

    .line 49
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 53
    goto :goto_0

    :sswitch_1
    move v0, v1

    .line 56
    goto :goto_0

    .line 67
    :sswitch_2
    const-string v0, "VideoLayoutControl"

    const-string v2, "[OnKeyDown] skip music play key during Camera"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 68
    goto :goto_0

    .line 49
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_2
        0x55 -> :sswitch_2
        0x57 -> :sswitch_2
        0x58 -> :sswitch_2
        0x59 -> :sswitch_2
        0x5a -> :sswitch_2
        0x7e -> :sswitch_2
        0x7f -> :sswitch_2
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    :goto_0
    return v0

    .line 22
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    .line 26
    goto :goto_0

    .line 36
    :sswitch_1
    const-string v0, "VideoLayoutControl"

    const-string v2, "[OnKeyUp] skip music play key during Camera"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 37
    goto :goto_0

    .line 22
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 222
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_ActionVR(I)V

    .line 224
    return-void
.end method

.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ID_VIDEO_SHUTTER:I

    if-ne v0, v1, :cond_0

    .line 170
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->ShowDisableToast()V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->CheckTelephonyState(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_ClearLayoutAll()V

    .line 181
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_MenuContainerClear()V

    .line 182
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->Stop()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mModuleRootView:Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_VideoRecordStartOper()V

    goto :goto_0
.end method

.method public OnShutterButtonLongPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 196
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_InitLocalLayout()V

    .line 165
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_InitLocalLayout()V

    .line 136
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_MenuContainerStart()V

    .line 137
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_FocusContainerStart()V

    .line 138
    return-void
.end method

.method protected _IsTimerShotEnable()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/pantech/app/vegacamera/R$array;->video_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjVideoShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ID_VIDEO_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ID_THUMBNAIL_FRAME:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ID_INFORMATION_AREA:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 151
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjVideoShutter:Ljava/lang/Object;

    .line 152
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 153
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 154
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 155
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 156
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    .line 157
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 158
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 159
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 160
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ID_LAYOUT_VIDEO_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjVideoShutter:Ljava/lang/Object;

    .line 88
    new-instance v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 89
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 90
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 93
    new-instance v0, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/TimelapseContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjTimelapseContainer:Ljava/lang/Object;

    .line 94
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 96
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _SharedCaptureOper()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 202
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->ShowDisableToast()V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->CheckTelephonyState(Landroid/app/Activity;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x80

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    goto :goto_0

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_ClearLayoutAll()V

    .line 213
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_MenuContainerClear()V

    .line 214
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->Stop()V

    .line 215
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->mModuleRootView:Landroid/view/View;

    .line 216
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_VideoRecordStartOper()V

    goto :goto_0
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_MenuContainerStop()V

    .line 143
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_FocusContainerStopFaceDetect()V

    .line 144
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_FocusContainerFocusReleased()V

    .line 145
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;->_StopVoiceRecognizer()V

    .line 146
    return-void
.end method
