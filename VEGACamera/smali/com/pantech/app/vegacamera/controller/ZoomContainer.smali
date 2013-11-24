.class public Lcom/pantech/app/vegacamera/controller/ZoomContainer;
.super Ljava/lang/Object;
.source "ZoomContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;,
        Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomContainer"

.field private static final ZOOM_START:I = 0x1

.field private static final ZOOM_STOPPED:I = 0x0

.field private static final ZOOM_STOPPING:I = 0x2


# instance fields
.field private bSmoothZoomSupported:Z

.field private bZoomBarTouched:Z

.field private iTargetZoomValue:I

.field private iZoomMax:I

.field private iZoomState:I

.field private lZoomControlBar:Landroid/widget/LinearLayout;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

.field private mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 2
    .parameter "layout"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 16
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    .line 17
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->lZoomControlBar:Landroid/widget/LinearLayout;

    .line 23
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->bSmoothZoomSupported:Z

    .line 24
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->bZoomBarTouched:Z

    .line 26
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I

    .line 27
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomMax:I

    .line 28
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iTargetZoomValue:I

    .line 43
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 44
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->_InitializelayoutCtl()V

    .line 45
    return-void
.end method

.method private _InitializelayoutCtl()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 66
    const-string v3, "ZoomContainer"

    const-string v4, "[ZoomControlBar] initializeZoomCtlLayout()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v2, 0x0

    .line 68
    .local v2, sizew:I
    const/4 v1, 0x0

    .line 70
    .local v1, sizeh:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$id;->zoom_control_bars:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->lZoomControlBar:Landroid/widget/LinearLayout;

    .line 71
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$id;->zoom_control_bar:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    .line 72
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->Initialize(Landroid/content/Context;)V

    .line 73
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->lZoomControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 75
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->zoom_control_area_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 76
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->zoom_control_area_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 78
    const-string v3, "ZoomContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ZoomControlBar] sizew = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", sizeh = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 81
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 82
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 84
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->zoom_control_bar_pos_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 86
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->lZoomControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method private _ZoomValueChanged(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 91
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const-string v0, "ZoomContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ZoomControlBar] sZoomValueChanged() :: index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->bSmoothZoomSupported:Z

    if-eqz v0, :cond_4

    .line 98
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iTargetZoomValue:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I

    if-eqz v0, :cond_2

    .line 99
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iTargetZoomValue:I

    .line 100
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I

    if-ne v0, v3, :cond_0

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;->OnStopSmoothZoom()V

    goto :goto_0

    .line 106
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I

    if-nez v0, :cond_0

    .line 107
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iTargetZoomValue:I

    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;->OnStartSmoothZoom(I)V

    .line 111
    :cond_3
    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I

    goto :goto_0

    .line 114
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;->SetZoomParammeter(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/ZoomContainer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->_ZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)Lcom/pantech/app/vegacamera/controller/LayoutControl;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomMax:I

    return v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/controller/ZoomContainer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iTargetZoomValue:I

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I

    return v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/controller/ZoomContainer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomState:I

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/controller/ZoomContainer;)Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/controller/ZoomContainer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->bZoomBarTouched:Z

    return-void
.end method


# virtual methods
.method public GetZoomBarPressed()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->bZoomBarTouched:Z

    return v0
.end method

.method public InitializeZoom()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomMax:I

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->iZoomMax:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetZoomMax(I)V

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetZoomIndex(I)V

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->bSmoothZoomSupported:Z

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetSmoothZoomSupported(Z)V

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;-><init>(Lcom/pantech/app/vegacamera/controller/ZoomContainer;Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetOnZoomChangeListener(Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;)V

    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GetRotateControlInstance()Lcom/pantech/app/vegacamera/controller/RotateControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    goto :goto_0
.end method

.method public Release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    .line 175
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    .line 176
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->lZoomControlBar:Landroid/widget/LinearLayout;

    .line 177
    return-void
.end method

.method public SetOnZoomChangeListener(Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mListner:Lcom/pantech/app/vegacamera/controller/ZoomContainer$ZoomListener;

    .line 40
    return-void
.end method

.method public SetVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->lZoomControlBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public SetZoomIndex(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->mZoomCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetZoomIndex(I)V

    .line 163
    return-void
.end method

.method public SetZoomIndexForRemocon(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ZoomContainer;->_ZoomValueChanged(I)V

    .line 167
    return-void
.end method
