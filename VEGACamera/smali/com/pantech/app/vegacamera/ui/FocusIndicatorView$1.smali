.class Lcom/pantech/app/vegacamera/ui/FocusIndicatorView$1;
.super Ljava/lang/Object;
.source "FocusIndicatorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->showAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView$1;->this$0:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 180
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView$1;->this$0:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->bCanceled:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView$1;->this$0:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->bCanceled:Z

    .line 176
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 167
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 163
    return-void
.end method
