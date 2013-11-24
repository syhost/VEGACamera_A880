.class public Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;
.super Lcom/pantech/app/vegacamera/ui/FocusIndicator;
.source "FocusIndicatorView.java"


# static fields
.field static final DURATION:I = 0x190


# instance fields
.field alpha:Landroid/animation/ObjectAnimator;

.field bCanceled:Z

.field focus_close:Landroid/view/animation/Animation;

.field focus_fail:Landroid/graphics/drawable/Drawable;

.field focus_ing:Landroid/graphics/drawable/Drawable;

.field focus_on:Landroid/graphics/drawable/Drawable;

.field mContext:Landroid/content/Context;

.field scale:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    .line 40
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    .line 41
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    .line 77
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->init(Landroid/content/Context;)V

    .line 78
    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    return-void
.end method

.method private showAnimation()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x190

    const/4 v4, 0x2

    .line 148
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->setPivotX(F)V

    .line 149
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->setPivotY(F)V

    .line 151
    const-string v2, "scaleX"

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 152
    .local v0, scaleX:Landroid/animation/ObjectAnimator;
    const-string v2, "scaleY"

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 154
    .local v1, scaleY:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    invoke-virtual {v1, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    .line 159
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView$1;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView$1;-><init>(Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 184
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 188
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    new-array v3, v4, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 189
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 194
    return-void

    .line 151
    :array_0
    .array-data 0x4
        0x66t 0x66t 0xa6t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 152
    :array_1
    .array-data 0x4
        0x66t 0x66t 0xa6t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->bCanceled:Z

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 142
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 83
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->mContext:Landroid/content/Context;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_close:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 86
    sget v0, Lcom/pantech/app/vegacamera/R$anim;->focus_close:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_close:Landroid/view/animation/Animation;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_touch_ing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_touch_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 96
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_touch_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    .line 98
    :cond_4
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_close:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 199
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_close:Landroid/view/animation/Animation;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 202
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 205
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 208
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    .line 210
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 211
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->mContext:Landroid/content/Context;

    .line 213
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_6

    .line 214
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 215
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 217
    :cond_5
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    .line 219
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_8

    .line 220
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 223
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 224
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->scale:Landroid/animation/AnimatorSet;

    .line 226
    :cond_8
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->showAnimation()V

    .line 110
    return-void
.end method

.method public showSuccess()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 118
    :cond_0
    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->alpha:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 126
    return-void

    .line 118
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public switchResource(Z)V
    .locals 0
    .parameter "focusLock"

    .prologue
    .line 145
    return-void
.end method
