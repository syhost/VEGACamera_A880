.class Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
.super Ljava/lang/Object;
.source "FlingScroller.java"


# static fields
.field private static final DECELERATED_FACTOR:I = 0x4

.field private static final FLING_DURATION_PARAM:F = 50.0f


# instance fields
.field private mCosAngle:D

.field private mCurrV:D

.field private mCurrX:I

.field private mCurrY:I

.field private mDistance:I

.field private mDuration:I

.field private mFinalX:I

.field private mFinalY:I

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mSinAngle:D

.field private mStartX:I

.field private mStartY:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getV(F)D
    .locals 6
    .parameter "progress"

    .prologue
    .line 133
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mDistance:I

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit16 v0, v0, 0x3e8

    int-to-double v0, v0

    const/high16 v2, 0x3f80

    sub-float/2addr v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4008

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mDuration:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getX(F)I
    .locals 9
    .parameter "f"

    .prologue
    const-wide/16 v7, 0x0

    .line 112
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mStartX:I

    int-to-double v1, v1

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-double v3, v3

    iget-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCosAngle:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 113
    .local v0, r:I
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCosAngle:D

    cmpl-double v1, v1, v7

    if-lez v1, :cond_1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mStartX:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMaxX:I

    if-gt v1, v2, :cond_1

    .line 114
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMaxX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCosAngle:D

    cmpg-double v1, v1, v7

    if-gez v1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mStartX:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMinX:I

    if-lt v1, v2, :cond_0

    .line 116
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMinX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method private getY(F)I
    .locals 9
    .parameter "f"

    .prologue
    const-wide/16 v7, 0x0

    .line 122
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mStartY:I

    int-to-double v1, v1

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mDistance:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    float-to-double v3, v3

    iget-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mSinAngle:D

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v0, v1

    .line 123
    .local v0, r:I
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mSinAngle:D

    cmpl-double v1, v1, v7

    if-lez v1, :cond_1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mStartY:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMaxY:I

    if-gt v1, v2, :cond_1

    .line 124
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMaxY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mSinAngle:D

    cmpg-double v1, v1, v7

    if-gez v1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mStartY:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMinY:I

    if-lt v1, v2, :cond_0

    .line 126
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMinY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public computeScrollOffset(F)V
    .locals 6
    .parameter "progress"

    .prologue
    const/high16 v5, 0x3f80

    .line 103
    invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 104
    sub-float v0, v5, p1

    .line 105
    .local v0, f:F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4010

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v0, v5, v1

    .line 106
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getX(F)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCurrX:I

    .line 107
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getY(F)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCurrY:I

    .line 108
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getV(F)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCurrV:D

    .line 109
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 9
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 75
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mStartX:I

    .line 76
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mStartY:I

    .line 77
    iput p5, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMinX:I

    .line 78
    move/from16 v0, p7

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMinY:I

    .line 79
    iput p6, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMaxX:I

    .line 80
    move/from16 v0, p8

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mMaxY:I

    .line 82
    int-to-double v3, p3

    int-to-double v5, p4

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    .line 83
    .local v1, velocity:D
    int-to-double v3, p4

    div-double/2addr v3, v1

    iput-wide v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mSinAngle:D

    .line 84
    int-to-double v3, p3

    div-double/2addr v3, v1

    iput-wide v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCosAngle:D

    .line 93
    const-wide/high16 v3, 0x4049

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3fd5555555555555L

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mDuration:I

    .line 96
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mDuration:I

    int-to-double v3, v3

    mul-double/2addr v3, v1

    const-wide/high16 v5, 0x4010

    div-double/2addr v3, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mDistance:I

    .line 98
    const/high16 v3, 0x3f80

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getX(F)I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mFinalX:I

    .line 99
    const/high16 v3, 0x3f80

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getY(F)I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mFinalY:I

    .line 100
    return-void
.end method

.method public getCurrVelocityX()I
    .locals 4

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCurrV:D

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCosAngle:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrVelocityY()I
    .locals 4

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCurrV:D

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mSinAngle:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrX()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCurrX:I

    return v0
.end method

.method public getCurrY()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mCurrY:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mDuration:I

    return v0
.end method

.method public getFinalX()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mFinalX:I

    return v0
.end method

.method public getFinalY()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->mFinalY:I

    return v0
.end method
