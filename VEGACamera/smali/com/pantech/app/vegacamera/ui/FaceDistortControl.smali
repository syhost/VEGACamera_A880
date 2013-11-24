.class public Lcom/pantech/app/vegacamera/ui/FaceDistortControl;
.super Landroid/widget/RelativeLayout;
.source "FaceDistortControl.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/ui/FaceDistortControl$OnFaceChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceDistortControl"


# instance fields
.field private final ICON_SPACING:I

.field protected iFaceIndex:I

.field protected iFaceMax:I

.field private iHeight:I

.field private iIconHeight:I

.field private iSliderHeight:I

.field private iSliderLength:I

.field private iSliderPosition:I

.field private iTotalIconHeight:I

.field private iWidth:I

.field protected ivFaceIn:Landroid/widget/ImageView;

.field protected ivFaceOut:Landroid/widget/ImageView;

.field private mAppdata:Lcom/pantech/app/vegacamera/data/AppData;

.field private mBar:Landroid/view/View;

.field protected mFaceSlider:Landroid/widget/ImageView;

.field protected mListener:Lcom/pantech/app/vegacamera/ui/FaceDistortControl$OnFaceChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceMax:I

    .line 18
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceIndex:I

    .line 20
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->zoom_control_bar_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ICON_SPACING:I

    .line 22
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mAppdata:Lcom/pantech/app/vegacamera/data/AppData;

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderPosition:I

    .line 25
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderLength:I

    .line 26
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderHeight:I

    .line 27
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iWidth:I

    .line 28
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iHeight:I

    .line 29
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iIconHeight:I

    .line 30
    iput v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iTotalIconHeight:I

    .line 32
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    .line 33
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    .line 34
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceIn:Landroid/widget/ImageView;

    .line 35
    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceOut:Landroid/widget/ImageView;

    .line 47
    return-void
.end method

.method private _GetSliderPosition(II)I
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 158
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iHeight:I

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iTotalIconHeight:I

    sub-int/2addr v1, v2

    sub-int v0, v1, p2

    .line 160
    .local v0, pos:I
    if-gez v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 164
    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderLength:I

    if-le v0, v1, :cond_1

    .line 165
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderLength:I

    .line 168
    :cond_1
    return v0
.end method


