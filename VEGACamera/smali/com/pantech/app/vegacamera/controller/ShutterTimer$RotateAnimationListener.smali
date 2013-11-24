.class Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;
.super Ljava/lang/Object;
.source "ShutterTimer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/ShutterTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RotateAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 807
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;-><init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 820
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$14(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$14(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->getCurrentDegree()F

    move-result v1

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$15(Lcom/pantech/app/vegacamera/controller/ShutterTimer;F)V

    .line 823
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$17(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;)V

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$16(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$16(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->getCurrentDegree()F

    move-result v1

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$15(Lcom/pantech/app/vegacamera/controller/ShutterTimer;F)V

    .line 828
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$18(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;)V

    .line 830
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$19(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 831
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$19(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/RotateImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 833
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 838
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 810
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$14(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$14(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$14(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->getCurrentDegree()F

    move-result v1

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$15(Lcom/pantech/app/vegacamera/controller/ShutterTimer;F)V

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$16(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$16(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$16(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->getCurrentDegree()F

    move-result v1

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$15(Lcom/pantech/app/vegacamera/controller/ShutterTimer;F)V

    .line 816
    :cond_1
    return-void
.end method
