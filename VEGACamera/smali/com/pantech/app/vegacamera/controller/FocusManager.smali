.class public Lcom/pantech/app/vegacamera/controller/FocusManager;
.super Ljava/lang/Object;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;,
        Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;
    }
.end annotation


# static fields
.field private static final CLEAR_FOCUS_INDICATOR:I = 0x1

.field private static final CLEAR_FOCUS_INDICATOR_DELAY:I = 0x2bc

.field private static final CLEAR_FOCUS_LOCK_INDICATOR:I = 0x2

.field private static final FOCUS_LOCK_NONE:I = 0x0

.field private static final FOCUS_LOCK_PAUSE:I = 0x3

.field private static final FOCUS_LOCK_START:I = 0x1

.field private static final FOCUS_LOCK_SUCCESS:I = 0x2

.field private static final GOTO_CAPTURE:I = 0x3

.field private static final GOTO_CAPTURE_DELAY:I = 0x1f4

.field private static final RESET_TOUCH_FOCUS:I = 0x0

.field private static final RESET_TOUCH_FOCUS_DELAY:I = 0xfa0

.field public static final STATE_FAIL:I = 0x4

.field public static final STATE_FOCUSING:I = 0x1

.field public static final STATE_FOCUSING_SNAP_ON_FINISH:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SUCCESS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FocusManager"


# instance fields
.field private bFocusLensSound:Z

.field private isFocusLock:Z

.field private isObjTrack:Z

.field private mActivity:Landroid/app/Activity;

.field private mAeAwbLock:Z

.field private mDefaultFocusMode:Ljava/lang/String;

.field private mDisplayOrientation:I

.field private mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

