.class public Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;
.super Ljava/lang/Object;
.source "RotateImageSaveDialog.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final TIMER_COUNT:I = 0xa

.field private static final WAIT_TIME:I = 0x11170

.field private static final WAIT_TIME_OUT:I = 0xa


# instance fields
.field private dialogState:Z

.field private iLayoutResourceID:I

.field protected listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;

.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mRotateDialogSecText:Landroid/widget/TextView;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "a"
    .parameter "layoutResource"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dialogState:Z

    .line 79
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$1;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mHandler:Landroid/os/Handler;

    .line 66
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mActivity:Landroid/app/Activity;

    .line 67
    iput p2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->iLayoutResourceID:I

    .line 69
    return-void
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    .line 95
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    if-nez v3, :cond_0

    .line 96
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 97
    .local v1, layoutRoot:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->iLayoutResourceID:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 100
    .local v2, v:Landroid/view/View;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_rotate_dialog_root_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    .line 101
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_rotate_dialog_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 102
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_rotate_dialog_spinner:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 103
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_dialog_top_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogText:Landroid/widget/TextView;

    .line 104
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_dialog_bottom_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogSecText:Landroid/widget/TextView;

    .line 105
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 106
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 107
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 108
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 110
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layoutRoot:Landroid/view/ViewGroup;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogSecText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mHandler:Landroid/os/Handler;

    .line 161
    :cond_0
    return-void
.end method

.method public dismissDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->fadeOutDialog()V

    .line 149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogSecText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dialogState:Z

    .line 153
    :cond_0
    return-void
.end method

.method public getListener()Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dialogState:Z

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    .line 187
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 188
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 189
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogText:Landroid/widget/TextView;

    .line 190
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 191
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 192
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;

    .line 193
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mHandler:Landroid/os/Handler;

    .line 194
    return-void
.end method

.method public resetRotateDialog()V
    .locals 2

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->inflateDialogLayout()V

    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog$ImageSaveResultListener;

    .line 77
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->inflateDialogLayout()V

    .line 117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 119
    :cond_0
    return-void
.end method

.method public setVisibilityLayout(Z)V
    .locals 2
    .parameter "view"

    .prologue
    .line 122
    if-eqz p1, :cond_1

    .line 123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showWaitingDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mainMsg"
    .parameter "subMsg"

    .prologue
    .line 164
    const-string v0, "RemoteShot"

    const-string v1, "[RotateTimerDialogController] [WiFi] showWaitingDialog()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->dialogState:Z

    .line 166
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->resetRotateDialog()V

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    if-nez p2, :cond_0

    .line 169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogSecText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 172
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->fadeInDialog()V

    .line 173
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateImageSaveDialog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/32 v2, 0x11170

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 175
    return-void
.end method
