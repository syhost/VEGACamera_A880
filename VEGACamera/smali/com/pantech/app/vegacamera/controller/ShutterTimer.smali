.class public Lcom/pantech/app/vegacamera/controller/ShutterTimer;
.super Ljava/lang/Object;
.source "ShutterTimer.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/IShutterTimer;
.implements Lcom/pantech/app/vegacamera/operator/IShutterTimer$OnAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;,
        Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;,
        Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;,
        Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x5

.field private static final ENDED_TIMER_ACTION:I = 0x2

.field private static final ENDED_TIMER_SHOT:I = 0x4

.field private static final END_TIMER:I = 0x4

.field private static final IDLE:I = 0x0

.field private static final LAYOUT_COMPLETE:I = 0x1

.field private static final ON_ACTION:I = 0x2

.field private static final RESET_RELATED_ANIMATION:I = 0x8

.field private static final RESET_TIMER_LAYOUT:I = 0x7

.field private static final SET_TIMER_LAYOUT:I = 0x6

.field private static final START_TIMER:I = 0x3

.field private static final START_TIMER_ACTION:I = 0x1

.field private static final START_TIMER_SHOT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShutterTimer"


# instance fields
.field private bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

.field private bSubShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

.field private iCurrentDegree:F

.field private iLastTimerCount:I

.field private iOldRawX:I

.field private iShutterWidth:I

.field private iState:I

.field private iTimerMiddleThreshold:I

.field private iTimerRange:I

.field private iTimerRangeLeft:I

.field private iTimerRangeRight:I

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

.field private mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

.field private mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

.field private mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

.field private mRotateAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

.field private mShutterAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;

.field private mShutterButtonLayout:Landroid/widget/RelativeLayout;

.field private mShutterFrame:Landroid/widget/FrameLayout;

.field private mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private timer_line_scale:Landroid/view/animation/ScaleAnimation;

.field private timer_move:Landroid/view/animation/TranslateAnimation;

.field private vShutterTimerRemain:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private vShutterTimerRotateOutLine:Landroid/widget/ImageView;

.field private vTimerArrow:Landroid/widget/ImageView;

.field private vTimerLine:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    .line 48
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iOldRawX:I

    .line 49
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    .line 50
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRangeLeft:I

    .line 51
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRangeRight:I

    .line 52
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRange:I

    .line 53
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerMiddleThreshold:I

    .line 54
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iLastTimerCount:I

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F

    .line 58
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    .line 59
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    .line 60
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    .line 61
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 62
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 63
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    .line 64
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterFrame:Landroid/widget/FrameLayout;

    .line 65
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRotateOutLine:Landroid/widget/ImageView;

    .line 66
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 67
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRemain:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 68
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    .line 69
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 70
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bSubShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 71
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerArrow:Landroid/widget/ImageView;

    .line 73
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;-><init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    .line 75
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    .line 76
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mRotateAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

    .line 77
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;

    .line 170
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    .line 171
    return-void
.end method

.method private _CalCount()I
    .locals 6

    .prologue
    .line 342
    const/4 v0, -0x1

    .line 343
    .local v0, count:I
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterLeft()I

    move-result v1

    .line 345
    .local v1, shutterL:I
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRange:I

    if-gtz v3, :cond_0

    .line 347
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->main_shutter_button_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 348
    .local v2, shutterRemainWidth:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRangeLeft:I

    .line 349
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v3

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRangeRight:I

    .line 350
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRangeRight:I

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRangeLeft:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRange:I

    .line 351
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRange:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerMiddleThreshold:I

    .line 355
    .end local v2           #shutterRemainWidth:I
    :cond_0
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRange:I

    if-lez v3, :cond_2

    .line 356
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRange:I

    if-ge v1, v3, :cond_4

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerMiddleThreshold:I

    if-le v1, v3, :cond_4

    .line 357
    const/4 v0, 0x1

    .line 363
    :cond_1
    :goto_0
    const-string v3, "ShutterTimer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calCount(int ) "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_2
    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    .line 366
    const/4 v0, 0x3

    .line 368
    :cond_3
    return v0

    .line 358
    :cond_4
    if-lez v1, :cond_5

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerMiddleThreshold:I

    if-gt v1, v3, :cond_5

    .line 359
    const/4 v0, 0x2

    .line 360
    goto :goto_0

    :cond_5
    if-gtz v1, :cond_1

    .line 361
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private _GetShutterBottom()I
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method private _GetShutterHeight()I
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method private _GetShutterLeft()I
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getLeft()I

    move-result v0

    goto :goto_0
.end method

