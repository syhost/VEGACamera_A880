.class Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$8;
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$8;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$8;->this$0:Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 403
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 398
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 394
    return-void
.end method
