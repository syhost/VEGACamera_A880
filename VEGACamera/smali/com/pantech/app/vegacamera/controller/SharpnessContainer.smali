.class public Lcom/pantech/app/vegacamera/controller/SharpnessContainer;
.super Ljava/lang/Object;
.source "SharpnessContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;,
        Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;
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

.field private iZoomDefault:I

.field private iZoomMax:I

.field private iZoomState:I

.field private lSharpnesControlBars:Landroid/widget/LinearLayout;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

.field private mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 2
    .parameter "layout"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 16
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    .line 17
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->lSharpnesControlBars:Landroid/widget/LinearLayout;

    .line 23
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->bSmoothZoomSupported:Z

    .line 24
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->bZoomBarTouched:Z

    .line 26
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I

    .line 27
    const/16 v0, 0x1fe

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomMax:I

    .line 28
    const/16 v0, 0x23

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomDefault:I

    .line 29
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iTargetZoomValue:I

    .line 44
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 45
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->_InitializelayoutCtl()V

    .line 46
    return-void
.end method

.method private _InitializelayoutCtl()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 65
    const-string v3, "ZoomContainer"

    const-string v4, "[ZoomControlBar] initializeZoomCtlLayout()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, sizew:I
    const/4 v1, 0x0

    .line 69
    .local v1, sizeh:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$id;->sharpness_control_bars:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->lSharpnesControlBars:Landroid/widget/LinearLayout;

    .line 70
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$id;->sharpness_control_bar:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    .line 71
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->Initialize(Landroid/content/Context;)V

    .line 72
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->lSharpnesControlBars:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->zoom_control_area_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 75
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->zoom_control_area_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 77
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

    .line 79
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 80
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 81
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 82
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 83
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->zoom_control_bar_pos_margin:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 85
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->lSharpnesControlBars:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method

.method private _ZoomValueChanged(I)V
    .locals 4
    .parameter "index"

    .prologue
    const/4 v3, 0x1

    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 94
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

    .line 96
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->bSmoothZoomSupported:Z

    if-eqz v0, :cond_4

    .line 97
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iTargetZoomValue:I

    if-eq v0, p1, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I

    if-eqz v0, :cond_2

    .line 98
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iTargetZoomValue:I

    .line 99
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I

    if-ne v0, v3, :cond_0

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I

    .line 101
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;->OnStopSmoothZoom()V

    goto :goto_0

    .line 105
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I

    if-nez v0, :cond_0

    .line 106
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iTargetZoomValue:I

    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;->OnStartSmoothZoom(I)V

    .line 110
    :cond_3
    iput v3, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I

    goto :goto_0

    .line 113
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;->SetZoomParammeter(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->_ZoomValueChanged(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)Lcom/pantech/app/vegacamera/controller/LayoutControl;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomMax:I

    return v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iTargetZoomValue:I

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)I
    .locals 1
    .parameter

    .prologue
    .line 26
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I

    return v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomState:I

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;)Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->bZoomBarTouched:Z

    return-void
.end method


# virtual methods
.method public GetZoomBarPressed()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->bZoomBarTouched:Z

    return v0
.end method

.method public InitializeZoom()V
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomMax:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetZoomMax(I)V

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomMax:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->iZoomDefault:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetZoomIndex(I)V

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->bSmoothZoomSupported:Z

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetSmoothZoomSupported(Z)V

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;-><init>(Lcom/pantech/app/vegacamera/controller/SharpnessContainer;Lcom/pantech/app/vegacamera/controller/SharpnessContainer$ZoomChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetOnZoomChangeListener(Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;)V

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GetRotateControlInstance()Lcom/pantech/app/vegacamera/controller/RotateControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    goto :goto_0
.end method

.method public Release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    .line 174
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    .line 175
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->lSharpnesControlBars:Landroid/widget/LinearLayout;

    .line 176
    return-void
.end method

.method public SetOnZoomChangeListener(Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mListner:Lcom/pantech/app/vegacamera/controller/SharpnessContainer$SharpnessListener;

    .line 41
    return-void
.end method

.method public SetVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->lSharpnesControlBars:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    return-void
.end method

.method public SetZoomIndex(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->mSharpnesCtlBar:Lcom/pantech/app/vegacamera/ui/ZoomControlBar;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->SetZoomIndex(I)V

    .line 162
    return-void
.end method

.method public SetZoomIndexForRemocon(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/SharpnessContainer;->_ZoomValueChanged(I)V

    .line 166
    return-void
.end method
