.class public Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
.super Landroid/view/animation/Animation;
.source "ShutterRotateAnimation.java"


# instance fields
.field private currentDegree:F

.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXType:I

    .line 11
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYType:I

    .line 12
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXValue:F

    .line 13
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYValue:F

    .line 35
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mFromDegrees:F

    .line 36
    iput p2, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mToDegrees:F

    .line 37
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotX:F

    .line 38
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotY:F

    .line 39
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotX"
    .parameter "pivotY"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXType:I

    .line 11
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYType:I

    .line 12
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXValue:F

    .line 13
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYValue:F

    .line 56
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mFromDegrees:F

    .line 57
    iput p2, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mToDegrees:F

    .line 59
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXType:I

    .line 60
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYType:I

    .line 61
    iput p3, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXValue:F

    .line 62
    iput p4, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYValue:F

    .line 63
    return-void
.end method

.method public constructor <init>(FFIFIF)V
    .locals 2
    .parameter "fromDegrees"
    .parameter "toDegrees"
    .parameter "pivotXType"
    .parameter "pivotXValue"
    .parameter "pivotYType"
    .parameter "pivotYValue"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 10
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXType:I

    .line 11
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYType:I

    .line 12
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXValue:F

    .line 13
    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYValue:F

    .line 89
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mFromDegrees:F

    .line 90
    iput p2, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mToDegrees:F

    .line 92
    iput p4, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXValue:F

    .line 93
    iput p3, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXType:I

    .line 94
    iput p6, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYValue:F

    .line 95
    iput p5, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYType:I

    .line 96
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    const/4 v4, 0x0

    .line 101
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mFromDegrees:F

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mToDegrees:F

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mFromDegrees:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->currentDegree:F

    .line 102
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->getScaleFactor()F

    move-result v0

    .line 104
    .local v0, scale:F
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotX:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotY:F

    cmpl-float v1, v1, v4

    if-nez v1, :cond_0

    .line 106
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->currentDegree:F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->currentDegree:F

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotX:F

    mul-float/2addr v3, v0

    iget v4, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotY:F

    mul-float/2addr v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0
.end method

.method public getCurrentDegree()F
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->currentDegree:F

    return v0
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 116
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXType:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotX:F

    .line 117
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYType:I

    iget v1, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->mPivotY:F

    .line 118
    return-void
.end method
