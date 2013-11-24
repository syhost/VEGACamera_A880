.class Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;
.super Ljava/lang/Object;
.source "BestShotEditActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setAnimationStartOrder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 361
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$8(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$9(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)I

    move-result v1

    aget v0, v0, v1

    if-le v0, v2, :cond_0

    .line 362
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$10(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$10(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$11(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[Landroid/view/animation/Animation;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    iput-boolean v3, v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 357
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 353
    return-void
.end method
