.class public Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;
.super Ljava/lang/Object;
.source "RotateTimerDialogController.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:J = 0x96L

.field private static final TIMER_COUNT:I = 0xa


# instance fields
.field private bDialogState:Z

.field private iLayoutResourceID:I

.field private iTimeSec:I

.field private iTimerInitNum:I

.field protected listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;

.field private mActivity:Landroid/app/Activity;

.field private mDialogRootLayout:Landroid/view/View;

.field private mFadeInAnim:Landroid/view/animation/Animation;

.field private mFadeOutAnim:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mRotateDialogSpinner:Landroid/widget/ProgressBar;

.field private mRotateDialogText:Landroid/widget/TextView;

.field private mRotateDialogTimer:Landroid/widget/TextView;

.field private sTimeSecString:Ljava/lang/String;

.field private sTimerInitStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "a"
    .parameter "layoutResource"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "0:40"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->sTimerInitStr:Ljava/lang/String;

    .line 43
    const/16 v0, 0x28

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimerInitNum:I

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->bDialogState:Z

    .line 80
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mActivity:Landroid/app/Activity;

    .line 68
    iput p2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iLayoutResourceID:I

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimeSec:I

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimeSec:I

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->sTimeSecString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->sTimeSecString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private fadeInDialog()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 155
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 156
    return-void
.end method

.method private fadeOutDialog()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x96

    const/4 v4, 0x0

    .line 106
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    if-nez v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 108
    .local v1, layoutRoot:Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 109
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iLayoutResourceID:I

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 110
    .local v2, v:Landroid/view/View;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_rotate_dialog_root_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    .line 111
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_rotate_dialog_layout:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 112
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_rotate_dialog_spinner:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 113
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_dialog_top_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogText:Landroid/widget/TextView;

    .line 114
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    sget v3, Lcom/pantech/app/vegacamera/R$id;->no_option_two_dialog_bottom_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogTimer:Landroid/widget/TextView;

    .line 116
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogTimer:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mActivity:Landroid/app/Activity;

    const/high16 v4, 0x10a

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 118
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mActivity:Landroid/app/Activity;

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 119
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 120
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 122
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 124
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layoutRoot:Landroid/view/ViewGroup;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public IsShowing()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->bDialogState:Z

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    .line 208
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 209
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    .line 210
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogText:Landroid/widget/TextView;

    .line 211
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogTimer:Landroid/widget/TextView;

    .line 212
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mFadeInAnim:Landroid/view/animation/Animation;

    .line 213
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mFadeOutAnim:Landroid/view/animation/Animation;

    .line 214
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;

    .line 215
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;

    .line 216
    return-void
.end method

.method public ShowWaitingDialog(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0xa

    .line 176
    const-string v0, "RemoteShot"

    const-string v1, "[RotateTimerDialogController] [WiFi] showWaitingDialog()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->bDialogState:Z

    .line 178
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimerInitNum:I

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimeSec:I

    .line 179
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->resetRotateDialog()V

    .line 180
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->sTimerInitStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->setTimeDialog(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 183
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->fadeInDialog()V

    .line 184
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x5dc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 186
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;

    .line 173
    :cond_0
    return-void
.end method

.method public dismissDialog()V
    .locals 3

    .prologue
    .line 159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 160
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->fadeOutDialog()V

    .line 161
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 162
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RotateTimerDialogController][CHECK_WFD] dismissDialog() : connect time : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->sTimeSecString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sec. !!!!!!!!!!!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->bDialogState:Z

    .line 166
    :cond_0
    return-void
.end method

.method public getListener()Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;

    return-object v0
.end method

.method public resetRotateDialog()V
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->inflateDialogLayout()V

    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogSpinner:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 146
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;

    .line 78
    return-void
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->inflateDialogLayout()V

    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialog:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 131
    :cond_0
    return-void
.end method

.method public setTimeDialog(I)V
    .locals 0
    .parameter "sec"

    .prologue
    .line 198
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimeSec:I

    .line 199
    return-void
.end method

.method public setTimeDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 202
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RotateTimerDialogController] setTimeDialog() :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mRotateDialogTimer:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method public setVisibilityLayout(Z)V
    .locals 2
    .parameter "view"

    .prologue
    .line 134
    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mDialogRootLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
