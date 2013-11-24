.class final Lcom/pantech/app/vegacamera/intro/AnimationControl;
.super Ljava/lang/Object;
.source "AnimationControl.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private mView:Lcom/pantech/app/vegacamera/intro/IntroView;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/intro/IntroView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/pantech/app/vegacamera/intro/AnimationControl;->mView:Lcom/pantech/app/vegacamera/intro/IntroView;

    .line 10
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "paramAnimation"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pantech/app/vegacamera/intro/AnimationControl;->mView:Lcom/pantech/app/vegacamera/intro/IntroView;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->IntroListener:Lcom/pantech/app/vegacamera/operator/IIntroAnimation;

    if-nez v0, :cond_0

    .line 18
    :goto_0
    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/intro/AnimationControl;->mView:Lcom/pantech/app/vegacamera/intro/IntroView;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/intro/IntroView;->IntroListener:Lcom/pantech/app/vegacamera/operator/IIntroAnimation;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/IIntroAnimation;->OnIntroAnimationEnd()V

    goto :goto_0
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "paramAnimation"

    .prologue
    .line 22
    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "paramAnimation"

    .prologue
    .line 26
    return-void
.end method