# virtual methods
.method protected AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 2
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 107
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-direct {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->addView(Landroid/view/View;)V

    .line 111
    return-object v0
.end method

.method public ChangeFaceIndex(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mListener:Lcom/pantech/app/vegacamera/ui/FaceDistortControl$OnFaceChangedListener;

    if-eqz v0, :cond_2

    .line 137
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceMax:I

    if-le p1, v0, :cond_0

    .line 138
    iget p1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceMax:I

    .line 140
    :cond_0
    if-gez p1, :cond_1

    .line 141
    const/4 p1, 0x0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mAppdata:Lcom/pantech/app/vegacamera/data/AppData;

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceIndex:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setFaceEffectsIndex(I)I

    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mListener:Lcom/pantech/app/vegacamera/ui/FaceDistortControl$OnFaceChangedListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl$OnFaceChangedListener;->onFaceValueChanged(I)V

    .line 147
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceIndex:I

    .line 149
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public CloseFaceControl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 119
    :cond_0
    return-void
.end method

.method public Initialize(Landroid/content/Context;Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 2
    .parameter "context"
    .parameter "data"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->removeAllViews()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_zoom_bar_port:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 63
    :cond_2
    iput-object p2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mAppdata:Lcom/pantech/app/vegacamera/data/AppData;

    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->addView(Landroid/view/View;)V

    .line 67
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_icon_zoomin:I

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceIn:Landroid/widget/ImageView;

    .line 68
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->seekbar_thumb:I

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    .line 69
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_icon_zoomout:I

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceOut:Landroid/widget/ImageView;

    .line 70
    return-void
.end method

.method protected PerforivFaceIndex(D)V
    .locals 3
    .parameter "percentage"

    .prologue
    .line 126
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 128
    .local v0, index:I
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceMax:I

    if-ge v1, v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ChangeFaceIndex(I)Z

    goto :goto_0
.end method

.method public SetBarBackground(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public SetFaceIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 93
    const-string v0, "FaceDistortControl"

    const-string v1, "[FaceDistortControl] SetFaceIndex()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceMax:I

    if-le p1, v0, :cond_1

    .line 96
    :cond_0
    const-string v0, "FaceDistortControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FaceDistortControl] is not setparameter faceamount :: invalid face value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceIndex:I

    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->invalidate()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderPosition:I

    .line 103
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->requestLayout()V

    .line 104
    return-void
.end method

.method public SetFaceMax(I)V
    .locals 0
    .parameter "FaceMax"

    .prologue
    .line 79
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceMax:I

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->requestLayout()V

    .line 81
    return-void
.end method

.method public SetOnFaceChangeListener(Lcom/pantech/app/vegacamera/ui/FaceDistortControl$OnFaceChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 122
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mListener:Lcom/pantech/app/vegacamera/ui/FaceDistortControl$OnFaceChangedListener;

    .line 123
    return-void
.end method

.method public StartFaceControl(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 88
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceIndex:I

    .line 89
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->requestLayout()V

    .line 90
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 187
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iWidth:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iHeight:I

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    .line 215
    :goto_0
    return v2

    .line 189
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 191
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 200
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->setActivated(Z)V

    .line 203
    :pswitch_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    .line 204
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 205
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 207
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->_GetSliderPosition(II)I

    move-result v1

    .line 209
    .local v1, pos:I
    iget v3, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderPosition:I

    if-eq v3, v1, :cond_3

    .line 210
    const-wide/high16 v3, 0x3ff0

    int-to-double v5, v1

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderLength:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->PerforivFaceIndex(D)V

    .line 211
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderPosition:I

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->requestLayout()V

    goto :goto_0

    .line 195
    .end local v1           #pos:I
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->setActivated(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->CloseFaceControl()V

    goto :goto_0

    .line 191
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
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v8, 0x0

    .line 250
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceIn:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceOut:Landroid/widget/ImageView;

    if-nez v4, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    sub-int v3, p4, p2

    .line 257
    .local v3, width:I
    const/4 v2, 0x0

    .line 259
    .local v2, sx:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    iget v5, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iTotalIconHeight:I

    iget v6, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iHeight:I

    iget v7, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iTotalIconHeight:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v2, v5, v3, v6}, Landroid/view/View;->layout(IIII)V

    .line 264
    iget v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 265
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderPosition:I

    .line 270
    .local v1, sliderPosition:I
    :goto_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceIn:Landroid/widget/ImageView;

    iget v5, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iIconHeight:I

    invoke-virtual {v4, v8, v8, v3, v5}, Landroid/widget/ImageView;->layout(IIII)V

    .line 271
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceOut:Landroid/widget/ImageView;

    iget v5, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iHeight:I

    iget v6, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iIconHeight:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iHeight:I

    invoke-virtual {v4, v8, v5, v3, v6}, Landroid/widget/ImageView;->layout(IIII)V

    .line 272
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int v0, v4, v1

    .line 274
    .local v0, pos:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    iput v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderHeight:I

    .line 275
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mFaceSlider:Landroid/widget/ImageView;

    iget v5, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    iget v6, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v0

    invoke-virtual {v4, v8, v5, v3, v6}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 267
    .end local v0           #pos:I
    .end local v1           #sliderPosition:I
    :cond_2
    iget v4, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderLength:I

    int-to-double v4, v4

    iget v6, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceIndex:I

    int-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iFaceMax:I

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v1, v4

    .restart local v1       #sliderPosition:I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 220
    const-string v0, "FaceDistortControl"

    const-string v1, "[FaceDistortControl] onSizeChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceIn:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 225
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iWidth:I

    .line 226
    iput p2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iHeight:I

    .line 228
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceIn:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iIconHeight:I

    .line 229
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iIconHeight:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ICON_SPACING:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iTotalIconHeight:I

    .line 230
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iHeight:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iTotalIconHeight:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderLength:I

    .line 232
    const-string v0, "FaceDistortControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FaceDistortControl] onSizeChanged() = iWidth("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v0, "FaceDistortControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FaceDistortControl] iIconWidth("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iIconHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), iTotalIconWidth("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iTotalIconHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v0, "FaceDistortControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FaceDistortControl] iSliderLength("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->iSliderLength:I

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
    .line 173
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 174
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceIn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceOut:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->ivFaceIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 183
    :cond_2
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->getChildCount()I

    move-result v0

    .line 240
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 246
    return-void

    .line 241
    :cond_0
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/ui/FaceDistortControl;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 242
    .local v2, view:Landroid/view/View;
    instance-of v3, v2, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v3, :cond_1

    .line 243
    check-cast v2, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .end local v2           #view:Landroid/view/View;
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOrientation(I)V

    .line 240
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
