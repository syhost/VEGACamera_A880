.class public Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;
.super Lcom/pantech/app/vegacamera/ui/FocusIndicator;
.source "FocusLockIndicatorView.java"


# instance fields
.field focus_close:Landroid/view/animation/Animation;

.field focus_fail:Landroid/graphics/drawable/Drawable;

.field focus_ing:Landroid/graphics/drawable/Drawable;

.field focus_on:Landroid/graphics/drawable/Drawable;

.field mContext:Landroid/content/Context;

.field mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    .line 38
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "drawable"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 45
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->mContext:Landroid/content/Context;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_close:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->mContext:Landroid/content/Context;

    sget v1, Lcom/pantech/app/vegacamera/R$anim;->focus_lock:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_close:Landroid/view/animation/Animation;

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_lock_ing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_lock_on:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4

    .line 57
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->focus_lock_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    .line 59
    :cond_4
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_close:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 94
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_close:Landroid/view/animation/Animation;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 97
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 100
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 103
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 106
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->mContext:Landroid/content/Context;

    .line 108
    :cond_4
    return-void
.end method

.method public showFail()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_fail:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    return-void
.end method

.method public showStart()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_ing:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_close:Landroid/view/animation/Animation;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 70
    return-void
.end method

.method public showSuccess()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->focus_on:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    return-void
.end method

.method public switchResource(Z)V
    .locals 0
    .parameter "focusLock"

    .prologue
    .line 89
    return-void
.end method
