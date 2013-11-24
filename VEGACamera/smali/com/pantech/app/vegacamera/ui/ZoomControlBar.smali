.class public Lcom/pantech/app/vegacamera/ui/ZoomControlBar;
.super Landroid/widget/RelativeLayout;
.source "ZoomControlBar.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomControlBar"

.field private static final ZOOMING_INTERVAL:I = 0x3e8

.field public static final ZOOM_IN:I = 0x0

.field public static final ZOOM_OUT:I = 0x1

.field public static final ZOOM_STOP:I = 0x2


# instance fields
.field private final ICON_SPACING:I

.field private bSmoothZoomSupported:Z

.field private iHeight:I

.field private iIconWidth:I

.field private iSliderLength:I

.field private iSliderPosition:I

.field private iState:I

.field private iStep:I

.field private iTotalIconWidth:I

.field private iWidth:I

.field private iZoomIndex:I

.field private iZoomMax:I

.field private ivZoomIn:Landroid/widget/ImageView;

.field private ivZoomOut:Landroid/widget/ImageView;

.field private ivZoomSlider:Landroid/widget/ImageView;

.field private mBar:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

.field private final mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->zoom_control_bar_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ICON_SPACING:I

    .line 26
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->bSmoothZoomSupported:Z

    .line 28
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderPosition:I

    .line 29
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderLength:I

    .line 30
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iWidth:I

    .line 31
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iHeight:I

    .line 32
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iIconWidth:I

    .line 33
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iTotalIconWidth:I

    .line 34
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iState:I

    .line 35
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iStep:I

    .line 36
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    .line 37
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    .line 39
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    .line 41
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomIn:Landroid/widget/ImageView;

    .line 42
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomOut:Landroid/widget/ImageView;

    .line 43
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    .line 45
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    .line 49
    new-instance v0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$1;-><init>(Lcom/pantech/app/vegacamera/ui/ZoomControlBar;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mRunnable:Ljava/lang/Runnable;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method private PerformZoom(D)V
    .locals 3
    .parameter "zoomPercentage"

    .prologue
    .line 312
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 313
    .local v0, index:I
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    if-ne v1, v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_ChangeZoomIndex(I)Z

    goto :goto_0
.end method

.method private _AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 2
    .parameter "context"
    .parameter "res"

    .prologue
    .line 241
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 244
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->addView(Landroid/view/View;)V

    .line 245
    return-object v0
.end method

.method private _ChangeZoomIndex(I)Z
    .locals 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 320
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    if-eqz v2, :cond_2

    .line 321
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->bSmoothZoomSupported:Z

    if-eqz v2, :cond_4

    .line 322
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    if-ge p1, v2, :cond_3

    move v0, v1

    .line 323
    .local v0, zoomType:I
    :goto_0
    if-nez v0, :cond_0

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    if-ne v2, v3, :cond_1

    :cond_0
    if-ne v0, v1, :cond_2

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    if-eqz v2, :cond_2

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    if-eqz v2, :cond_2

    .line 325
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    invoke-interface {v2, v0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;->OnZoomStateChanged(I)V

    .line 341
    .end local v0           #zoomType:I
    :cond_2
    :goto_1
    return v1

    .line 322
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_4
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    if-le p1, v2, :cond_5

    .line 330
    iget p1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    .line 332
    :cond_5
    if-gez p1, :cond_6

    .line 333
    const/4 p1, 0x0

    .line 335
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    if-eqz v2, :cond_7

    .line 336
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    invoke-interface {v2, p1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;->OnZoomValueChanged(I)V

    .line 338
    :cond_7
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    goto :goto_1
.end method

.method private _GetSliderPosition(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 255
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iTotalIconWidth:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p1

    .line 257
    .local v0, pos:I
    if-gez v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 260
    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderLength:I

    if-le v0, v1, :cond_1

    .line 261
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderLength:I

    .line 263
    :cond_1
    return v0
.end method

.method private _PerformZoom(IZ)V
    .locals 4
    .parameter "state"
    .parameter "fromUser"

    .prologue
    .line 283
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iState:I

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    if-eqz p2, :cond_2

    .line 286
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 288
    :cond_2
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iState:I

    .line 289
    packed-switch p1, :pswitch_data_0

    .line 303
    :goto_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->bSmoothZoomSupported:Z

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mRunnable:Ljava/lang/Runnable;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 291
    :pswitch_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_ZoomIn()Z

    goto :goto_1

    .line 295
    :pswitch_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_ZoomOut()Z

    goto :goto_1

    .line 299
    :pswitch_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_StopZooming()V

    goto :goto_1

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private _StopZooming()V
    .locals 2

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->bSmoothZoomSupported:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;->OnZoomStateChanged(I)V

    .line 280
    :cond_0
    return-void
.end method

.method private _ZoomIn()Z
    .locals 2

    .prologue
    .line 267
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iStep:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_ChangeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method

.method private _ZoomOut()Z
    .locals 2

    .prologue
    .line 271
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iStep:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_ChangeZoomIndex(I)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/ui/ZoomControlBar;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iState:I

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/ui/ZoomControlBar;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_PerformZoom(IZ)V

    return-void
.end method


# virtual methods
.method public CloseZoomControl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_StopZooming()V

    .line 96
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->bSmoothZoomSupported:Z

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 99
    :cond_1
    return-void
.end method

.method public Initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    const-string v0, "ZoomControlBar"

    const-string v1, "[ZoomControlBar] Initialize()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->removeAllViews()V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_zoom_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 83
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->addView(Landroid/view/View;)V

    .line 85
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_icon_zoomin:I

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomIn:Landroid/widget/ImageView;

    .line 86
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->seekbar_thumb:I

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    .line 87
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_icon_zoomout:I

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomOut:Landroid/widget/ImageView;

    .line 88
    return-void
.end method

.method public SetOnZoomChangeListener(Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    .line 110
    return-void
.end method

.method public SetSmoothZoomSupported(Z)V
    .locals 0
    .parameter "smoothZoom"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->bSmoothZoomSupported:Z

    .line 114
    return-void
.end method

.method public SetZoomIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 228
    const-string v0, "ZoomControlBar"

    const-string v1, "[ZoomControlBar] setZoomIndex()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    if-le p1, v0, :cond_1

    .line 231
    :cond_0
    const-string v0, "ZoomControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ZoomControl] is not setparameter zoom :: invalid zoom value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    :cond_1
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    .line 234
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->invalidate()V

    .line 236
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderPosition:I

    .line 237
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->requestLayout()V

    .line 238
    return-void
.end method

.method public SetZoomMax(I)V
    .locals 0
    .parameter "zoomMax"

    .prologue
    .line 102
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    .line 105
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->requestLayout()V

    .line 106
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 152
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iWidth:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iHeight:I

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    .line 183
    :goto_0
    return v2

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 158
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 169
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->setActivated(Z)V

    .line 170
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    if-eqz v3, :cond_2

    .line 171
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    invoke-interface {v3, v2}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;->OnZoomBarTouchEvent(Z)V

    .line 174
    :cond_2
    :pswitch_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 175
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->_GetSliderPosition(II)I

    move-result v1

    .line 177
    .local v1, pos:I
    iget v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderPosition:I

    if-eq v3, v1, :cond_3

    .line 178
    const-wide/high16 v3, 0x3ff0

    int-to-double v5, v1

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderLength:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->PerformZoom(D)V

    .line 179
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderPosition:I

    .line 181
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->requestLayout()V

    goto :goto_0

    .line 162
    .end local v1           #pos:I
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->setActivated(Z)V

    .line 163
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    if-eqz v4, :cond_4

    .line 164
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;

    invoke-interface {v4, v3}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar$OnZoomChangedListener;->OnZoomBarTouchEvent(Z)V

    .line 166
    :cond_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->CloseZoomControl()V

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 199
    iget v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomIn:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomOut:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    if-nez v6, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    sub-int v1, p5, p3

    .line 204
    .local v1, height:I
    const/4 v5, 0x0

    .line 205
    .local v5, sy:I
    move v0, v1

    .line 207
    .local v0, ey:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    iget v7, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iTotalIconWidth:I

    iget v8, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iWidth:I

    iget v9, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iTotalIconWidth:I

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v5, v8, v0}, Landroid/view/View;->layout(IIII)V

    .line 213
    iget v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderPosition:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 214
    iget v3, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderPosition:I

    .line 219
    .local v3, sliderPosition:I
    :goto_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomIn:Landroid/widget/ImageView;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iIconWidth:I

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 220
    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomOut:Landroid/widget/ImageView;

    iget v7, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iWidth:I

    iget v8, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iIconWidth:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    iget v9, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iWidth:I

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 221
    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v2, v6, v3

    .line 223
    .local v2, pos:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    .line 224
    .local v4, sliderWidth:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomSlider:Landroid/widget/ImageView;

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v2, v7

    const/4 v8, 0x0

    div-int/lit8 v9, v4, 0x2

    add-int/2addr v9, v2

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 216
    .end local v2           #pos:I
    .end local v3           #sliderPosition:I
    .end local v4           #sliderWidth:I
    :cond_2
    iget v6, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderLength:I

    int-to-double v6, v6

    iget v8, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomIndex:I

    int-to-double v8, v8

    mul-double/2addr v6, v8

    iget v8, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iZoomMax:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v3, v6

    .restart local v3       #sliderPosition:I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 132
    const-string v0, "ZoomControlBar"

    const-string v1, "[ZoomControlBar] onSizeChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomIn:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 139
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iWidth:I

    .line 140
    iput p2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iHeight:I

    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iIconWidth:I

    .line 143
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iIconWidth:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ICON_SPACING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iTotalIconWidth:I

    .line 144
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iWidth:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iTotalIconWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderLength:I

    .line 145
    const-string v0, "ZoomControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ZoomControlBar] onSizeChanged() = iWidth("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v0, "ZoomControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ZoomControlBar] iIconWidth("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iIconWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), iTotalIconWidth("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iTotalIconWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "ZoomControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ZoomControlBar] iSliderLength("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->iSliderLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomIn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomOut:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->ivZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 128
    :cond_2
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->getChildCount()I

    move-result v0

    .line 189
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 195
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/ui/ZoomControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v3, :cond_1

    .line 192
    check-cast v2, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOrientation(I)V

    .line 189
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
