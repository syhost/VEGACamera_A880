.class public Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;
.super Ljava/lang/Object;
.source "CaptureAnimManager.java"


# static fields
.field private static final ANIM_BOTH:I = 0x0

.field private static final ANIM_FLASH:I = 0x1

.field private static final ANIM_SLIDE:I = 0x2

.field private static final CAPTURE_ANIM_DURATION:F = 700.0f

.field private static final GAP_RATIO:F = 0.1f

.field private static final TOTAL_RATIO:F = 1.1f


# instance fields
.field private mAnimOrientation:I

.field private mAnimStartTime:J

.field private mAnimType:I

.field private mCenterDelta:F

.field private mCenterX:F

.field private mCenterY:F

.field private mDrawHeight:I

.field private mDrawWidth:I

.field private mGap:F

.field private mHalfGap:F

.field private final mSlideInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    return-void
.end method


# virtual methods
.method public animateFlash()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimType:I

    .line 80
    return-void
.end method

.method public animateFlashAndSlide()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimType:I

    .line 84
    return-void
.end method

.method public animateSlide()V
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimType:I

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimStartTime:J

    goto :goto_0
.end method

.method public drawAnimation(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)Z
    .locals 17
    .parameter "canvas"
    .parameter "preview"
    .parameter "review"

    .prologue
    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimStartTime:J

    sub-long v15, v1, v5

    .line 128
    .local v15, timeDiff:J
    long-to-float v1, v15

    const/high16 v2, 0x442f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 129
    const/4 v1, 0x0

    .line 178
    :goto_0
    return v1

    .line 130
    :cond_0
    long-to-float v1, v15

    const/high16 v2, 0x442f

    div-float v14, v1, v2

    .line 132
    .local v14, fraction:F
    move-object/from16 v0, p0

    iget v12, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterX:F

    .line 133
    .local v12, centerX:F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterY:F

    .line 134
    .local v13, centerY:F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimOrientation:I

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimOrientation:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_2

    .line 135
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterDelta:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v2, v5

    add-float v12, v1, v2

    .line 142
    :goto_1
    float-to-int v3, v12

    .line 143
    .local v3, previewX:I
    float-to-int v4, v13

    .line 144
    .local v4, previewY:I
    float-to-int v7, v12

    .line 145
    .local v7, reviewX:I
    float-to-int v8, v13

    .line 146
    .local v8, reviewY:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v1, :sswitch_data_0

    .line 172
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->getAlpha()F

    move-result v11

    .line 173
    .local v11, alpha:F
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->setAlpha(F)V

    .line 174
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawWidth:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawHeight:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->directDraw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 175
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->setAlpha(F)V

    .line 177
    move-object/from16 v0, p0

    iget v9, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawHeight:I

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 178
    const/4 v1, 0x1

    goto :goto_0

    .line 137
    .end local v3           #previewX:I
    .end local v4           #previewY:I
    .end local v7           #reviewX:I
    .end local v8           #reviewY:I
    .end local v11           #alpha:F
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterY:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterDelta:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mSlideInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v2, v5

    add-float v13, v1, v2

    goto :goto_1

    .line 148
    .restart local v3       #previewX:I
    .restart local v4       #previewY:I
    .restart local v7       #reviewX:I
    .restart local v8       #reviewY:I
    :sswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawWidth:I

    int-to-float v1, v1

    sub-float v1, v12, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 149
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v1, v13, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 150
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v1, v12

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 151
    move v8, v4

    .line 152
    goto :goto_2

    .line 154
    :sswitch_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 155
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 156
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawHeight:I

    int-to-float v1, v1

    sub-float v1, v13, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 157
    move v7, v3

    .line 158
    goto/16 :goto_2

    .line 160
    :sswitch_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawWidth:I

    int-to-float v1, v1

    add-float/2addr v1, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 161
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v1, v13, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 162
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    sub-float v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 163
    move v8, v4

    .line 164
    goto/16 :goto_2

    .line 166
    :sswitch_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawHeight:I

    int-to-float v1, v1

    sub-float v1, v13, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 167
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 168
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v1, v13

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 169
    move v7, v3

    goto/16 :goto_2

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "animOrientation"

    .prologue
    .line 67
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimOrientation:I

    .line 68
    return-void
.end method

.method public startAnimation(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    const v4, 0x3f8ccccd

    const v3, 0x3dcccccd

    const/high16 v2, 0x4000

    .line 89
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimStartTime:J

    .line 91
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawWidth:I

    .line 92
    iput p4, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mDrawHeight:I

    .line 93
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mAnimOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 123
    :goto_0
    return-void

    .line 95
    :sswitch_0
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mGap:F

    .line 96
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    .line 97
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterX:F

    .line 98
    int-to-float v0, p3

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterDelta:F

    .line 99
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterY:F

    goto :goto_0

    .line 102
    :sswitch_1
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mGap:F

    .line 103
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    .line 104
    add-int v0, p2, p4

    int-to-float v0, v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterY:F

    .line 105
    neg-int v0, p4

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterDelta:F

    .line 106
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterX:F

    goto :goto_0

    .line 109
    :sswitch_2
    int-to-float v0, p3

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mGap:F

    .line 110
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    .line 111
    int-to-float v0, p1

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterX:F

    .line 112
    neg-int v0, p3

    int-to-float v0, v0

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterDelta:F

    .line 113
    int-to-float v0, p2

    int-to-float v1, p4

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterY:F

    goto :goto_0

    .line 116
    :sswitch_3
    int-to-float v0, p4

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mGap:F

    .line 117
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mGap:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    .line 118
    int-to-float v0, p2

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mHalfGap:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterY:F

    .line 119
    int-to-float v0, p4

    mul-float/2addr v0, v4

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterDelta:F

    .line 120
    int-to-float v0, p1

    int-to-float v1, p3

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->mCenterX:F

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method
