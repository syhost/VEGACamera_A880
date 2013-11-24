.class public Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;
.super Ljava/lang/Object;
.source "RotateProgressDialog.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/RotateDialog;


# static fields
.field private static final ANIM_DURATION:J = 0x96L


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "a"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    .line 44
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->_InflateDialogLayout()V

    .line 45
    return-void
.end method

.method private _FadeInDialog()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void
.end method

.method private _FadeOutDialog()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    return-void
.end method

.method private _InflateDialogLayout()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x96

    .line 48
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mDialogRootLayout:Landroid/view/View;

    if-nez v3, :cond_0

    .line 49
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 50
    .local v1, layoutRoot:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 51
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v3, Lcom/pantech/app/vegacamera/R$layout;->rotate_dialog:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 52
    .local v2, v:Landroid/view/View;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->rotate_dialog_root_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mDialogRootLayout:Landroid/view/View;

    .line 53
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 54
    sget v3, Lcom/pantech/app/vegacamera/R$id;->rotate_dialog_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 55
    sget v3, Lcom/pantech/app/vegacamera/R$id;->rotate_dialog_spinner:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 56
    sget v3, Lcom/pantech/app/vegacamera/R$id;->rotate_dialog_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mRotateDialogText:Landroid/widget/TextView;

    .line 57
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 58
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 59
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 60
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 62
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layoutRoot:Landroid/view/ViewGroup;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public dismissDialog()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->_FadeOutDialog()V

    .line 89
    :cond_0
    return-void
.end method

.method public isShowDialog()Z
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isShown()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 95
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 100
    return-void
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->_FadeInDialog()V

    .line 82
    return-void
.end method
