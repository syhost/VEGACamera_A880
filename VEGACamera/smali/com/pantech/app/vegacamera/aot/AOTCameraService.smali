.class public Lcom/pantech/app/vegacamera/aot/AOTCameraService;
.super Landroid/alwaysontopservice/AlwaysOnTopService;
.source "AOTCameraService.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;
    }
.end annotation


# static fields
.field public static CameraStarted:Z = false

.field private static final DIALOG_DISPTIME_EVENT:I = 0xb

.field private static final FINISH_AOT:I = 0xa

.field private static final SHOW_ERROR_OTHER_CAMERA:I = 0xc

.field private static final TAG:Ljava/lang/String; = "AOTCamera"

.field private static mSilentMode:Z


# instance fields
.field private AOTMode:I

.field private actionBtn:Landroid/widget/ImageView;

.field private closeBtn:Landroid/widget/ImageView;

.field private deltaHeight:F

.field private deltaWidth:F

.field public isFinishing:Z

.field private mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

.field private mAOTdiaCameraLog:Landroid/alwaysontopservice/AlwaysOnTopWindow;

.field private mAOTwindow:Landroid/view/Window;

.field private mActionBtnListner:Landroid/view/View$OnClickListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCloseBtnListner:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mOldOrientation:I

.field private mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

.field private mSizeController:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

.field private rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->CameraStarted:Z

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;-><init>()V

    .line 43
    iput-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    .line 46
    iput v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->AOTMode:I

    .line 56
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    .line 58
    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->deltaWidth:F

    .line 59
    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->deltaHeight:F

    .line 451
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    .line 527
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService$2;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mActionBtnListner:Landroid/view/View$OnClickListener;

    .line 545
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService$3;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mCloseBtnListner:Landroid/view/View$OnClickListener;

    .line 577
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCameraService;Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Lcom/pantech/app/vegacamera/aot/AOTLayout;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Lcom/pantech/app/vegacamera/aot/AOTCamera;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->startCameraActivity()V

    return-void
.end method

.method private createConfiguration()V
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 316
    .local v0, mConfiguration:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mOldOrientation:I

    .line 317
    return-void
.end method

.method private createContentview()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 320
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->aot_camera:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getLayoutInflater(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/aot/AOTLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    .line 321
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getMoveListener()Landroid/view/View$OnTouchListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setMoveListner(Landroid/view/View$OnTouchListener;)V

    .line 323
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setResizeListener(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;)V

    .line 325
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->aot_resizeBtn_Framelayout:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSizeController:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    .line 326
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSizeController:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->setOnSizeChangeListener(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;)V

    .line 328
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->aot_actionBtn:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    .line 329
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mActionBtnListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    :try_start_0
    const-string v1, "AOTCamera"

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AOTCameraService] createContentview :dssfsf "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "rear_touch"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "rear_touch"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 336
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 337
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 338
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestFocus()Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->aot_closeBtn:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    .line 346
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mCloseBtnListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 348
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setFocusableInTouchMode(Z)V

    .line 349
    return-void

    .line 340
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setFocusable(Z)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    goto :goto_0
.end method

.method private destroyAllView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSizeController:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->setOnSizeChangeFinish()V

    .line 353
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSizeController:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->setOnSizeChangeListener(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;)V

    .line 355
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    .line 358
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSizeController:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;

    .line 359
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    .line 360
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    .line 361
    return-void
.end method

.method private initAOTWindow()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->setTitleBarLayout()V

    .line 311
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->setMainBGLayout()V

    .line 312
    return-void
.end method

.method private isWiredHeadsetOn()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    .line 524
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setChangedWindowSize()V
    .locals 8

    .prologue
    .line 384
    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 386
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v2, v5, -0xa

    .line 387
    .local v2, mPreviousWidth:I
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 388
    .local v1, mPreviousHeight:I
    const-string v5, "AOTCamera"

    const-string v6, "****************************setWindowSize*************************"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v5, "AOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[setWindowSize]mPreviousWidth : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v5, "AOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[setWindowSize]mPreviousHeight : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v5, "AOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[setWindowSize]degree : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getDisplayRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    if-ge v1, v2, :cond_0

    .line 395
    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->aot_land_display_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v4, v5

    .line 396
    .local v4, width:F
    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->aot_land_display_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    .line 402
    .local v0, height:F
    :goto_0
    const-string v5, "AOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[setWindowSize]defaultWidth : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v5, "AOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[setWindowSize]defaultHeight : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    int-to-float v5, v2

    sub-float/2addr v5, v4

    iput v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->deltaWidth:F

    .line 406
    int-to-float v5, v1

    sub-float/2addr v5, v0

    iput v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->deltaHeight:F

    .line 408
    const-string v5, "AOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[setWindowSize]deltaWidth : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->deltaWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v5, "AOTCamera"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[setWindowSize]deltaHeight : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->deltaHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void

    .line 398
    .end local v0           #height:F
    .end local v4           #width:F
    :cond_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->aot_port_display_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v4, v5

    .line 399
    .restart local v4       #width:F
    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->aot_port_display_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    .restart local v0       #height:F
    goto :goto_0
.end method

