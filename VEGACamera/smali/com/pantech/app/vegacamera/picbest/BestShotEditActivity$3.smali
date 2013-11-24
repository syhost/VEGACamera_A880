.class Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;
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

.field private final synthetic val$order:[I


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;[I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    iput-object p2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;->val$order:[I

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/4 v4, 0x0

    .line 296
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$8(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$9(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)I

    move-result v3

    aget v1, v2, v3

    .line 297
    .local v1, length:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;->val$order:[I

    aget v0, v2, v1

    .line 298
    .local v0, firstStart:I
    if-lez v1, :cond_0

    .line 299
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$10(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setVisibility(I)V

    .line 300
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$10(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->access$11(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[Landroid/view/animation/Animation;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    iput-boolean v4, v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 292
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 288
    return-void
.end method
