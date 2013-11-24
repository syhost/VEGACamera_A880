.class Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
.super Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Box"
.end annotation


# instance fields
.field public mAbsoluteX:I

.field public mCurrentScale:F

.field public mCurrentY:I

.field public mFromScale:F

.field public mFromY:I

.field public mImageH:I

.field public mImageW:I

.field public mScaleMax:F

.field public mScaleMin:F

.field public mToScale:F

.field public mToY:I

.field public mUseViewSize:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)V
    .locals 1
    .parameter

    .prologue
    .line 1612
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1612
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;IFI)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1677
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->doAnimation(IFI)Z

    move-result v0

    return v0
.end method

.method private doAnimation(IFI)Z
    .locals 2
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 1678
    invoke-virtual {p0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->clampScale(F)F

    move-result p2

    .line 1680
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    const/16 v0, 0x9

    if-eq p3, v0, :cond_0

    .line 1681
    const/4 v0, 0x0

    .line 1693
    :goto_0
    return v0

    .line 1685
    :cond_0
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    .line 1686
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mFromY:I

    .line 1687
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mFromScale:F

    .line 1688
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToY:I

    .line 1689
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToScale:F

    .line 1690
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    .line 1691
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$15()[I

    move-result-object v0

    aget v0, v0, p3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationDuration:I

    .line 1692
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->advanceAnimation()Z

    .line 1693
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingPage(F)Z
    .locals 6
    .parameter "progress"

    .prologue
    const/4 v2, 0x0

    const/high16 v5, 0x3f00

    .line 1711
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->computeScrollOffset(F)V

    .line 1712
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(F)V
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$20(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;F)V

    .line 1714
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 1715
    .local v0, oldY:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 1718
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$23(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v3

    if-le v0, v3, :cond_2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$23(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1719
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getCurrVelocityY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 1720
    .local v1, v:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v1, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onAbsorb(II)V

    .line 1726
    .end local v1           #v:I
    :cond_0
    :goto_0
    const/high16 v3, 0x3f80

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 1721
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$24(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v3

    if-ge v0, v3, :cond_0

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$24(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 1722
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getCurrVelocityY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v5

    float-to-int v1, v3

    .line 1723
    .restart local v1       #v:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0
.end method

.method private interpolateLinear(F)Z
    .locals 6
    .parameter "progress"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1730
    const/high16 v3, 0x3f80

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_1

    .line 1731
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToY:I

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 1732
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToScale:F

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    .line 1742
    :cond_0
    :goto_0
    return v1

    .line 1735
    :cond_1
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mFromY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToY:I

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mFromY:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 1736
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mFromScale:F

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToScale:F

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mFromScale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    .line 1737
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    .line 1738
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/glui/CaptureAnimation;->calculateScale(F)F

    move-result v0

    .line 1739
    .local v0, f:F
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    move v1, v2

    .line 1740
    goto :goto_0

    .line 1742
    .end local v0           #f:F
    :cond_2
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToY:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToScale:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public clampScale(F)F
    .locals 3
    .parameter "s"

    .prologue
    .line 1698
    const v0, 0x3f333333

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    mul-float/2addr v0, v1

    const v1, 0x3fb33333

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    mul-float/2addr v1, v2

    invoke-static {p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(FFF)F

    move-result v0

    return v0
.end method

.method protected interpolate(F)Z
    .locals 2
    .parameter "progress"

    .prologue
    .line 1703
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1704
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->interpolateFlingPage(F)Z

    move-result v0

    .line 1706
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->interpolateLinear(F)Z

    move-result v0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 1637
    iget-wide v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return v5

    .line 1639
    :cond_1
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->isHoldingDown()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1641
    :cond_2
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    move-result-object v6

    invoke-interface {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->isHoldingDelete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1643
    :cond_3
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mInScale:Z
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq p0, v6, :cond_0

    .line 1646
    :cond_4
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 1649
    .local v4, y:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne p0, v6, :cond_a

    .line 1650
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mExtraScalingRange:Z
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$3(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    const v7, 0x3f333333

    mul-float v3, v6, v7

    .line 1651
    .local v3, scaleMin:F
    :goto_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mExtraScalingRange:Z
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$3(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    const v7, 0x3fb33333

    mul-float v2, v6, v7

    .line 1652
    .local v2, scaleMax:F
    :goto_2
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    invoke-static {v6, v3, v2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(FFF)F

    move-result v0

    .line 1653
    .local v0, scale:F
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$4(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1654
    const/4 v4, 0x0

    .line 1671
    .end local v2           #scaleMax:F
    .end local v3           #scaleMin:F
    :goto_3
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    if-ne v6, v4, :cond_5

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    cmpl-float v6, v6, v0

    if-eqz v6, :cond_0

    .line 1672
    :cond_5
    const/4 v5, 0x2

    invoke-direct {p0, v4, v0, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->doAnimation(IFI)Z

    move-result v5

    goto/16 :goto_0

    .line 1650
    .end local v0           #scale:F
    :cond_6
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    goto :goto_1

    .line 1651
    .restart local v3       #scaleMin:F
    :cond_7
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    goto :goto_2

    .line 1656
    .restart local v0       #scale:F
    .restart local v2       #scaleMax:F
    :cond_8
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->HORIZONTAL_SLACK:I
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v7

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(FI)V
    invoke-static {v6, v0, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;FI)V

    .line 1660
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->viewTallerThanScaledImage(F)Z
    invoke-static {v6, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$21(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;F)Z

    move-result v6

    if-nez v6, :cond_9

    .line 1661
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    sub-float v1, v6, v0

    .line 1662
    .local v1, scaleDiff:F
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusY:F
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$22(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)F

    move-result v6

    mul-float/2addr v6, v1

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v4, v6

    .line 1664
    .end local v1           #scaleDiff:F
    :cond_9
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$23(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v6

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I
    invoke-static {v7}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$24(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v7

    invoke-static {v4, v6, v7}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(III)I

    move-result v4

    .line 1666
    goto :goto_3

    .line 1667
    .end local v0           #scale:F
    .end local v2           #scaleMax:F
    .end local v3           #scaleMin:F
    :cond_a
    const/4 v4, 0x0

    .line 1668
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    .restart local v0       #scale:F
    goto :goto_3
.end method
