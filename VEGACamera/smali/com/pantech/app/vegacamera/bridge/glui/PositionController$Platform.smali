.class Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;
.super Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Platform"
.end annotation


# instance fields
.field public mCurrentX:I

.field public mCurrentY:I

.field public mDefaultX:I

.field public mDefaultY:I

.field public mFlingOffset:I

.field public mFromX:I

.field public mFromY:I

.field public mToX:I

.field public mToY:I

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)V
    .locals 1
    .parameter

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1455
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;III)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1518
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->doAnimation(III)Z

    move-result v0

    return v0
.end method

.method private doAnimation(III)Z
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "kind"

    .prologue
    const/4 v0, 0x0

    .line 1519
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentY:I

    if-ne v1, p2, :cond_0

    .line 1530
    :goto_0
    return v0

    .line 1521
    :cond_0
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationKind:I

    .line 1522
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFromX:I

    .line 1523
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentY:I

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFromY:I

    .line 1524
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToX:I

    .line 1525
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToY:I

    .line 1526
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->startTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationStartTime:J

    .line 1527
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$15()[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationDuration:I

    .line 1528
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFlingOffset:I

    .line 1529
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->advanceAnimation()Z

    .line 1530
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingFilm(F)Z
    .locals 3
    .parameter "progress"

    .prologue
    .line 1545
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$16(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1546
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$16(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFlingOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 1548
    const/4 v0, -0x1

    .line 1549
    .local v0, dir:I
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    if-ge v1, v2, :cond_2

    .line 1550
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasNext:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$17(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1551
    const/4 v0, 0x3

    .line 1558
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1562
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$16(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1563
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 1565
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$16(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    return v1

    .line 1553
    :cond_2
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    if-le v1, v2, :cond_0

    .line 1554
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasPrev:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$18(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1555
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private interpolateFlingPage(F)Z
    .locals 8
    .parameter "progress"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f00

    .line 1569
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->computeScrollOffset(F)V

    .line 1570
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1571
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    iget v6, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(F)V
    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$20(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;F)V

    .line 1573
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 1574
    .local v1, oldX:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 1577
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v5

    if-le v1, v5, :cond_1

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 1578
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 1579
    .local v2, v:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onAbsorb(II)V

    .line 1585
    .end local v2           #v:I
    :cond_0
    :goto_0
    const/high16 v5, 0x3f80

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    :goto_1
    return v3

    .line 1580
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$10(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v5

    if-ge v1, v5, :cond_0

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$10(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 1581
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$19(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    .line 1582
    .restart local v2       #v:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_0

    .end local v2           #v:I
    :cond_2
    move v3, v4

    .line 1585
    goto :goto_1
.end method

.method private interpolateLinear(F)Z
    .locals 6
    .parameter "progress"

    .prologue
    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1590
    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_1

    .line 1591
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToX:I

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 1592
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToY:I

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentY:I

    .line 1603
    :cond_0
    :goto_0
    return v0

    .line 1595
    :cond_1
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_2

    .line 1596
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/glui/CaptureAnimation;->calculateSlide(F)F

    move-result p1

    .line 1598
    :cond_2
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFromX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToX:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 1599
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFromY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToY:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentY:I

    .line 1600
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_3

    move v0, v1

    .line 1601
    goto :goto_0

    .line 1603
    :cond_3
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToX:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentY:I

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToY:I

    if-eq v2, v3, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 2
    .parameter "progress"

    .prologue
    .line 1535
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 1536
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->interpolateFlingPage(F)Z

    move-result v0

    .line 1540
    :goto_0
    return v0

    .line 1537
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1538
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->interpolateFlingFilm(F)Z

    move-result v0

    goto :goto_0

    .line 1540
    :cond_1
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->interpolateLinear(F)Z

    move-result v0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 1462
    iget-wide v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 1497
    :cond_0
    :goto_0
    return v7

    .line 1464
    :cond_1
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationKind:I

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    move-result-object v8

    invoke-interface {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->isHoldingDown()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1466
    :cond_2
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mInScale:Z
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1469
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1470
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$3(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    const v9, 0x3f333333

    mul-float v4, v8, v9

    .line 1471
    .local v4, scaleMin:F
    :goto_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$3(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget v8, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    const v9, 0x3fb33333

    mul-float v3, v8, v9

    .line 1472
    .local v3, scaleMax:F
    :goto_2
    iget v8, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    invoke-static {v8, v4, v3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(FFF)F

    move-result v1

    .line 1473
    .local v1, scale:F
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 1474
    .local v5, x:I
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultY:I

    .line 1475
    .local v6, y:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$4(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1476
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    .line 1494
    :goto_3
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    if-ne v8, v5, :cond_3

    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentY:I

    if-eq v8, v6, :cond_0

    .line 1495
    :cond_3
    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->doAnimation(III)Z

    move-result v7

    goto :goto_0

    .line 1470
    .end local v1           #scale:F
    .end local v3           #scaleMax:F
    .end local v4           #scaleMin:F
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_4
    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    goto :goto_1

    .line 1471
    .restart local v4       #scaleMin:F
    :cond_5
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    goto :goto_2

    .line 1478
    .restart local v1       #scale:F
    .restart local v3       #scaleMax:F
    .restart local v5       #x:I
    .restart local v6       #y:I
    :cond_6
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->HORIZONTAL_SLACK:I
    invoke-static {v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v9

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(FI)V
    invoke-static {v8, v1, v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;FI)V

    .line 1488
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->viewWiderThanScaledImage(F)Z
    invoke-static {v8, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$7(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;F)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1489
    iget v8, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    sub-float v2, v8, v1

    .line 1490
    .local v2, scaleDiff:F
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusX:F
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$8(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)F

    move-result v8

    mul-float/2addr v8, v2

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v5, v8

    .line 1492
    .end local v2           #scaleDiff:F
    :cond_7
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I
    invoke-static {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v8

    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I
    invoke-static {v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$10(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(III)I

    move-result v5

    goto :goto_3
.end method

.method public updateDefaultXY()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1508
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrained:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$12(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1509
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$12(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$13(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    .line 1510
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$4(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultY:I

    .line 1515
    :goto_1
    return-void

    .line 1510
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$12(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$14(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1512
    :cond_1
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    .line 1513
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultY:I

    goto :goto_1
.end method