.method private setMainBGLayout()V
    .locals 2

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getAlwaysOnTopBG()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 377
    .local v0, mainLayout:Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    return-void
.end method

.method private setTitleBarLayout()V
    .locals 4

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getTitleBar()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 365
    .local v0, mTitleBarLayout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 368
    .local v1, titlebar_param:Landroid/widget/LinearLayout$LayoutParams;
    iget v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->AOTMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 369
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 371
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 372
    return-void
.end method

.method private startCameraActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 475
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    .line 476
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 479
    const/high16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 487
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    .line 494
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 3

    .prologue
    .line 509
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 510
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSilentMode:Z

    .line 515
    :cond_1
    const-string v0, "AOTCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Panorama] updateRingerMode() :: mSilentMode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mSilentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void

    .line 513
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OnMediaState(II)V
    .locals 4
    .parameter "type"
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 110
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-eqz v0, :cond_0

    .line 128
    :goto_0
    return-void

    .line 114
    :cond_0
    const-string v0, "AOTCamera"

    const-string v1, "[AOTCameraService] ======================================================="

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v0, "AOTCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTCameraService]  OnMediaState() type : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "AOTCamera"

    const-string v1, "[AOTCameraService] ======================================================="

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    .line 119
    const/16 v0, 0x73

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->showAOTErrorNFinish(I)V

    .line 127
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnMediaState(II)V

    goto :goto_0

    .line 120
    :cond_2
    if-ne p1, v3, :cond_1

    if-ne p2, v3, :cond_1

    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    if-eqz v0, :cond_3

    .line 122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->onDestroyCamera()V

    .line 124
    :cond_3
    const/16 v0, 0x72

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->showAOTErrorNFinish(I)V

    goto :goto_1
.end method

