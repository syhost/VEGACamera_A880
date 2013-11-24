.class Lcom/pantech/app/vegacamera/aot/AnimationImageView$2;
.super Ljava/lang/Object;
.source "AnimationImageView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/aot/AnimationImageView;->setInvisibleAnimation(Landroid/view/animation/AnimationSet;)V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView$2;->this$0:Lcom/pantech/app/vegacamera/aot/AnimationImageView;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 82
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 77
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView$2;->this$0:Lcom/pantech/app/vegacamera/aot/AnimationImageView;

    #getter for: Lcom/pantech/app/vegacamera/aot/AnimationImageView;->mListener:Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->access$0(Lcom/pantech/app/vegacamera/aot/AnimationImageView;)Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView$2;->this$0:Lcom/pantech/app/vegacamera/aot/AnimationImageView;

    #getter for: Lcom/pantech/app/vegacamera/aot/AnimationImageView;->mListener:Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->access$0(Lcom/pantech/app/vegacamera/aot/AnimationImageView;)Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;->onAnimationImageViewChanged(I)V

    .line 72
    :cond_0
    return-void
.end method
