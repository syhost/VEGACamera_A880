.class Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;
.super Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmRatio"
.end annotation


# instance fields
.field public mCurrentRatio:F

.field public mFromRatio:F

.field public mToRatio:F

.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)V
    .locals 1
    .parameter

    .prologue
    .line 1802
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1802
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)V

    return-void
.end method

.method private doAnimation(FI)Z
    .locals 2
    .parameter "targetRatio"
    .parameter "kind"

    .prologue
    .line 1817
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mAnimationKind:I

    .line 1818
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mCurrentRatio:F

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mFromRatio:F

    .line 1819
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mToRatio:F

    .line 1820
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mAnimationStartTime:J

    .line 1821
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$15()[I

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mAnimationKind:I

    aget v0, v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mAnimationDuration:I

    .line 1822
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->advanceAnimation()Z

    .line 1823
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected interpolate(F)Z
    .locals 4
    .parameter "progress"

    .prologue
    const/4 v0, 0x1

    .line 1828
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1

    .line 1829
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mToRatio:F

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mCurrentRatio:F

    .line 1833
    :cond_0
    :goto_0
    return v0

    .line 1832
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mFromRatio:F

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mToRatio:F

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mFromRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mCurrentRatio:F

    .line 1833
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mCurrentRatio:F

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startSnapback()Z
    .locals 2

    .prologue
    .line 1809
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->access$4(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f80

    .line 1810
    .local v0, target:F
    :goto_0
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 1811
    const/4 v1, 0x0

    .line 1812
    :goto_1
    return v1

    .line 1809
    .end local v0           #target:F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1812
    .restart local v0       #target:F
    :cond_1
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->doAnimation(FI)Z

    move-result v1

    goto :goto_1
.end method
