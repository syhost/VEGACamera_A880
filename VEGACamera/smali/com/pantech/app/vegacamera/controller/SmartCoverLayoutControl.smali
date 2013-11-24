.class public Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "SmartCoverLayoutControl.java"


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter "act"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 9
    return-void
.end method

.method private _InitLocalLayout()V
    .locals 0

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->_SmartCoverShutterButtonInit()V

    .line 36
    return-void
.end method


# virtual methods
.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 2
    .parameter "b"

    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->ID_SMARTCOVER_SHUTTER:I

    if-ne v0, v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->_CaptureOper()V

    .line 63
    :cond_0
    return-void
.end method

.method public OnShutterButtonLongPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 68
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->_InitLocalLayout()V

    .line 56
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->_InitLocalLayout()V

    .line 41
    return-void
.end method

.method protected _IsTimerShotEnable()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 14
    sget v0, Lcom/pantech/app/vegacamera/R$array;->smartcover_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->ObjSmartCoverShutter:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->ID_SMARTCOVER_SHUTTER:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->ObjSmartCoverShutter:Ljava/lang/Object;

    .line 51
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->ID_LAYOUT_SMARTCOVER_SHUTTER:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SmartCoverLayoutControl;->ObjSmartCoverShutter:Ljava/lang/Object;

    .line 20
    return-void
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