.method private _GetShutterRight()I
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getRight()I

    move-result v0

    goto :goto_0
.end method

.method private _GetShutterTop()I
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method private _GetShutterWidth()I
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method private _OperateTimerAction()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 444
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_SetTimerCount()I

    move-result v0

    .line 445
    .local v0, timerCount:I
    if-gtz v0, :cond_0

    .line 446
    const/4 v0, 0x0

    .line 448
    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iLastTimerCount:I

    if-eq v1, v0, :cond_2

    .line 449
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 450
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iLastTimerCount:I

    .line 452
    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    if-ge v0, v3, :cond_3

    .line 453
    const/4 v0, 0x3

    .line 459
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    invoke-interface {v1, v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;->OnSetTimerCount(I)V

    .line 461
    :cond_2
    return-void

    .line 454
    :cond_3
    if-lt v0, v3, :cond_4

    if-ge v0, v4, :cond_4

    .line 455
    const/4 v0, 0x5

    .line 456
    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_1

    .line 457
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private _RemoveMessages()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 714
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 715
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 716
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(I)V

    .line 717
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(I)V

    .line 718
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(I)V

    .line 719
    return-void
.end method

.method private _ResetRelatedAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 850
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 851
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 852
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 855
    :cond_0
    return-void
.end method

.method private _ResetShutterButtonPosition()V
    .locals 7

    .prologue
    .line 530
    const-string v3, "ShutterTimer"

    const-string v4, "_ResetShutterButtonPosition()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-eqz v3, :cond_0

    .line 532
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 533
    .local v1, displayHeight:I
    div-int/lit8 v3, v1, 0x2

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v3, v4

    .line 534
    .local v2, top:I
    div-int/lit8 v3, v1, 0x2

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 535
    .local v0, bottom:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterLeft()I

    move-result v4

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterRight()I

    move-result v5

    invoke-virtual {v3, v4, v2, v5, v0}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->layout(IIII)V

    .line 536
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterLeft()I

    move-result v4

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterRight()I

    move-result v5

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v2, v5, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 539
    .end local v0           #bottom:I
    .end local v1           #displayHeight:I
    .end local v2           #top:I
    :cond_0
    return-void
.end method

.method private _ResetTimerLayout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    const/16 v5, 0x8

    const/4 v4, -0x2

    .line 667
    const-string v2, "ShutterTimer"

    const-string v3, "_ResetTimerLayout()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetShutterButtonPosition()V

    .line 670
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerArrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 671
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerArrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v2, :cond_1

    .line 675
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 677
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRotateOutLine:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 678
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRotateOutLine:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 680
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRemain:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v2, :cond_3

    .line 681
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRemain:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 683
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 684
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 690
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-eqz v2, :cond_5

    .line 691
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->shutter_button_bg:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setBackgroundResource(I)V

    .line 692
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->camera_icon_camera_shoot:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setImageResource(I)V

    .line 695
    :cond_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_6

    .line 696
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 698
    .local v1, p_shutter_layout:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 700
    .end local v1           #p_shutter_layout:Landroid/widget/LinearLayout$LayoutParams;
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterFrame:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_7

    .line 701
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 703
    .local v0, p_frame:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 704
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 707
    .end local v0           #p_frame:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iput v6, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRangeLeft:I

    .line 708
    iput v6, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRangeRight:I

    .line 709
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRange:I

    .line 710
    iput v7, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerMiddleThreshold:I

    .line 711
    return-void
.end method

.method private _ResetTimerMode()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 564
    const-string v2, "ShutterTimer"

    const-string v3, "_ResetTimerMode()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(I)V

    .line 566
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    invoke-virtual {v2, v0, v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 567
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    invoke-virtual {v2, v5, v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 568
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 570
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 571
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 572
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2}, Landroid/view/animation/TranslateAnimation;->reset()V

    .line 575
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    if-eqz v2, :cond_1

    .line 576
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 577
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 578
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v2}, Landroid/view/animation/ScaleAnimation;->reset()V

    .line 581
    :cond_1
    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    .line 582
    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    .line 584
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v2, :cond_2

    .line 585
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 586
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->cancel()V

    .line 587
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 591
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v2, :cond_3

    .line 592
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 593
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->cancel()V

    .line 594
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 598
    :cond_3
    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 599
    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 601
    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    if-ne v2, v6, :cond_5

    .line 602
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->sendEmptyMessage(I)Z

    .line 606
    :cond_4
    :goto_0
    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    if-ne v2, v6, :cond_7

    .line 607
    .local v0, ended:Z
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    invoke-interface {v2, v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;->OnTimerActionCancel(Z)V

    .line 608
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;->OnTimerAnimationStop()V

    .line 609
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iOldRawX:I

    .line 610
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    .line 611
    return-void

    .line 603
    .end local v0           #ended:Z
    :cond_5
    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    if-eq v2, v0, :cond_6

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    if-eq v2, v5, :cond_6

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 604
    :cond_6
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetTimerLayout()V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 606
    goto :goto_1
.end method

.method private _SetRotateTimerDegree(I)V
    .locals 9
    .parameter "rawX"

    .prologue
    const/high16 v6, 0x43b4

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/high16 v4, 0x3f00

    const/4 v5, 0x0

    .line 722
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 805
    :cond_0
    :goto_0
    return-void

    .line 726
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iOldRawX:I

    if-nez v0, :cond_2

    .line 727
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iOldRawX:I

    .line 730
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iOldRawX:I

    sub-int v7, v0, p1

    .line 732
    .local v7, value:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_3

    .line 733
    const-string v0, "ShutterTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPositivieRotateAnim curDegree = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->getCurrentDegree()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_4

    .line 737
    const-string v0, "ShutterTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mNegativeRotateAnim curDegree = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->getCurrentDegree()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    :cond_4
    if-lez v7, :cond_8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRange:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_8

    .line 741
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iOldRawX:I

    .line 742
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_5

    .line 743
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 746
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 747
    iput-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 748
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 751
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_7

    .line 752
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 753
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->cancel()V

    .line 755
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 756
    iput-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 757
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 759
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-nez v0, :cond_0

    .line 760
    new-instance v0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F

    .line 761
    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F

    add-float/2addr v2, v6

    move v5, v3

    move v6, v4

    .line 765
    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;-><init>(FFIFIF)V

    .line 760
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 766
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 767
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v8}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setRepeatCount(I)V

    .line 768
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setDuration(J)V

    .line 769
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mRotateAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 770
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0

    .line 772
    :cond_8
    if-gez v7, :cond_0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iTimerRange:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    .line 773
    iput v8, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iOldRawX:I

    .line 774
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_9

    .line 775
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 778
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 779
    iput-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 780
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 783
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_b

    .line 784
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 785
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->cancel()V

    .line 787
    :cond_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 788
    iput-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 789
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 791
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-nez v0, :cond_0

    .line 792
    new-instance v0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F

    .line 793
    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F

    sub-float/2addr v2, v6

    move v5, v3

    move v6, v4

    .line 797
    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;-><init>(FFIFIF)V

    .line 792
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 798
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 799
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v8}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setRepeatCount(I)V

    .line 800
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setDuration(J)V

    .line 801
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mRotateAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 802
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private _SetTimerCount()I
    .locals 2

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_CalCount()I

    move-result v0

    .line 328
    .local v0, timerCount:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 329
    const/4 v0, 0x3

    .line 337
    :goto_0
    return v0

    .line 330
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 331
    const/4 v0, 0x5

    .line 332
    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 333
    const/16 v0, 0xa

    .line 334
    goto :goto_0

    .line 335
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _SetTimerCount(I)I
    .locals 2
    .parameter "shutterLeft"

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_CalCount()I

    move-result v0

    .line 373
    .local v0, timerCount:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 374
    const/4 v0, 0x3

    .line 382
    :goto_0
    return v0

    .line 375
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 376
    const/4 v0, 0x5

    .line 377
    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 378
    const/16 v0, 0xa

    .line 379
    goto :goto_0

    .line 380
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _SetTimerLayout()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    const-wide/high16 v7, 0x3ff8

    .line 638
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerArrow:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 639
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerArrow:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 642
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 644
    .local v0, displayWidth:I
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    div-int/lit8 v3, v0, 0x2

    int-to-double v3, v3

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterWidth()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v1, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 646
    .local v1, p:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x5

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 647
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 649
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    div-int/lit8 v3, v0, 0x2

    int-to-double v3, v3

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterWidth()I

    move-result v5

    int-to-double v5, v5

    mul-double/2addr v5, v7

    sub-double/2addr v3, v5

    double-to-int v3, v3

    invoke-direct {v2, v3, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 651
    .local v2, p_frame:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 653
    const/4 v3, 0x1

    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    .line 654
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;->OnTimerActionStart()V

    .line 659
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 660
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    sget v4, Lcom/pantech/app/vegacamera/R$drawable;->camera_btn_quick_timer_shot:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setImageResource(I)V

    .line 662
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterWidth()I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    .line 664
    return-void
.end method

.method private _ShutterIconMoving(I)V
    .locals 6
    .parameter "pointX"

    .prologue
    .line 386
    move v2, p1

    .line 388
    .local v2, x:I
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v4

    sub-int v0, v3, v4

    .line 389
    .local v0, leftPoint:I
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v4

    sub-int v1, v3, v4

    .line 391
    .local v1, rightPoint:I
    if-gez v0, :cond_1

    .line 392
    const/4 v0, 0x0

    .line 394
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    add-int v1, v0, v3

    .line 400
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterTop()I

    move-result v4

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterBottom()I

    move-result v5

    invoke-virtual {v3, v0, v4, v1, v5}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->layout(IIII)V

    .line 401
    return-void

    .line 395
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v3

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    if-le v2, v3, :cond_0

    .line 396
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v4

    sub-int v1, v3, v4

    .line 397
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    sub-int v0, v1, v3

    goto :goto_0
.end method

.method private _StartTimerShotAnimation(III)V
    .locals 10
    .parameter "timer_count"
    .parameter "xPoint"
    .parameter "yPoint"

    .prologue
    .line 464
    const-string v0, "ShutterTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_StartTimerShotAnimation() xPoint = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " yPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    if-nez p1, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 474
    .local v9, toXDelta:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_2

    .line 475
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    .line 476
    const/4 v2, 0x0

    .line 477
    const/4 v3, 0x0

    .line 478
    int-to-float v4, v9

    .line 479
    const/4 v5, 0x0

    .line 480
    const/4 v6, 0x0

    .line 481
    const/4 v7, 0x0

    .line 482
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 475
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    if-nez v0, :cond_3

    .line 486
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    .line 489
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 490
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    mul-int/lit16 v1, p1, 0x3e8

    add-int/lit8 v1, v1, -0x32

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 491
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    mul-int/lit16 v1, p1, 0x3e8

    add-int/lit8 v1, v1, -0x32

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 492
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 493
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 495
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->start()V

    .line 496
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->start()V

    .line 498
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_5

    .line 499
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->cancel()V

    .line 502
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 503
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 504
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 506
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_7

    .line 507
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 508
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->cancel()V

    .line 510
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 512
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 514
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-nez v0, :cond_0

    .line 515
    new-instance v0, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F

    .line 516
    iget v2, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F

    const/high16 v3, 0x43b4

    sub-float/2addr v2, v3

    .line 517
    const/4 v3, 0x1

    .line 518
    const/high16 v4, 0x3f00

    .line 519
    const/4 v5, 0x1

    .line 520
    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;-><init>(FFIFIF)V

    .line 515
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 522
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setRepeatCount(I)V

    .line 523
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setDuration(J)V

    .line 524
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mRotateAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 525
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method private _TimerLineMoving(I)V
    .locals 9
    .parameter "pointX"

    .prologue
    const/4 v8, 0x0

    .line 404
    move v4, p1

    .line 406
    .local v4, x:I
    iget v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v6

    sub-int v1, v5, v6

    .line 407
    .local v1, leftPoint:I
    iget v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v6

    sub-int v2, v5, v6

    .line 408
    .local v2, rightPoint:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getTop()I

    move-result v3

    .line 409
    .local v3, topPoint:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 411
    .local v0, bottomPoint:I
    if-gez v1, :cond_5

    .line 412
    const/4 v1, 0x0

    .line 413
    iget v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    add-int v2, v1, v5

    .line 421
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v1

    .line 423
    iget-object v7, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRotateOutLine:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    .line 421
    invoke-virtual {v5, v6, v3, v7, v0}, Landroid/widget/ImageView;->layout(IIII)V

    .line 425
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRotateOutLine:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 426
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRotateOutLine:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 428
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRemain:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 429
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRemain:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v5, v8}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 432
    :cond_2
    iget v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 433
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_3

    .line 434
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 438
    :cond_3
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_4

    .line 439
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v5, v8}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 441
    :cond_4
    return-void

    .line 414
    :cond_5
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v5

    iget v6, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    if-le v4, v5, :cond_0

    .line 415
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getRight()I

    move-result v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v6

    sub-int v2, v5, v6

    .line 416
    iget v5, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iShutterWidth:I

    sub-int v1, v2, v5

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ShutterIconMoving(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 666
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetTimerLayout()V

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetRelatedAnimation()V

    return-void
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)I
    .locals 1
    .parameter

    .prologue
    .line 47
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    return v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iLastTimerCount:I

    return-void
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/controller/ShutterTimer;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F

    return-void
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    return-void
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    return-void
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/ui/RotateImageView;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_TimerLineMoving(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 721
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_SetRotateTimerDegree(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_SetTimerCount(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetTimerMode()V

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/controller/ShutterTimer;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_StartTimerShotAnimation(III)V

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_SetTimerLayout()V

    return-void
.end method


# virtual methods
.method public CancelShutterTimer()V
    .locals 1

    .prologue
    .line 237
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetTimerMode()V

    .line 238
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetRelatedAnimation()V

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iLastTimerCount:I

    .line 240
    return-void
.end method

.method public Init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;-><init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mRotateAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;-><init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mRotateAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->main_shutter_button_layout:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->shutter_frame:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterFrame:Landroid/widget/FrameLayout;

    .line 183
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 184
    sget v1, Lcom/pantech/app/vegacamera/R$id;->shutter_timer_remain_rotate_timer_outline:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 183
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRotateOutLine:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->shutter_timer_remain_rotate_timer:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 186
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->shutter_timer_remain:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRemain:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 187
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->timer_line:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_MAIN_SHUTTER:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 189
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->ID_SUB_SHUTTER:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/ShutterButton;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bSubShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 190
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->shutter_timer_arrow:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerArrow:Landroid/widget/ImageView;

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iOldRawX:I

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iCurrentDegree:F

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iLastTimerCount:I

    .line 194
    return-void
.end method

.method public IsTimerActionStarted()Z
    .locals 2

    .prologue
    .line 842
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public IsTimerLayoutSet()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 846
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public OperateShutterTimerAction(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x1

    .line 203
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, msg:Landroid/os/Message;
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    if-ne v1, v3, :cond_1

    .line 205
    iput v3, v0, Landroid/os/Message;->what:I

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 208
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 209
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_OperateTimerAction()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 211
    iput v3, v0, Landroid/os/Message;->what:I

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 214
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_OperateTimerAction()V

    goto :goto_0
.end method

.method public Release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_RemoveMessages()V

    .line 245
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 248
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 249
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/TranslateAnimation;->reset()V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    if-eqz v0, :cond_1

    .line 254
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->cancel()V

    .line 256
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0}, Landroid/view/animation/ScaleAnimation;->reset()V

    .line 260
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetTimerLayout()V

    .line 262
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_move:Landroid/view/animation/TranslateAnimation;

    .line 263
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->timer_line_scale:Landroid/view/animation/ScaleAnimation;

    .line 265
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_2

    .line 266
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->cancel()V

    .line 269
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mPositiveRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 272
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    if-eqz v0, :cond_3

    .line 273
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;->cancel()V

    .line 276
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mNegativeRotateAnim:Lcom/pantech/app/vegacamera/ui/ShutterRotateAnimation;

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-eqz v0, :cond_4

    .line 281
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setAnimation(Landroid/view/animation/Animation;)V

    .line 283
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 284
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 286
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRotateOutLine:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 287
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRotateOutLine:Landroid/widget/ImageView;

    .line 289
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_7

    .line 290
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 291
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterTimerRotate:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 293
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRemain:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_8

    .line 294
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vShutterTimerRemain:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 296
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_9

    .line 297
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterFrame:Landroid/widget/FrameLayout;

    .line 299
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_a

    .line 300
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterButtonLayout:Landroid/widget/RelativeLayout;

    .line 302
    :cond_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 303
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerLine:Landroid/widget/ImageView;

    .line 305
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-eqz v0, :cond_c

    .line 306
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bMainShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 308
    :cond_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bSubShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    if-eqz v0, :cond_d

    .line 309
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->bSubShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;

    .line 311
    :cond_d
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mRotateAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

    if-eqz v0, :cond_e

    .line 312
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mRotateAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$RotateAnimationListener;

    .line 314
    :cond_e
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;

    if-eqz v0, :cond_f

    .line 315
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mShutterAnimationListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;

    .line 317
    :cond_f
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_10

    .line 318
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->vTimerArrow:Landroid/widget/ImageView;

    .line 320
    :cond_10
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    if-eqz v0, :cond_11

    .line 321
    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    .line 323
    :cond_11
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iLastTimerCount:I

    .line 324
    return-void
.end method

.method public SetOnTimerActionListener(Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    .line 167
    return-void
.end method

.method public SetShutterTimerLayout()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public StartShutterTimerShot(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 221
    const-string v1, "ShutterTimer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start() iState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->CancelShutterTimer()V

    .line 224
    const/4 v1, 0x0

    .line 231
    :goto_0
    return v1

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 227
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 229
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_GetShutterLeft()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 230
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 231
    const/4 v1, 0x1

    goto :goto_0
.end method
