.class public Lcom/pantech/app/vegacamera/ui/CEControlBar;
.super Landroid/widget/RelativeLayout;
.source "CEControlBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CEControlBar"


# instance fields
.field private iCEIndex:I

.field private iCEMax:I

.field private iSliderHeight:I

.field private iSliderLength:I

.field private iSliderPosition:I

.field private iVGHeight:I

.field private iVGWidth:I

.field private mBar:Landroid/view/View;

.field private mCESlider:Landroid/widget/ImageView;

.field private mListener:Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderPosition:I

    .line 17
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderLength:I

    .line 18
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderHeight:I

    .line 19
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iVGWidth:I

    .line 20
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iVGHeight:I

    .line 21
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEMax:I

    .line 22
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEIndex:I

    .line 24
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    .line 25
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    .line 39
    return-void
.end method

.method private _AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 2
    .parameter "context"
    .parameter "iconResourceId"

    .prologue
    .line 182
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 183
    .local v0, image:Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->addView(Landroid/view/View;)V

    .line 186
    return-object v0
.end method

.method private _ChangeCEIndex(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;

    if-eqz v0, :cond_2

    .line 223
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEMax:I

    if-le p1, v0, :cond_0

    .line 224
    iget p1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEMax:I

    .line 226
    :cond_0
    if-gez p1, :cond_1

    .line 227
    const/4 p1, 0x0

    .line 229
    :cond_1
    const-string v0, "CEControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CEControlBar] [CE] ChangeCEIndex() : index : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;->onColorValueChanged(I)V

    .line 231
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEIndex:I

    .line 233
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private _CloseCEControl()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 207
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 209
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 211
    :cond_0
    return-void
.end method

.method private _GetSliderPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 190
    iget v3, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderHeight:I

    div-int/lit8 v2, v3, 0x2

    .line 191
    .local v2, startPos:I
    iget v3, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iVGHeight:I

    iget v4, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 195
    .local v0, endPos:I
    iget v3, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iVGHeight:I

    sub-int v1, v3, p2

    .line 197
    .local v1, pos:I
    if-ge v1, v2, :cond_0

    .line 198
    move v1, v2

    .line 200
    :cond_0
    if-le v1, v0, :cond_1

    .line 201
    move v1, v0

    .line 203
    :cond_1
    return v1
.end method

.method private _PerformCEIndex(D)V
    .locals 3
    .parameter "percentage"

    .prologue
    .line 214
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEMax:I

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v0, v1

    .line 215
    .local v0, index:I
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEIndex:I

    if-ne v1, v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->_ChangeCEIndex(I)Z

    goto :goto_0
.end method


# virtual methods
.method public GetCEIndex()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEIndex:I

    return v0
.end method

.method public Initialize(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->removeAllViews()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_pallet_blue:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->addView(Landroid/view/View;)V

    .line 61
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_color_point_controller_nor:I

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->_AddImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    .line 62
    return-void
.end method

.method public SetBarBackground(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 68
    :cond_0
    return-void
.end method

.method public SetCEIndex(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 77
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEMax:I

    if-le p1, v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "CEControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CEControlBar] [CE] SetCEIndex() : is not invalid ce value = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_1
    const-string v0, "CEControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CEControlBar] [CE] SetCEIndex() : index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEIndex:I

    .line 82
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->invalidate()V

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderPosition:I

    .line 85
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->requestLayout()V

    .line 86
    return-void
.end method

.method public SetCEMax(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 71
    const-string v0, "CEControlBar"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CEControlBar] [CE] SetCEMax() : max : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEMax:I

    .line 73
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->requestLayout()V

    .line 74
    return-void
.end method

.method public SetOnColorChangeListener(Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;

    .line 43
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iVGWidth:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iVGHeight:I

    if-nez v4, :cond_1

    :cond_0
    move v2, v3

    .line 145
    :goto_0
    return v2

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 116
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->setActivated(Z)V

    .line 129
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;

    if-eqz v3, :cond_2

    .line 130
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;

    invoke-interface {v3, v2}, Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;->onColorBarTouchEvent(Z)V

    .line 133
    :cond_2
    :pswitch_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    if-eqz v3, :cond_3

    .line 134
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 135
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 137
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->_GetSliderPosition(II)I

    move-result v1

    .line 138
    .local v1, pos:I
    const-string v3, "CEControlBar"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CEControlBar] [CE] dispatchTouchEvent() : pos : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget v3, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderPosition:I

    if-eq v3, v1, :cond_4

    .line 140
    const-wide/high16 v3, 0x3ff0

    int-to-double v5, v1

    mul-double/2addr v3, v5

    iget v5, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderLength:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->_PerformCEIndex(D)V

    .line 141
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderPosition:I

    .line 143
    :cond_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->requestLayout()V

    goto :goto_0

    .line 120
    .end local v1           #pos:I
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->setActivated(Z)V

    .line 121
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;

    if-eqz v4, :cond_5

    .line 122
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mListener:Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;

    invoke-interface {v4, v3}, Lcom/pantech/app/vegacamera/ui/CEControlBar$OnColorChangedListener;->onColorBarTouchEvent(Z)V

    .line 124
    :cond_5
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/CEControlBar;->_CloseCEControl()V

    goto :goto_0

    .line 116
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
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 150
    iget-object v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    if-nez v8, :cond_1

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    sub-int v7, p4, p2

    .line 155
    .local v7, width:I
    sub-int v2, p5, p3

    .line 157
    .local v2, height:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    iput v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderHeight:I

    .line 158
    iget v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iVGHeight:I

    iget v9, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderLength:I

    .line 160
    const/4 v5, 0x0

    .line 161
    .local v5, sx:I
    move v0, v7

    .line 162
    .local v0, ex:I
    const/4 v6, 0x0

    .line 163
    .local v6, sy:I
    move v1, v2

    .line 165
    .local v1, ey:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v8, v5, v6, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 170
    iget v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    .line 171
    iget v4, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderPosition:I

    .line 176
    .local v4, sliderPosition:I
    :goto_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    sub-int v3, v8, v4

    .line 178
    .local v3, pos:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mCESlider:Landroid/widget/ImageView;

    const/4 v9, 0x0

    iget v10, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderHeight:I

    div-int/lit8 v10, v10, 0x2

    sub-int v10, v3, v10

    iget v11, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderHeight:I

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v3

    invoke-virtual {v8, v9, v10, v7, v11}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_0

    .line 173
    .end local v3           #pos:I
    .end local v4           #sliderPosition:I
    :cond_2
    iget v8, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iSliderLength:I

    int-to-double v8, v8

    iget v10, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEIndex:I

    int-to-double v10, v10

    mul-double/2addr v8, v10

    iget v10, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iCEMax:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    double-to-int v4, v8

    .restart local v4       #sliderPosition:I
    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 104
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iVGWidth:I

    .line 105
    iput p2, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->iVGHeight:I

    .line 106
    return-void
.end method

.method public setActivated(Z)V
    .locals 1
    .parameter "activated"

    .prologue
    .line 94
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/CEControlBar;->mBar:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 98
    :cond_0
    return-void
.end method
