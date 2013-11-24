.class public Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "PanoramaLayoutControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PanoramaLayoutControl"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 21
    return-void
.end method

.method private _ChangeShutterButtonResource(Z)V
    .locals 4
    .parameter "capture"

    .prologue
    const/4 v3, 0x5

    .line 197
    if-eqz p1, :cond_1

    sget v0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->RESOURCE_PANORAMA_SHUTTER_CAPTURE:I

    .line 198
    .local v0, id:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ID_PANORAMA_SHUTTER:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ID_PANORAMA_SHUTTER:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    .line 200
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjPanoramaShutter:Ljava/lang/Object;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    return-void

    .line 197
    .end local v0           #id:I
    :cond_1
    sget v0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->RESOURCE_PANORAMA_SHUTTER_PREVIEW:I

    goto :goto_0
.end method

.method private _InitLocalLayout()V
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_ControlBarInit()V

    .line 63
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_InformationAreaInit()V

    .line 64
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_PanoramaShutterButtonInit()V

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_ChangeShutterButtonResource(Z)V

    .line 66
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_ZoomButtonInit()V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_StartVoiceRecognizer()V

    .line 68
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_BackTouchInit()V

    .line 69
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_GridLayoutInit()V

    .line 70
    return-void
.end method


# virtual methods
.method public OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 120
    sparse-switch p1, :sswitch_data_0

    .line 137
    const/4 v0, 0x0

    :goto_0
    :sswitch_0
    return v0

    .line 133
    :sswitch_1
    const-string v1, "PanoramaLayoutControl"

    const-string v2, "[OnKeyDown] skip music play key during Camera"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
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

.method public OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 142
    sparse-switch p1, :sswitch_data_0

    .line 188
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 147
    :sswitch_0
    const-string v0, "PanoramaLayoutControl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnKeyUp event.getSource() ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v0

    const/16 v2, 0x20

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v0

    if-nez v0, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_StartPanoramaCapture()V

    :cond_1
    :goto_1
    move v0, v1

    .line 158
    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_StopPanoramaCapture()V

    goto :goto_1

    .line 160
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->IsMenuContainerDepthAct()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    move v0, v1

    .line 161
    goto :goto_0

    .line 163
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjPhotoShutter:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v2, 0x1f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 164
    goto :goto_0

    .line 167
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_IsVTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 168
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->IsAvailableInteractionFuction()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_ShowVTouchToast()V

    .line 170
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_SharedCaptureOper()V

    :cond_6
    move v0, v1

    .line 174
    goto/16 :goto_0

    .line 184
    :sswitch_2
    const-string v0, "PanoramaLayoutControl"

    const-string v2, "[OnKeyUp] skip music play key during Camera"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 185
    goto/16 :goto_0

    .line 142
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

.method public OnResultVR(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 259
    const-string v0, "LocalVoiceRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResultVR  id = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_ActionVR(I)V

    .line 261
    return-void
.end method

.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 104
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ID_PANORAMA_SHUTTER:I

    if-ne v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 107
    :pswitch_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_StartPanoramaCapture()V

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_StopPanoramaCapture()V

    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public OnShutterButtonLongPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 194
    return-void
.end method

.method public SetPreviewLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_ChangeShutterButtonResource(Z)V

    .line 210
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_MenuContainerShow()V

    .line 211
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_MenuContainerStart()V

    .line 212
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_ZoomButtonInit()V

    .line 213
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_SetLayoutVisible(II)V

    .line 214
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_SetLayoutVisible(II)V

    .line 215
    return-void
.end method

.method public UnSetPreviewLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x1

    .line 219
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_ChangeShutterButtonResource(Z)V

    .line 220
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_MenuContainerStop()V

    .line 221
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_MenuContainerClear()V

    .line 222
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_ZoomButtonRelease()V

    .line 223
    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_SetLayoutVisible(II)V

    .line 224
    const/16 v0, 0xf

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_SetLayoutVisible(II)V

    .line 225
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_InitLocalLayout()V

    .line 100
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_InitLocalLayout()V

    .line 76
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_MenuContainerStart()V

    .line 77
    return-void
.end method

.method protected _IsTimerShotEnable()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/pantech/app/vegacamera/R$array;->panorama_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjControlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjPanoramaShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ID_PANORAMA_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ID_THUMBNAIL_FRAME:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ID_INFORMATION_AREA:I

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

    .line 87
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 88
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjPanoramaShutter:Ljava/lang/Object;

    .line 89
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 90
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 91
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 92
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 93
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 94
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 95
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ID_LAYOUT_CONTROL_BAR:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjControlBar:Ljava/lang/Object;

    .line 32
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ID_LAYOUT_PANORAMA_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjPanoramaShutter:Ljava/lang/Object;

    .line 33
    new-instance v0, Lcom/pantech/app/vegacamera/controller/InformationAreaController;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/InformationAreaController;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjInfomationArea:Ljava/lang/Object;

    .line 34
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 35
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjZoomCtlBar:Ljava/lang/Object;

    .line 36
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedVoiceRecognition()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/LocalVoiceRecognizer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjVoiceRecog:Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 39
    return-void

    .line 36
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _SharedCaptureOper()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 231
    :pswitch_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_StartPanoramaCapture()V

    goto :goto_0

    .line 235
    :pswitch_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_StopPanoramaCapture()V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected _ShowVTouchToast()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 255
    :goto_0
    return-void

    .line 245
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->v_touch_panorama_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 250
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->v_touch_panorama_end:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 243
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_MenuContainerStop()V

    .line 82
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;->_StopVoiceRecognizer()V

    .line 83
    return-void
.end method
