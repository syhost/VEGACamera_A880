.class public Lcom/pantech/app/vegacamera/aot/AOTLayout;
.super Landroid/widget/FrameLayout;
.source "AOTLayout.java"


# static fields
.field private static PREVIEW_MINIMUM_HEIGHT:F = 0.0f

.field private static PREVIEW_MINIMUM_WIDTH:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AOTLayout"


# instance fields
.field private mAspectRatio:D

.field private mContext:Landroid/content/Context;

.field private mGuidelineLayout:Landroid/widget/RelativeLayout;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private mMoveListener:Landroid/view/View$OnTouchListener;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaleMode:Z

.field private mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

.field private mTouchEnabled:Z

.field startx:F

.field starty:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x4316

    .line 22
    sput v0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->PREVIEW_MINIMUM_WIDTH:F

    .line 23
    sput v0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->PREVIEW_MINIMUM_HEIGHT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const-wide v0, 0x3ff599999999999aL

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    .line 29
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mTouchEnabled:Z

    .line 30
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mScaleMode:Z

    .line 38
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout$1;-><init>(Lcom/pantech/app/vegacamera/aot/AOTLayout;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 230
    iput v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->startx:F

    .line 231
    iput v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->starty:F

    .line 89
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/aot/AOTLayout;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    return-object v0
.end method

.method private isPotrait()Z
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getWindowOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getWindowOrientation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x0

    .line 172
    .local v0, Portrait:Z
    :goto_0
    return v0

    .line 169
    .end local v0           #Portrait:Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0       #Portrait:Z
    goto :goto_0
.end method


# virtual methods
.method public getScaleState()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mScaleMode:Z

    return v0
.end method

.method public getWindowOrientation()I
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 178
    const-string v0, "AOTLayout"

    const-string v1, "[AOTLayout] onConfigurationChanged "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "AOTLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTLayout] onConfigurationChanged :: newConfig.orientation : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 94
    const-string v0, "AOTLayout"

    const-string v1, "****************onFinishInflate()****************"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 96
    sget v0, Lcom/pantech/app/vegacamera/R$id;->mainLayout:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 97
    sget v0, Lcom/pantech/app/vegacamera/R$id;->guidelineLayout:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mGuidelineLayout:Landroid/widget/RelativeLayout;

    .line 98
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 99
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setAspectRatio(D)V

    .line 100
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v6, 0x4000

    const/4 v0, 0x0

    .line 238
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mTouchEnabled:Z

    if-nez v2, :cond_0

    .line 266
    :goto_0
    return v0

    .line 242
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 261
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMoveListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mScaleMode:Z

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMoveListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v0, v1

    .line 266
    goto :goto_0

    .line 244
    :pswitch_1
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mScaleMode:Z

    goto :goto_1

    .line 247
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->startx:F

    .line 248
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->starty:F

    goto :goto_1

    .line 251
    :pswitch_3
    iget v2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->startx:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    iget v4, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->starty:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x4120

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 252
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setVisibilityIcon(Z)V

    goto :goto_1

    .line 256
    :pswitch_4
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mScaleMode:Z

    .line 257
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setVisibilityIcon()V

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resizeLayout(FF)V
    .locals 11
    .parameter "deltaWidth"
    .parameter "deltaHeight"

    .prologue
    .line 183
    const-string v7, "AOTLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[AOTLayout]resizeLayout : mAspectRatio "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 186
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 187
    .local v5, width:I
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 189
    .local v0, height:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v7, v8

    .line 190
    .local v3, maxWidth:F
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v7, v8

    .line 192
    .local v2, maxHeight:F
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->isPotrait()Z

    move-result v7

    if-nez v7, :cond_4

    .line 193
    int-to-float v7, v5

    add-float/2addr v7, p1

    float-to-int v5, v7

    .line 194
    int-to-float v7, v5

    float-to-double v7, v7

    iget-wide v9, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    div-double/2addr v7, v9

    double-to-int v0, v7

    .line 195
    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    sget v8, Lcom/pantech/app/vegacamera/aot/AOTLayout;->PREVIEW_MINIMUM_HEIGHT:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    .line 196
    sget v7, Lcom/pantech/app/vegacamera/aot/AOTLayout;->PREVIEW_MINIMUM_HEIGHT:F

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 197
    int-to-float v7, v0

    float-to-double v7, v7

    iget-wide v9, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    mul-double/2addr v7, v9

    double-to-int v5, v7

    .line 199
    :cond_0
    int-to-float v7, v5

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_1

    .line 200
    float-to-int v5, v3

    .line 201
    int-to-float v7, v5

    float-to-double v7, v7

    iget-wide v9, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    div-double/2addr v7, v9

    double-to-int v0, v7

    .line 203
    :cond_1
    int-to-float v7, v0

    cmpl-float v7, v7, v2

    if-ltz v7, :cond_2

    .line 204
    float-to-int v0, v2

    .line 205
    int-to-float v7, v0

    float-to-double v7, v7

    iget-wide v9, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    mul-double/2addr v7, v9

    double-to-int v5, v7

    .line 220
    :cond_2
    :goto_0
    int-to-float v7, v5

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 221
    .local v6, width_density:I
    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    float-to-int v1, v7

    .line 223
    .local v1, height_density:I
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->isPotrait()Z

    move-result v7

    if-eqz v7, :cond_6

    sget v7, Lcom/pantech/app/vegacamera/aot/AOTLayout;->PREVIEW_MINIMUM_WIDTH:F

    int-to-float v8, v6

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    .line 224
    :goto_1
    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 225
    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 226
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    :cond_3
    return-void

    .line 208
    .end local v1           #height_density:I
    .end local v6           #width_density:I
    :cond_4
    int-to-float v7, v5

    add-float/2addr v7, p1

    float-to-int v5, v7

    .line 209
    int-to-float v7, v5

    float-to-double v7, v7

    iget-wide v9, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    mul-double/2addr v7, v9

    double-to-int v0, v7

    .line 210
    int-to-float v7, v5

    cmpl-float v7, v7, v3

    if-ltz v7, :cond_5

    .line 211
    float-to-int v5, v3

    .line 212
    int-to-float v7, v5

    float-to-double v7, v7

    iget-wide v9, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    mul-double/2addr v7, v9

    double-to-int v0, v7

    .line 214
    :cond_5
    int-to-float v7, v0

    cmpl-float v7, v7, v2

    if-ltz v7, :cond_2

    .line 215
    float-to-int v0, v2

    .line 216
    int-to-float v7, v0

    float-to-double v7, v7

    iget-wide v9, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    div-double/2addr v7, v9

    double-to-int v5, v7

    goto :goto_0

    .line 223
    .restart local v1       #height_density:I
    .restart local v6       #width_density:I
    :cond_6
    sget v7, Lcom/pantech/app/vegacamera/aot/AOTLayout;->PREVIEW_MINIMUM_HEIGHT:F

    int-to-float v8, v1

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    goto :goto_1
.end method

.method public setAspectRatio(D)V
    .locals 4
    .parameter "ratio"

    .prologue
    const/4 v3, 0x0

    .line 119
    const-string v0, "AOTLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTLayout]setAspectRatio :: orientation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getWindowOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mAspectRatio:D

    .line 134
    const-string v0, "AOTLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTLayout]setAspectRatio :: ratio :  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v3, v3}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->resizeLayout(FF)V

    .line 137
    return-void
.end method

.method public setMoveListner(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "moveListener"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMoveListener:Landroid/view/View$OnTouchListener;

    .line 104
    return-void
.end method

.method public setResizeListener(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;)V
    .locals 0
    .parameter "sizeListenr"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    .line 112
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mTouchEnabled:Z

    .line 116
    return-void
.end method

.method public setVisibilityIcon()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mGuidelineLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mGuidelineLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibilityIcon(Z)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 140
    if-nez p1, :cond_1

    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mGuidelineLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayout;->mGuidelineLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
