.class public Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "RecordLayoutControl.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 14
    return-void
.end method

.method private _InitLocalLayout()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_RecordStopShutterButtonInit()V

    .line 73
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_RecordInfoInit()V

    .line 74
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_RecordCaptureButtonInit()V

    .line 75
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_GridLayoutInit()V

    .line 76
    return-void
.end method


# virtual methods
.method protected IsFocusLensSound()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public OnMenuContainerOneDepthMenuAct(Z)V
    .locals 0
    .parameter "act"

    .prologue
    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_FocusContainerFocusReleased()V

    .line 20
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_ClearLayoutAll()V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_ActInitLocalLayout()V

    goto :goto_0
.end method

.method public OnOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ID_LAYOUT_RECORD_INFO_RECT:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 29
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->OnOrientationChanged(I)V

    .line 30
    return-void
.end method

.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ID_RECORD_STOP_SHUTTER:I

    if-ne v0, v1, :cond_1

    .line 127
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_VideoRecordStopOper()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ID_RECORD_CAPTURE:I

    if-ne v0, v1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_VideoRecordCaptureOper()V

    goto :goto_0
.end method

.method public OnShutterButtonLongPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 136
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_InitLocalLayout()V

    .line 122
    return-void
.end method

.method protected _ActOnBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->IsMenuContainerDepthAct()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_MenuContainerStop()V

    .line 116
    :goto_0
    return v0

    .line 112
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 113
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_VideoRecordCancelOper()V

    goto :goto_0

    .line 116
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_InitLocalLayout()V

    .line 81
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_FocusContainerStart()V

    .line 82
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_MenuContainerStart()V

    .line 83
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_MenuContainerDisableButtonSound()V

    .line 84
    return-void
.end method

.method public _IsVTouchEnabled()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;->IsAvailableVCapture()Z

    move-result v0

    .line 148
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/pantech/app/vegacamera/R$array;->record_layout_control:I

    return v0
.end method

.method protected _LayoutControlInit()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjRecordStopShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjGrid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjRecordInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ID_RECORD_STOP_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ID_RECORD_CAPTURE:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjRecordStopShutter:Ljava/lang/Object;

    .line 98
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 99
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 100
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjRecordInfo:Ljava/lang/Object;

    .line 101
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjRecordCapture:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 103
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ID_LAYOUT_RECORD_STOP_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjRecordStopShutter:Ljava/lang/Object;

    .line 46
    new-instance v0, Lcom/pantech/app/vegacamera/controller/MenuContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/MenuContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjMenuContainer:Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjFocusContainer:Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ID_LAYOUT_RECORD_INFO:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjRecordInfo:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/BackTouchContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjBackTouch:Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ID_RECORD_CAPTURE:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjRecordCapture:Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ID_GRID_VIEW:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->ObjGrid:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method protected _StopLayout()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 88
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_MenuContainerStop()V

    .line 89
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_MenuContainerClear()V

    .line 90
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_FocusContainerStopFaceDetect()V

    .line 91
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_FocusContainerFocusReleased()V

    .line 92
    invoke-virtual {p0, v0, v0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_SetLayoutVisible(II)V

    .line 93
    return-void
.end method
