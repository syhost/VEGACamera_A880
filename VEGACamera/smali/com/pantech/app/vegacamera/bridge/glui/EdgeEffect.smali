.class public Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.0010f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private mDuration:F

.field private final mEdge:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const/16 v0, 0x12c

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->MIN_WIDTH:I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    .line 132
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->overscroll_edge:I

    invoke-direct {v0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdge:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    .line 133
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->overscroll_glow:I

    invoke-direct {v0, p1, v1}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlow:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4396

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mMinWidth:I

    .line 136
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 137
    return-void
.end method

.method private update()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 319
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v3

    .line 320
    .local v3, time:J
    iget-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 322
    .local v2, t:F
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 324
    .local v1, interp:F
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlpha:F

    .line 325
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleY:F

    .line 326
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlpha:F

    .line 327
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    .line 329
    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_0

    .line 330
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_0

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 332
    :pswitch_0
    iput v11, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    .line 333
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mStartTime:J

    .line 334
    iput v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mDuration:F

    .line 336
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaStart:F

    .line 337
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYStart:F

    .line 338
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaStart:F

    .line 339
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYStart:F

    .line 342
    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 343
    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 344
    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaFinish:F

    .line 345
    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 348
    :pswitch_1
    const/4 v5, 0x4

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    .line 349
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mStartTime:J

    .line 350
    iput v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mDuration:F

    .line 352
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaStart:F

    .line 353
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYStart:F

    .line 354
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaStart:F

    .line 355
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYStart:F

    .line 358
    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 359
    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 360
    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaFinish:F

    .line 361
    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    .line 366
    :pswitch_2
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    .line 367
    .local v0, factor:F
    :goto_1
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleY:F

    .line 368
    iput v11, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    goto :goto_0

    .line 366
    .end local v0           #factor:F
    :cond_1
    const v0, 0x7f7fffff

    goto :goto_1

    .line 371
    :pswitch_3
    const/4 v5, 0x0

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    goto :goto_0

    .line 330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v13, 0x437f

    const/high16 v12, 0x3f80

    const/4 v11, 0x0

    const/4 v7, 0x0

    .line 281
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->update()V

    .line 283
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdge:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 285
    .local v1, edgeHeight:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlow:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 286
    .local v4, glowHeight:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlow:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 288
    .local v6, glowWidth:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlow:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlpha:F

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v9, v13

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->setAlpha(I)V

    .line 290
    int-to-float v8, v4

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v8, v9

    int-to-float v9, v4

    mul-float/2addr v8, v9

    int-to-float v9, v6

    div-float/2addr v8, v9

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    int-to-float v9, v4

    const/high16 v10, 0x4080

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v3, v8

    .line 291
    .local v3, glowBottom:I
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_1

    .line 293
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v5, v8, 0x2

    .line 294
    .local v5, glowLeft:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlow:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mWidth:I

    sub-int/2addr v9, v5

    invoke-virtual {v8, v5, v7, v9, v3}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 300
    .end local v5           #glowLeft:I
    :goto_0
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlow:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    invoke-virtual {v8, p1}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 302
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdge:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlpha:F

    invoke-static {v9, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    mul-float/2addr v9, v13

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->setAlpha(I)V

    .line 304
    int-to-float v8, v1

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 305
    .local v0, edgeBottom:I
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_2

    .line 307
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    .line 308
    .local v2, edgeLeft:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdge:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mWidth:I

    sub-int/2addr v9, v2

    invoke-virtual {v8, v2, v7, v9, v0}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->setBounds(IIII)V

    .line 313
    .end local v2           #edgeLeft:I
    :goto_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdge:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    invoke-virtual {v8, p1}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 315
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    if-eqz v8, :cond_0

    const/4 v7, 0x1

    :cond_0
    return v7

    .line 297
    .end local v0           #edgeBottom:I
    :cond_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlow:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v7, v7, v9, v3}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 311
    .restart local v0       #edgeBottom:I
    :cond_2
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdge:Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v7, v7, v9, v0}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    .line 161
    return-void
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAbsorb(I)V
    .locals 5
    .parameter "velocity"

    .prologue
    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 244
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    .line 245
    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 247
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mStartTime:J

    .line 248
    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mDuration:F

    .line 252
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaStart:F

    .line 253
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleY:F

    .line 256
    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaStart:F

    .line 257
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYStart:F

    .line 261
    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 263
    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 269
    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYFinish:F

    .line 271
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaFinish:F

    .line 272
    return-void
.end method

.method public onPull(F)V
    .locals 11
    .parameter "deltaDistance"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x40e0

    const/high16 v6, 0x3f80

    const v8, 0x3f4ccccd

    const/4 v7, 0x0

    .line 171
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v2

    .line 172
    .local v2, now:J
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    iget-wide v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 208
    :goto_0
    return-void

    .line 175
    :cond_0
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    if-eq v4, v10, :cond_1

    .line 176
    iput v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    .line 178
    :cond_1
    iput v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    .line 180
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mStartTime:J

    .line 181
    const/high16 v4, 0x4327

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mDuration:F

    .line 183
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mPullDistance:F

    .line 184
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 186
    .local v0, distance:F
    const v4, 0x3f19999a

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlpha:F

    .line 187
    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleY:F

    .line 189
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlpha:F

    .line 190
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    .line 189
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlpha:F

    .line 192
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 193
    .local v1, glowChange:F
    cmpl-float v4, p1, v7

    if-lez v4, :cond_2

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_2

    .line 194
    neg-float v1, v1

    .line 196
    :cond_2
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_3

    .line 197
    iput v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    .line 201
    :cond_3
    const/high16 v4, 0x4080

    .line 202
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 201
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    .line 204
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 205
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 206
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaFinish:F

    .line 207
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_0
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 213
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mPullDistance:F

    .line 215
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 232
    :goto_0
    return-void

    .line 219
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mState:I

    .line 220
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaStart:F

    .line 221
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYStart:F

    .line 222
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaStart:F

    .line 223
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYStart:F

    .line 225
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeAlphaFinish:F

    .line 226
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mEdgeScaleYFinish:F

    .line 227
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowAlphaFinish:F

    .line 228
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mGlowScaleYFinish:F

    .line 230
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mStartTime:J

    .line 231
    const/high16 v0, 0x447a

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mDuration:F

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 146
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;->mWidth:I

    .line 148
    return-void
.end method
