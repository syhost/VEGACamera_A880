.class Lcom/pantech/app/vegacamera/aot/AnimationImageView$1;
.super Ljava/lang/Object;
.source "AnimationImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/aot/AnimationImageView;->setVisibleAnimation(Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AnimationImageView;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/aot/AnimationImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView$1;->this$0:Lcom/pantech/app/vegacamera/aot/AnimationImageView;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView$1;->this$0:Lcom/pantech/app/vegacamera/aot/AnimationImageView;

    #getter for: Lcom/pantech/app/vegacamera/aot/AnimationImageView;->mListener:Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->access$0(Lcom/pantech/app/vegacamera/aot/AnimationImageView;)Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView$1;->this$0:Lcom/pantech/app/vegacamera/aot/AnimationImageView;

    #getter for: Lcom/pantech/app/vegacamera/aot/AnimationImageView;->mListener:Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->access$0(Lcom/pantech/app/vegacamera/aot/AnimationImageView;)Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;->onAnimationImageViewChanged(I)V

    .line 56
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 49
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 44
    return-void
.end method
