.class Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$6;
.super Ljava/lang/Object;
.source "SelfShotEditActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setAnimationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$6;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$6;->this$0:Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;

    #getter for: Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 141
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 146
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 151
    return-void
.end method