.method public OnTitleMoveStart()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getScaleState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 292
    :cond_0
    const-string v0, "AOTCamera"

    const-string v1, "[AOTCameraService] OnTitleMoveStart"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-super {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnTitleMoveStart()V

    goto :goto_0
.end method

.method public OnTitleMoveStop()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "AOTCamera"

    const-string v1, "[AOTCameraService] OnTitleMoveStop"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-super {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->OnTitleMoveStop()V

    .line 300
    return-void
.end method

.method public ResizeWindow(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->resizeLayout(FF)V

    .line 179
    :cond_0
    return-void
.end method

.method public abandonAudioFocus()V
    .locals 2

    .prologue
    .line 504
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 506
    :cond_0
    return-void
.end method

.method public changeGUIOrientationAndCameraPreview()V
    .locals 1

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-nez v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->closeCamera()V

    .line 154
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->setAlwaysOnViewChanged()V

    .line 156
    :cond_0
    return-void
.end method

.method public getDisplayRotation()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTwindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 210
    .local v0, rotation:I
    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    :pswitch_0
    return v1

    .line 214
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 216
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 218
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getRunningMediatype()I
    .locals 3

    .prologue
    .line 131
    const/4 v0, -0x1

    .line 132
    .local v0, type:I
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    if-eqz v1, :cond_1

    .line 133
    const-string v1, "AOTCamera"

    const-string v2, "[AOTCameraService] isMediaRunning(AlwaysOnTopManager.TYPE_CAMERA)"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    .line 139
    :cond_0
    :goto_0
    return v0

    .line 135
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isMediaRunning(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, "AOTCamera"

    const-string v2, "[AOTCameraService] isMediaRunning(AlwaysOnTopManager.TYPE_PLAYER)"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchCameraAlwaysOnView()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-direct {v0, v1, p0, v2}, Lcom/pantech/app/vegacamera/aot/AOTCamera;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/aot/AOTCameraService;Lcom/pantech/app/vegacamera/aot/AOTLayout;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    .line 304
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->onCreateCamera()V

    .line 307
    return-void
.end method

.method public onAOTCameraActivityListener(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 574
    const-string v0, "AOTCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTCameraService] onAOTCameraActivityListener : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 160
    const-string v0, "AOTCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTCameraService] onConfigurationChanged : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-eqz v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 165
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->removeMessages()V

    .line 168
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->changeGUIOrientationAndCameraPreview()V

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->createConfiguration()V

    .line 173
    invoke-super {p0, p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    const/high16 v3, 0x100

    .line 71
    const-string v1, "AOTCamera"

    const-string v2, "[AOTCameraService] onCreate"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-eqz v1, :cond_0

    .line 105
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-super {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onCreate()V

    .line 78
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/alwaysontopservice/AlwaysOnTopWindow;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTdiaCameraLog:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    .line 81
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTdiaCameraLog:Landroid/alwaysontopservice/AlwaysOnTopWindow;

    invoke-virtual {v1}, Landroid/alwaysontopservice/AlwaysOnTopWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTwindow:Landroid/view/Window;

    .line 83
    invoke-static {p0}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->setCameraActivityStateListener(Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;)V

    .line 86
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTwindow:Landroid/view/Window;

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 89
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->createContentview()V

    .line 90
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->createConfiguration()V

    .line 92
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getRunningMediatype()I

    move-result v0

    .line 93
    .local v0, type:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 94
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 95
    const/16 v1, 0x74

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->showAOTErrorNFinish(I)V

    .line 104
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->updateRingerMode()V

    goto :goto_0

    .line 97
    :cond_1
    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->showAOTErrorNFinish(I)V

    goto :goto_1

    .line 99
    :cond_2
    if-nez v0, :cond_3

    .line 100
    const/16 v1, 0x73

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->showAOTErrorNFinish(I)V

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->launchCameraAlwaysOnView()V

    goto :goto_1
.end method

.method public onCreateAlwaysOnView()Landroid/view/View;
    .locals 3

    .prologue
    .line 263
    const-string v1, "AOTCamera"

    const-string v2, "[AOTCameraService] onCreateAlwaysOnView"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-eqz v1, :cond_1

    .line 266
    const/4 v0, 0x0

    .line 275
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->initAOTWindow()V

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, AOTView:Landroid/view/View;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->getAOTCameraView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateTitleBarExView()Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 439
    const/4 v0, 0x0

    .line 441
    .local v0, titleBar:Landroid/view/View;
    iget v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->AOTMode:I

    if-eq v2, v3, :cond_0

    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, titletxt:Landroid/widget/TextView;
    const-string v2, "Camera"

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->setTitleText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getTitleView()Landroid/view/View;

    move-result-object v1

    .end local v1           #titletxt:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 445
    .restart local v1       #titletxt:Landroid/widget/TextView;
    const/high16 v2, 0x4198

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 446
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->setMiniModeBtnVisibility(I)V

    .line 448
    .end local v1           #titletxt:Landroid/widget/TextView;
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 252
    const-string v0, "AOTCamera"

    const-string v1, "[AOTCameraService] onDestroy"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    .line 254
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->destroyAllView()V

    .line 256
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->abandonAudioFocus()V

    .line 257
    invoke-super {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onDestroy()V

    .line 258
    return-void
.end method

.method public onFinishAlwaysOnView()V
    .locals 2

    .prologue
    .line 234
    const-string v0, "AOTCamera"

    const-string v1, "[AOTCameraService] onFinishAlwaysOnView"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    .line 238
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->setCameraActivityStateListener(Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;)V

    .line 240
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->onPauseCamera()V

    .line 244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->onDestroyCamera()V

    .line 247
    :cond_0
    invoke-super {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->onFinishAlwaysOnView()V

    .line 248
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 601
    packed-switch p1, :pswitch_data_0

    .line 606
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 604
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 611
    packed-switch p1, :pswitch_data_0

    .line 616
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 614
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onStartAlwaysOnView(Z)V
    .locals 3
    .parameter "restarting"

    .prologue
    .line 225
    const-string v0, "AOTCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTCameraService] onStartAlwaysOnView : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-eqz v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-super {p0, p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->onStartAlwaysOnView(Z)V

    goto :goto_0
.end method

.method public onTopButtonClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 559
    if-eqz p1, :cond_0

    .line 560
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 561
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mActionBtnListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 562
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 563
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mCloseBtnListner:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    :goto_0
    return-void

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 566
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->actionBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 568
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->closeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasFocus"

    .prologue
    const/high16 v4, 0x3f80

    .line 183
    const-string v1, "AOTCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AOTCameraService] onWindowFocusedChanged : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-eqz v1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-super {p0, p1}, Landroid/alwaysontopservice/AlwaysOnTopService;->onWindowFocusChanged(Z)V

    .line 191
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->getAOTCameraView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTwindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 194
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_2

    .line 195
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 199
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTwindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 201
    if-eqz p1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setVisibilityIcon(Z)V

    goto :goto_0

    .line 197
    :cond_2
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    goto :goto_1
.end method

.method public requestAudioFocus()V
    .locals 4

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 501
    :cond_0
    return-void
.end method

.method public setAlwaysOnViewChanged()V
    .locals 3

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 416
    .local v0, AOTView:Landroid/view/View;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->setChangedWindowSize()V

    .line 418
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->destroyAllView()V

    .line 419
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->createContentview()V

    .line 420
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->setAOTCameraView(Lcom/pantech/app/vegacamera/aot/AOTLayout;)V

    .line 422
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->destoryAllView()V

    .line 423
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->createContentView()V

    .line 426
    iget v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->deltaHeight:F

    iget v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->deltaWidth:F

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->ResizeWindow(FF)V

    .line 428
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->getAOTCameraView()Landroid/view/View;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->initAOTWindow()V

    .line 433
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->setAlwaysOnView(Landroid/view/View;)V

    .line 435
    :cond_0
    return-void
.end method

.method public showAOTErrorNFinish(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x1

    .line 143
    const-string v0, "AOTCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTCameraService] showAOTCameraErrorAndFinish() :: stateId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    .line 147
    invoke-static {p0, p1, v3}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 149
    return-void
.end method

.method public updateAlwaysOnView()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "AOTCamera"

    const-string v1, "[AOTCameraService] updateAlwaysOnView"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-eqz v0, :cond_0

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-super {p0}, Landroid/alwaysontopservice/AlwaysOnTopService;->updateAlwaysOnView()V

    goto :goto_0
.end method