.field private mFocusArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusAreaForFocusLockMargin:[I

.field private mFocusAreaSupported:Z

.field private mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

.field private mFocusIndicatorRotateLayout:Landroid/view/View;

.field private mFocusLockArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusLockExposurePointX:I

.field private mFocusLockExposurePointY:I

.field private mFocusLockFocusPointX:I

.field private mFocusLockFocusPointY:I

.field private mFocusLockState:I

.field private mFocusMode:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private mInitialized:Z

.field mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

.field private mLockAeAwbNeeded:Z

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMeteringArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMeteringAreaSupported:Z

.field private mMeteringLockArea:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation
.end field

.field private mMirror:Z

.field private mOverrideFocusMode:Ljava/lang/String;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreferences:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "activity"
    .parameter "preferences"
    .parameter "defaultFocusMode"

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 92
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    .line 161
    iput-object p2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreferences:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    .line 162
    iput-object p3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    .line 163
    new-instance v0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;-><init>(Lcom/pantech/app/vegacamera/controller/FocusManager;Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    .line 164
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 165
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mActivity:Landroid/app/Activity;

    .line 166
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->isObjTrack:Z

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->bFocusLensSound:Z

    .line 168
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/FocusManager;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 458
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->cancelAutoFocus()V

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/FocusManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/controller/FocusManager;)Lcom/pantech/app/vegacamera/ui/FocusIndicator;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/controller/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->capture()V

    return-void
.end method

.method private autoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 524
    const-string v0, "FocusManager"

    const-string v1, "[FocusManager] Start autofocus."

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->autoFocus()V

    .line 526
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 531
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->UpdateFocusUI()V

    .line 532
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 533
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 534
    return-void
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 459
    const-string v0, "FocusManager"

    const-string v1, "[FocusManager] Cancel autofocus."

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetTouchFocus()V

    .line 467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->cancelAutoFocus()V

    .line 468
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FaceView;->resume()V

    .line 471
    :cond_0
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 472
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->UpdateFocusUI()V

    .line 473
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 475
    return-void
.end method

.method private capture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 538
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedGestureLongTapAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-eq v0, v3, :cond_2

    .line 540
    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusLockState(I)V

    .line 541
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->capture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 547
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FocusManager] Capture() state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 554
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 558
    :cond_0
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 560
    :cond_1
    return-void

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private focusAreaConvertToDriverFormatAndSetLayout(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 427
    const-string v0, "FocusManager"

    const-string v3, "focusAreaConvertToDriverFormatAndSetLayout"

    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 430
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 431
    .local v2, focusHeight:I
    iget v6, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewWidth:I

    .line 432
    .local v6, previewWidth:I
    iget v7, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewHeight:I

    .line 437
    .local v7, previewHeight:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 438
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/controller/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 439
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusManager] mFocusArea x : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 440
    const-string v4, " , focusHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 439
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 443
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/controller/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 444
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusManager] mMeteringArea x : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 445
    const-string v4, " , focusHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 444
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 448
    .local v10, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v0, v1, 0x2

    sub-int v0, p1, v0

    const/4 v3, 0x0

    sub-int v4, v6, v1

    invoke-static {v0, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v9

    .line 449
    .local v9, left:I
    div-int/lit8 v0, v2, 0x2

    sub-int v0, p2, v0

    const/4 v3, 0x0

    sub-int v4, v7, v2

    invoke-static {v0, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v12

    .line 450
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v12, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 452
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 453
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v3, 0x0

    aput v3, v11, v0

    .line 454
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 456
    return-void
.end method

.method private focusLensSoundPlay()V
    .locals 3

    .prologue
    .line 564
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->bFocusLensSound:Z

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/pantech/app/vegacamera/R$raw;->camera_focus:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SoundPlay(Landroid/app/Activity;ILandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 569
    :goto_0
    return-void

    .line 567
    :cond_0
    const-string v0, "FocusManager"

    const-string v1, "focusLensSoundPlay skipped during Recording"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private needAutoFocusCall()Z
    .locals 2

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, focusMode:Ljava/lang/String;
    const-string v1, "infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fixed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 685
    const-string v1, "edof"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onPreviewStopped()V
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 675
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetTouchFocus()V

    .line 677
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->UpdateFocusUI()V

    .line 678
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetSpotExposure()V

    .line 679
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->stopFaceDetection()V

    .line 680
    return-void
.end method

.method private releaseFocusLockValue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 962
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    .line 963
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 965
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 968
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 969
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    .line 971
    :cond_1
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointX:I

    .line 972
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointY:I

    .line 973
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockFocusPointX:I

    .line 974
    iput v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockFocusPointY:I

    .line 975
    return-void
.end method

.method private setFocusLockState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 948
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFocusLockState state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    .line 950
    return-void
.end method

.method private setMatrix()V
    .locals 5

    .prologue
    .line 223
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewHeight:I

    if-eqz v1, :cond_0

    .line 224
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 225
    .local v0, matrix:Landroid/graphics/Matrix;
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMirror:Z

    iget v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mDisplayOrientation:I

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewWidth:I

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewHeight:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->PrepareMatrix(Landroid/graphics/Matrix;ZIII)V

    .line 229
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 230
    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[initialize] mMatrix:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .end local v0           #matrix:Landroid/graphics/Matrix;
    :cond_0
    return-void
.end method


# virtual methods
.method public GetFocusLock()Z
    .locals 1

    .prologue
    .line 944
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->isFocusLock:Z

    return v0
.end method

.method public GetFocusState()I
    .locals 1

    .prologue
    .line 997
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    return v0
.end method

.method public Release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 978
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreferences:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    .line 979
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    .line 980
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    .line 981
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mActivity:Landroid/app/Activity;

    .line 982
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 983
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    .line 984
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    .line 985
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 986
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    .line 987
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    .line 988
    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    .line 989
    return-void
.end method

.method public ResetSpotExposure()V
    .locals 2

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedGestureLongTapAfAeLock()Z

    move-result v0

    if-nez v0, :cond_1

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 601
    const-string v0, "FocusManager"

    const-string v1, "resetSpotExposure()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 605
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->setExposureParameters()V

    goto :goto_0
.end method

.method public ResetTouchFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 572
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mInitialized:Z

    if-nez v2, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->isObjTrack:Z

    if-nez v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 583
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v1

    .line 584
    .local v1, rules:[I
    const/16 v2, 0xd

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 585
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 587
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    goto :goto_0
.end method

.method public SetFocusLensSound(Z)V
    .locals 3
    .parameter "sound"

    .prologue
    .line 992
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetFocusLensSound sound:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->bFocusLensSound:Z

    .line 994
    return-void
.end method

.method public SetFocusLock(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->isFocusLock:Z

    .line 941
    return-void
.end method

.method public UpdateFocusUI()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 611
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->isObjTrack:Z

    if-eqz v1, :cond_1

    .line 612
    const-string v1, "FocusManager"

    const-string v2, "[FocusManager] skipped updateFocusUI() for ObjTrack on Video"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    const-string v1, "FocusManager"

    const-string v2, "[FocusManager] updateFocusUI()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 627
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    if-nez v1, :cond_2

    .line 628
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 639
    :cond_2
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    if-eq v1, v4, :cond_3

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    if-ne v1, v3, :cond_6

    .line 640
    :cond_3
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-eqz v1, :cond_5

    .line 641
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->showStart()V

    .line 642
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    if-nez v1, :cond_4

    .line 643
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    .line 645
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 646
    .local v0, p:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    const/4 v2, 0x0

    iget v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    aput v3, v1, v2

    .line 647
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    aput v2, v1, v4

    goto :goto_0

    .line 649
    .end local v0           #p:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->showStart()V

    goto :goto_0

    .line 659
    :cond_6
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    .line 660
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->setColorExtractionParameters()V

    .line 661
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-eqz v1, :cond_7

    .line 662
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 664
    :cond_7
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->showSuccess()V

    goto :goto_0

    .line 666
    :cond_8
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 667
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->setColorExtractionParameters()V

    .line 668
    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->showFail()V

    goto :goto_0
.end method

.method public calculateFocusLockTapArea(II)V
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x0

    .line 494
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 495
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 496
    .local v2, focusHeight:I
    iget v6, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewWidth:I

    .line 497
    .local v6, previewWidth:I
    iget v7, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewHeight:I

    .line 502
    .local v7, previewHeight:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 503
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/controller/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 504
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusManager] mFocusArea x : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 505
    const-string v4, " , focusHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 508
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/controller/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 509
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusManager] mMeteringArea x : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 510
    const-string v4, " , focusHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 509
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    :cond_1
    div-int/lit8 v0, v1, 0x2

    sub-int v0, p1, v0

    sub-int v3, v6, v1

    invoke-static {v0, v11, v3}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v9

    .line 513
    .local v9, left:I
    div-int/lit8 v0, v2, 0x2

    sub-int v0, p2, v0

    sub-int v3, v7, v2

    invoke-static {v0, v11, v3}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v10

    .line 515
    .local v10, top:I
    const-string v0, "FocusManager"

    const-string v3, "instanceof focus lock view"

    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    if-nez v0, :cond_2

    .line 517
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    .line 519
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    aput v9, v0, v11

    .line 520
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaForFocusLockMargin:[I

    const/4 v3, 0x1

    aput v10, v0, v3

    .line 521
    return-void
.end method

.method public calculateTapArea(IIFIIIILandroid/graphics/Rect;)V
    .locals 10
    .parameter "focusWidth"
    .parameter "focusHeight"
    .parameter "areaMultiple"
    .parameter "x"
    .parameter "y"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "rect"

    .prologue
    .line 480
    int-to-float v6, p1

    mul-float/2addr v6, p3

    float-to-int v2, v6

    .line 481
    .local v2, areaWidth:I
    int-to-float v6, p2

    mul-float/2addr v6, p3

    float-to-int v1, v6

    .line 482
    .local v1, areaHeight:I
    div-int/lit8 v6, v2, 0x2

    sub-int v6, p4, v6

    const/4 v7, 0x0

    sub-int v8, p6, v2

    invoke-static {v6, v7, v8}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v3

    .line 483
    .local v3, left:I
    div-int/lit8 v6, v1, 0x2

    sub-int v6, p5, v6

    const/4 v7, 0x0

    sub-int v8, p7, v1

    invoke-static {v6, v7, v8}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v5

    .line 485
    .local v5, top:I
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v5

    add-int v8, v3, v2

    int-to-float v8, v8

    add-int v9, v5, v1

    int-to-float v9, v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 486
    .local v4, rectF:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 487
    move-object/from16 v0, p8

    invoke-static {v4, v0}, Lcom/pantech/app/vegacamera/util/Util;->RectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 489
    const-string v6, "FocusManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[calculateTapArea] rect left:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,top:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,right:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ,bottom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 490
    move-object/from16 v0, p8

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 489
    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public cancelFocusLock()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 785
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 786
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusLockState(I)V

    .line 787
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetTouchFocus()V

    .line 788
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetSpotExposure()V

    .line 789
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->clear()V

    .line 790
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->cancelFocusLock()V

    .line 791
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->releaseFocusLockValue()V

    .line 792
    return-void
.end method

.method public doFocusLock(II)V
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 796
    const-string v0, "FocusManager"

    const-string v3, "doFocusLock()"

    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusLockState(I)V

    .line 802
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockFocusPointX:I

    .line 803
    iput p2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockFocusPointY:I

    .line 804
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointX:I

    .line 805
    iput p2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointY:I

    .line 807
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 808
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->cancelAutoFocus()V

    .line 811
    :cond_3
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusManager] doFocusLock() mFocusLockExposurePointX = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 812
    const-string v4, " mFocusLockExposurePointY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 816
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 817
    .local v2, focusHeight:I
    iget v6, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewWidth:I

    .line 818
    .local v6, previewWidth:I
    iget v7, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewHeight:I

    .line 820
    .local v7, previewHeight:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_4

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    .line 822
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    if-nez v0, :cond_5

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 826
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    if-nez v0, :cond_6

    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    .line 830
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    if-nez v0, :cond_7

    .line 833
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    .line 834
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    new-instance v3, Landroid/hardware/Camera$Area;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 841
    const/high16 v3, 0x3f80

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/controller/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 842
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusManager] doFocusLock FocusLockArea x : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 843
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 842
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 846
    const/high16 v3, 0x3fc0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/controller/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 847
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusManager] doFocusLock mMeteringLockArea x : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 848
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 847
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 853
    .local v10, p:Landroid/widget/RelativeLayout$LayoutParams;
    div-int/lit8 v0, v1, 0x2

    sub-int v0, p1, v0

    const/4 v3, 0x0

    sub-int v4, v6, v1

    invoke-static {v0, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v9

    .line 854
    .local v9, left:I
    div-int/lit8 v0, v2, 0x2

    sub-int v0, p2, v0

    const/4 v3, 0x0

    sub-int v4, v7, v2

    invoke-static {v0, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v12

    .line 855
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v12, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 857
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 858
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v3, 0x0

    aput v3, v11, v0

    .line 859
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 861
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 862
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 863
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 864
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 865
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 866
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 867
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 868
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 871
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->stopFaceDetection()V

    .line 874
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->setFocusParameters()V

    .line 875
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 876
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->autoFocus()V

    goto/16 :goto_0
.end method

.method public doReFocusLock(Z)V
    .locals 13
    .parameter "startPreview"

    .prologue
    .line 888
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusLockState(I)V

    .line 890
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 891
    .local v1, focusWidth:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 892
    .local v2, focusHeight:I
    iget v6, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewWidth:I

    .line 893
    .local v6, previewWidth:I
    iget v7, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewHeight:I

    .line 896
    .local v7, previewHeight:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 897
    .local v10, p_focus:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockFocusPointX:I

    div-int/lit8 v3, v1, 0x2

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    sub-int v4, v6, v1

    invoke-static {v0, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v9

    .line 898
    .local v9, left:I
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockFocusPointY:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    const/4 v3, 0x0

    sub-int v4, v7, v2

    invoke-static {v0, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->clamp(III)I

    move-result v12

    .line 899
    .local v12, top:I
    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {v10, v9, v12, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 901
    invoke-virtual {v10}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v11

    .line 902
    .local v11, rules:[I
    const/16 v0, 0xd

    const/4 v3, 0x0

    aput v3, v11, v0

    .line 903
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 907
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusManager] doReFocusLock() mFocusLockExposurePointX = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 908
    const-string v4, " mFocusLockExposurePointY = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 907
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 910
    const/high16 v3, 0x3fc0

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointX:I

    iget v5, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointY:I

    .line 911
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v8, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    move-object v0, p0

    .line 910
    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/controller/FocusManager;->calculateTapArea(IIFIIIILandroid/graphics/Rect;)V

    .line 912
    const-string v0, "FocusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusManager] doReFocusLock mMeteringLockArea x : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointX:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 913
    iget v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockExposurePointY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusWidth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , focusHeight : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 912
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->stopFaceDetection()V

    .line 920
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->setFocusParameters()V

    .line 922
    if-eqz p1, :cond_2

    .line 923
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_1

    .line 924
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->autoFocus()V

    .line 936
    :cond_1
    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusLockState(I)V

    .line 937
    return-void

    .line 927
    :cond_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 928
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    if-eqz v0, :cond_3

    .line 929
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FaceView;->pause()V

    .line 931
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->UpdateFocusUI()V

    .line 932
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public doSnap()V
    .locals 2

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mInitialized:Z

    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->needAutoFocusCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 411
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->capture()V

    goto :goto_0

    .line 412
    :cond_3
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 416
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    goto :goto_0

    .line 417
    :cond_4
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    if-nez v0, :cond_0

    .line 422
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->capture()V

    goto :goto_0
.end method

.method public getAeAwbLock()Z
    .locals 1

    .prologue
    .line 703
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mAeAwbLock:Z

    return v0
.end method

.method public getFocusArea()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 707
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedGestureLongTapAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockArea:Ljava/util/List;

    .line 719
    :goto_0
    return-object v0

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 712
    const-string v1, "FocusManager"

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "[FocusManager] getFocusArea() focus areas = left : "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " top = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 714
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " right = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bottom = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 715
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 713
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    goto :goto_0

    .line 717
    :cond_1
    const-string v0, "FocusManager"

    const-string v1, "[FocusManager] getFocusArea() focus area null"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 740
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 774
    :goto_0
    return-object v0

    .line 745
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedGestureLongTapAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-eqz v0, :cond_1

    .line 746
    const-string v0, "auto"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 747
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FocusManager] FocusLock focus mode auto return getFocusMode() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 751
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mInLongPress:Z

    if-eqz v0, :cond_4

    .line 754
    const-string v0, "auto"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 765
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 768
    const-string v0, "auto"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 769
    const-string v0, "auto"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 774
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_0

    .line 755
    :cond_4
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 757
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v0

    if-nez v0, :cond_2

    .line 758
    const-string v0, "auto"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 759
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FocusManager] NOT ISP getFocusMode() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 762
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreferences:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    const-string v1, "pref_focus_mode_status"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    .line 763
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FocusManager] mDefaultFocusMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mDefaultFocusMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " || mPreferences = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreferences:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 771
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusMode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getMeteringArea()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 724
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedGestureLongTapAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringLockArea:Ljava/util/List;

    .line 735
    :goto_0
    return-object v0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 729
    const-string v1, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "[FocusManager] getMeteringAreas() metering areas = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 730
    const-string v2, " left = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " right = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " top = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 731
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    goto :goto_0

    .line 733
    :cond_1
    const-string v0, "FocusManager"

    const-string v1, "[FocusManager] getMeteringAreas() metering area null"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public initialize(Landroid/view/View;Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;Z)V
    .locals 2
    .parameter "focusIndicatorRotate"
    .parameter "listener"
    .parameter "mirror"

    .prologue
    .line 188
    const-string v0, "FocusManager"

    const-string v1, "[FocusManager] initialize"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-nez p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    .line 193
    iput-object p2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    .line 194
    invoke-virtual {p0, p3}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setMirror(Z)V

    .line 195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setDisplayOrientation(I)V

    goto :goto_0
.end method

.method public initializeParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "parameters"

    .prologue
    const/4 v1, 0x1

    .line 172
    const-string v0, "FocusManager"

    const-string v2, "initializeParameters()"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 174
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaSupported:Z

    .line 175
    const-string v0, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[FocusManager] mFocusAreaSupported = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Util;->IsMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringAreaSupported:Z

    .line 177
    const-string v0, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[FocusManager] mMeteringAreaSupported = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringAreaSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Util;->IsAELockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Util;->IsAWBLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mLockAeAwbNeeded:Z

    .line 179
    const-string v0, "FocusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[FocusManager] mLockAeAwbNeeded = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mLockAeAwbNeeded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_1

    .line 181
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mInitialized:Z

    .line 185
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 178
    goto :goto_0

    .line 183
    :cond_1
    const-string v0, "FocusManager"

    const-string v1, "[FocusManager] mParameters is not initialized."

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onAutoFocus(Z)V
    .locals 6
    .parameter "focused"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 349
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedGestureLongTapAfAeLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-ne v0, v3, :cond_0

    .line 350
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusLockState(I)V

    .line 352
    :cond_0
    if-eqz p1, :cond_1

    .line 353
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->focusLensSoundPlay()V

    .line 355
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    if-ne v0, v1, :cond_5

    .line 359
    if-eqz p1, :cond_4

    .line 360
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 364
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->UpdateFocusUI()V

    .line 365
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-nez v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    :cond_3
    :goto_1
    return-void

    .line 362
    :cond_4
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    goto :goto_0

    .line 370
    :cond_5
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    if-ne v0, v3, :cond_3

    .line 374
    if-eqz p1, :cond_7

    .line 375
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 384
    :goto_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->UpdateFocusUI()V

    .line 385
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-nez v0, :cond_8

    .line 386
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 393
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-nez v0, :cond_3

    .line 394
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 381
    :cond_7
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    goto :goto_2

    .line 387
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_6

    .line 388
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3
.end method

.method public onCenterFocus(Z)Z
    .locals 7
    .parameter "DeviceStartFlag"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 285
    const-string v5, "FocusManager"

    const-string v6, "onCenterFocus()"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicatorRotateLayout:Landroid/view/View;

    if-nez v5, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v3

    .line 290
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ui/FaceView;->faceExists()Z

    move-result v5

    if-eqz v5, :cond_7

    move v0, v4

    .line 291
    .local v0, faceExists:Z
    :goto_1
    if-nez v0, :cond_2

    .line 292
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 295
    :cond_2
    if-eqz p1, :cond_5

    .line 296
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 297
    const-string v5, "continuous-picture"

    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 301
    :cond_3
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mInitialized:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 306
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v5, 0x3

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    .line 307
    :cond_4
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->cancelAutoFocus()V

    .line 316
    :cond_5
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewWidth:I

    div-int/lit8 v1, v3, 0x2

    .line 317
    .local v1, x:I
    iget v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewHeight:I

    div-int/lit8 v2, v3, 0x2

    .line 320
    .local v2, y:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v3, :cond_6

    if-eqz p1, :cond_6

    .line 321
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    .line 322
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v5, v6, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 324
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v5, Landroid/hardware/Camera$Area;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v5, v6, v4}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    :cond_6
    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/controller/FocusManager;->focusAreaConvertToDriverFormatAndSetLayout(II)V

    .line 329
    if-eqz p1, :cond_8

    .line 331
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->stopFaceDetection()V

    .line 334
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->setFocusParameters()V

    .line 336
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->autoFocus()V

    :goto_2
    move v3, v4

    .line 345
    goto/16 :goto_0

    .end local v0           #faceExists:Z
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_7
    move v0, v3

    .line 290
    goto/16 :goto_1

    .line 338
    .restart local v0       #faceExists:Z
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_8
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetTouchFocus()V

    .line 339
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->stopFaceDetection()V

    .line 340
    iput v4, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 342
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->UpdateFocusUI()V

    goto :goto_2
.end method

.method public onFocusReleased()V
    .locals 1

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->onPreviewStopped()V

    .line 779
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusLockState:I

    if-eqz v0, :cond_0

    .line 780
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->cancelFocusLock()V

    .line 782
    :cond_0
    return-void
.end method

.method public onSpotFocus(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x1

    .line 254
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSpotFocus() x = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 261
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->cancelAutoFocus()V

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    if-nez v0, :cond_4

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    .line 266
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMeteringArea:Ljava/util/List;

    new-instance v1, Landroid/hardware/Camera$Area;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/FocusManager;->focusAreaConvertToDriverFormatAndSetLayout(II)V

    .line 274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->stopFaceDetection()V

    .line 277
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->setFocusParameters()V

    .line 278
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->autoFocus()V

    goto :goto_0
.end method

.method public overrideFocusMode(Ljava/lang/String;)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 695
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mOverrideFocusMode:Ljava/lang/String;

    .line 696
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 690
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 691
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 692
    return-void
.end method

.method public setAeAwbLock(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 699
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mAeAwbLock:Z

    .line 700
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "displayOrientation"

    .prologue
    .line 199
    const-string v0, "FocusManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisplayOrientation() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    if-eqz p1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mDisplayOrientation:I

    .line 204
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setMatrix()V

    goto :goto_0
.end method

.method public setFocusIndicator(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->setVisibility(I)V

    .line 239
    :cond_0
    instance-of v0, p1, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    if-eqz v0, :cond_2

    .line 240
    check-cast p1, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    .end local p1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    .line 241
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->setVisibility(I)V

    .line 251
    :cond_1
    :goto_0
    return-void

    .line 242
    .restart local p1
    :cond_2
    instance-of v0, p1, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    if-eqz v0, :cond_3

    .line 243
    check-cast p1, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    .end local p1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    .line 244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->setVisibility(I)V

    goto :goto_0

    .line 245
    .restart local p1
    :cond_3
    instance-of v0, p1, Lcom/pantech/app/vegacamera/ui/OjtView;

    if-eqz v0, :cond_4

    .line 246
    check-cast p1, Lcom/pantech/app/vegacamera/ui/OjtView;

    .end local p1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    goto :goto_0

    .line 247
    .restart local p1
    :cond_4
    instance-of v0, p1, Lcom/pantech/app/vegacamera/ui/FaceView;

    if-eqz v0, :cond_1

    .line 248
    check-cast p1, Lcom/pantech/app/vegacamera/ui/FaceView;

    .end local p1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 2
    .parameter "mirror"

    .prologue
    .line 217
    const-string v0, "FocusManager"

    const-string v1, "setMirror()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mMirror:Z

    .line 219
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setMatrix()V

    .line 220
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 2
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 208
    const-string v0, "FocusManager"

    const-string v1, "setPreviewSize()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewHeight:I

    if-eq v0, p2, :cond_1

    .line 210
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewWidth:I

    .line 211
    iput p2, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mPreviewHeight:I

    .line 212
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setMatrix()V

    .line 214
    :cond_1
    return-void
.end method

.method public stopFocusLock()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 953
    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mState:I

    .line 954
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusLockState(I)V

    .line 955
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetSpotExposure()V

    .line 956
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetTouchFocus()V

    .line 957
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->cancelAutoFocus()V

    .line 958
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->releaseFocusLockValue()V

    .line 959
    return-void
.end method
