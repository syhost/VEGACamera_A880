.class public Lcom/pantech/app/vegacamera/aot/AnimationImageView;
.super Landroid/widget/ImageView;
.source "AnimationImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimationImageView"


# instance fields
.field private animationON:Z

.field private invisibleAnimation:Landroid/view/animation/AnimationSet;

.field private mListener:Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;

.field private visibleAnimation:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 17
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->visibleAnimation:Landroid/view/animation/AnimationSet;

    .line 18
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->invisibleAnimation:Landroid/view/animation/AnimationSet;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->animationON:Z

    .line 20
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->mListener:Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->visibleAnimation:Landroid/view/animation/AnimationSet;

    .line 18
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->invisibleAnimation:Landroid/view/animation/AnimationSet;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->animationON:Z

    .line 20
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->mListener:Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/aot/AnimationImageView;)Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->mListener:Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;

    return-object v0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->visibleAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->visibleAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->invisibleAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->invisibleAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->clearAnimation()V

    .line 122
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 123
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 92
    const-string v0, "AnimationImageView"

    const-string v1, "[CameraWidget] onDraw "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 94
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 98
    const-string v0, "AnimationImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraWidget] onVisibilityChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "changedView :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    instance-of v0, p1, Lcom/pantech/app/vegacamera/aot/AnimationImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->animationON:Z

    if-eqz v0, :cond_0

    .line 101
    if-nez p2, :cond_1

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->visibleAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->visibleAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 112
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 113
    return-void

    .line 105
    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->invisibleAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->invisibleAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setAnimationEffect(Z)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->animationON:Z

    .line 32
    return-void
.end method

.method public setAnimationListener(Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->mListener:Lcom/pantech/app/vegacamera/aot/AnimationImageView$AnimationImageViewListener;

    .line 88
    return-void
.end method

.method public setInvisibleAnimation(Landroid/view/animation/AnimationSet;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->animationON:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->invisibleAnimation:Landroid/view/animation/AnimationSet;

    .line 63
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->invisibleAnimation:Landroid/view/animation/AnimationSet;

    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->invisibleAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/pantech/app/vegacamera/aot/AnimationImageView$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/aot/AnimationImageView$2;-><init>(Lcom/pantech/app/vegacamera/aot/AnimationImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 84
    return-void
.end method

.method public setVisibleAnimation(Landroid/view/animation/AnimationSet;)V
    .locals 2
    .parameter "ani"

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->animationON:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->visibleAnimation:Landroid/view/animation/AnimationSet;

    .line 37
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->visibleAnimation:Landroid/view/animation/AnimationSet;

    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->visibleAnimation:Landroid/view/animation/AnimationSet;

    new-instance v1, Lcom/pantech/app/vegacamera/aot/AnimationImageView$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/aot/AnimationImageView$1;-><init>(Lcom/pantech/app/vegacamera/aot/AnimationImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 58
    return-void
.end method
