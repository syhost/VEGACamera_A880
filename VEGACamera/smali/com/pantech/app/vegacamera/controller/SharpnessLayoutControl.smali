.class public Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;
.super Lcom/pantech/app/vegacamera/controller/LayoutControl;
.source "SharpnessLayoutControl.java"


# instance fields
.field protected ObjSharpnessCtlBar:Ljava/lang/Object;

.field protected Sky_ctrl_drv:Lcom/pantech/test/Sky_ctrl_drv;

.field mText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 1
    .parameter "act"

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 13
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->ObjSharpnessCtlBar:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mText:Landroid/widget/TextView;

    .line 19
    return-void
.end method

.method private _InitLocalLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x1d

    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->InitializeZoom()V

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->SetVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl$1;-><init>(Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->SetOnZoomChangeListener(Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;)V

    .line 78
    return-void
.end method


# virtual methods
.method public OnShutterButtonClick(Lcom/pantech/app/vegacamera/controller/ShutterButton;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 103
    return-void
.end method

.method public OnShutterButtonLongPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 108
    return-void
.end method

.method protected _ActInitLocalLayout()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected _InitLayout()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->_InitLocalLayout()V

    .line 83
    return-void
.end method

.method protected _IsTimerShotEnable()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method protected _LayoutArray()I
    .locals 1

    .prologue
    .line 24
    sget v0, Lcom/pantech/app/vegacamera/R$array;->sharpness_layout_control:I

    return v0
.end method

.method protected _LayoutControlStart()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mMapBuy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mMapBuy:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->ObjSharpnessCtlBar:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    return-void
.end method

.method protected _LayoutObjFree()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->ObjSmartCoverShutter:Ljava/lang/Object;

    .line 93
    return-void
.end method

.method protected _LayoutObjInit()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;-><init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->ObjSharpnessCtlBar:Ljava/lang/Object;

    .line 30
    new-instance v0, Lcom/pantech/test/Sky_ctrl_drv;

    invoke-direct {v0}, Lcom/pantech/test/Sky_ctrl_drv;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->Sky_ctrl_drv:Lcom/pantech/test/Sky_ctrl_drv;

    .line 31
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->count_view:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mText:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mText:Landroid/widget/TextView;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mText:Landroid/widget/TextView;

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 35
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->mText:Landroid/widget/TextView;

    const-string v1, "32"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessLayoutControl;->Sky_ctrl_drv:Lcom/pantech/test/Sky_ctrl_drv;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/pantech/test/Sky_ctrl_drv;->Sky_Ctrl_Set_Sharpness(I)I

    .line 37
    return-void
.end method

.method protected _SetListnerClickAble(IZ)V
    .locals 0
    .parameter "state"
    .parameter "id"

    .prologue
    .line 118
    return-void
.end method

.method protected _StopLayout()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method
