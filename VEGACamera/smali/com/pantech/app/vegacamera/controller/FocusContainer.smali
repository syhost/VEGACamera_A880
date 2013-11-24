.class public Lcom/pantech/app/vegacamera/controller/FocusContainer;
.super Ljava/lang/Object;
.source "FocusContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;,
        Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;
    }
.end annotation


# static fields
.field public static final MODE_AF:I = 0x2

.field public static final MODE_AF_ING:I = 0x3

.field public static final MODE_CAF:I = 0x0

.field public static final MODE_CAF_ING:I = 0x1

.field public static final MODE_EXPOSURE:I = 0x6

.field public static final MODE_FACE_FOCUS:I = 0x5

.field public static final MODE_OJT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FocusContainer"


# instance fields
.field private bFocusAreaSupported:Z

.field private bNeedToSkipFocusSound:Z

.field private mDisplayOrientation:I

.field private mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

.field private mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

.field private mFocusLockIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

.field private mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

.field private mFocusMode:I

.field private mHandler:Landroid/os/Handler;

.field private mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

.field private mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

.field private mMyFocusListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;

.field private mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/controller/LayoutControl;)V
    .locals 11
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v10, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v10, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 27
    iput-object v10, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    .line 28
    iput-object v10, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    .line 29
    iput-object v10, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mMyFocusListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;

    .line 30
    iput-object v10, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    .line 31
    iput-object v10, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusLockIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    .line 32
    iput-object v10, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    .line 33
    iput-object v10, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    .line 50
    iput v5, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 52
    iput-object v10, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mHandler:Landroid/os/Handler;

    .line 79
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    .line 81
    new-instance v4, Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 82
    iget-object v7, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v7, v7, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v7

    .line 83
    iget-object v8, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v8, v8, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v9, Lcom/pantech/app/vegacamera/R$string;->pref_focus_mode_default:I

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Lcom/pantech/app/vegacamera/controller/FocusManager;-><init>(Landroid/app/Activity;Lcom/pantech/app/vegacamera/preference/ComboPreferences;Ljava/lang/String;)V

    .line 81
    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    .line 84
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$id;->focus_indicator:I

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    .line 85
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->init(Landroid/content/Context;)V

    .line 86
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$id;->focus_lock_indicator:I

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusLockIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    .line 87
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusLockIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->init(Landroid/content/Context;)V

    .line 89
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$id;->ojt_view:I

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/ui/OjtView;

    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    .line 90
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v6, v6, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/ui/OjtView;->init(Landroid/content/Context;)V

    .line 91
    new-instance v4, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;

    invoke-direct {v4, p0, v10}, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;-><init>(Lcom/pantech/app/vegacamera/controller/FocusContainer;Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;)V

    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mMyFocusListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;

    .line 92
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$id;->focus_indicator_rotate_layout:I

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 93
    .local v1, focusLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v0

    .line 94
    .local v0, cameraId:I
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v4

    aget-object v2, v4, v0

    .line 95
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v3, :cond_1

    .line 96
    .local v3, mirror:Z
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mMyFocusListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;

    invoke-virtual {v4, v1, v5, v3}, Lcom/pantech/app/vegacamera/controller/FocusManager;->initialize(Landroid/view/View;Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;Z)V

    .line 97
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->GetRotateControlInstance()Lcom/pantech/app/vegacamera/controller/RotateControl;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 98
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsFocusLensSound()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/controller/FocusManager;->SetFocusLensSound(Z)V

    .line 100
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->bFocusAreaSupported:Z

    .line 103
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mHandler:Landroid/os/Handler;

    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 104
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mHandler:Landroid/os/Handler;

    .line 106
    :cond_0
    return-void

    .end local v3           #mirror:Z
    :cond_1
    move v3, v5

    .line 95
    goto :goto_0
.end method

.method private DoReFocusLock()V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->doReFocusLock(Z)V

    .line 425
    return-void
.end method

.method private SetFocusArea()V
    .locals 2

    .prologue
    .line 470
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] SetFocusArea()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->getFocusArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusArea(Ljava/util/List;)V

    .line 472
    return-void
.end method

.method private SetFocusLock(Z)V
    .locals 1
    .parameter "result"

    .prologue
    .line 553
    if-eqz p1, :cond_0

    .line 554
    const/4 v0, 0x6

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 559
    :goto_0
    return-void

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->CancelFocusLock()V

    .line 557
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    goto :goto_0
.end method

.method private SetMeteringArea()V
    .locals 2

    .prologue
    .line 475
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] SetMeteringArea()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->getMeteringArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->setMeteringArea(Ljava/util/List;)V

    .line 477
    return-void
.end method

.method private _FocusStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 259
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] _FocusStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    if-ne v0, v2, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 264
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusIndicator(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->onCenterFocus(Z)Z

    goto :goto_0
.end method

.method private _FocusStart(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 269
    const-string v0, "FocusContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FocusContainer] _FocusStart(int x, int y) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 272
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_StopFocusLock()V

    .line 279
    :goto_0
    return-void

    .line 276
    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 277
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusIndicator(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/controller/FocusManager;->onSpotFocus(II)V

    goto :goto_0
.end method

.method private _FocusStart(ILandroid/graphics/Rect;)V
    .locals 3
    .parameter "type"
    .parameter "r"

    .prologue
    const/4 v2, 0x4

    .line 296
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] _FocusStart(int type, Rect r)"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    if-eq v0, v2, :cond_1

    .line 298
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 299
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->ojt_view:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/OjtView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/OjtView;->clear()V

    .line 303
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mDisplayOrientation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/OjtView;->setDisplayOrientation(I)V

    .line 304
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/OjtView;->setVisibility(I)V

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/ui/OjtView;->setOperRect(ILandroid/graphics/Rect;)V

    .line 307
    return-void
.end method

.method private _FocusStart(ZII)V
    .locals 3
    .parameter "longpress"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 282
    const-string v0, "FocusContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FocusContainer] _FocusStart(boolean longpress, int x, int y) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/4 v0, 0x6

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->switchResource(Z)V

    .line 286
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/pantech/app/vegacamera/controller/FocusManager;->calculateFocusLockTapArea(II)V

    .line 287
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusLockIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusIndicator(Landroid/view/View;)V

    .line 288
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0, p2, p3}, Lcom/pantech/app/vegacamera/controller/FocusManager;->doFocusLock(II)V

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->DoReFocusLock()V

    goto :goto_0
.end method

.method private _FocusStart([Landroid/hardware/Camera$Face;)V
    .locals 2
    .parameter "f"

    .prologue
    .line 310
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] _FocusStart(Face[] f)"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/FaceView;->setFaces([Landroid/hardware/Camera$Face;)V

    .line 313
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusIndicator(Landroid/view/View;)V

    .line 314
    return-void
.end method

.method private _FocusStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 317
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] _FocusStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 324
    :goto_0
    return-void

    .line 321
    :cond_0
    iput v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 322
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/FocusManager;->SetFocusLensSound(Z)V

    .line 323
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->onAutoFocus(Z)V

    goto :goto_0
.end method

.method private _FocusStop(ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "type"
    .parameter "r"

    .prologue
    .line 354
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] _FocusStop(int type, Rect r)"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/OjtView;->clear()V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 360
    return-void
.end method

.method private _FocusStop(Z)V
    .locals 4
    .parameter "focused"

    .prologue
    const/4 v3, 0x2

    .line 327
    const-string v0, "FocusContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FocusContainer] _FocusStop(boolean focused) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 330
    iput v3, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsFocusLensSound()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 334
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->getNeedToSkipFocusSound()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->SetFocusLensSound(Z)V

    .line 343
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->GetFocusState()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 345
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 346
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->onAutoFocus(Z)V

    .line 351
    return-void

    .line 337
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->SetFocusLensSound(Z)V

    goto :goto_0

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/LayoutControl;->IsFocusLensSound()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->SetFocusLensSound(Z)V

    goto :goto_0
.end method

.method private _StopFocusLock()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/FocusContainer$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$2;-><init>(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 371
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetFocusArea()V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetMeteringArea()V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/controller/FocusContainer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 552
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetFocusLock(Z)V

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/LayoutControl;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/controller/FocusContainer;ILandroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStop(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusManager;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    return-object v0
.end method


# virtual methods
.method public DoSnap()V
    .locals 2

    .prologue
    .line 250
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->bFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 252
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] DoSnap mode CAF"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->AutoFocus()V

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->doSnap()V

    .line 256
    return-void
.end method

.method public FocusStart(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 153
    :pswitch_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStart()V

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusDataX()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusDataY()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStart(II)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getFocusDataIsLongPressed()Z

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusDataX()I

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusDataY()I

    move-result v2

    .line 161
    invoke-direct {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStart(ZII)V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusDataType()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusDataRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStart(ILandroid/graphics/Rect;)V

    goto :goto_0

    .line 170
    :pswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusDataFace()[Landroid/hardware/Camera$Face;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStart([Landroid/hardware/Camera$Face;)V

    goto :goto_0

    .line 174
    :pswitch_5
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 177
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    .line 178
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusIndicator(Landroid/view/View;)V

    .line 179
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/FocusManager;->onCenterFocus(Z)Z

    goto :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public FocusStop(I)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 186
    packed-switch p1, :pswitch_data_0

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->GetCurrentFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStop()V

    goto :goto_0

    .line 194
    :pswitch_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->GetCurrentFocusState()I

    move-result v0

    if-nez v0, :cond_1

    .line 195
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStop()V

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusResult()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_FocusStop(Z)V

    goto :goto_0

    .line 202
    :pswitch_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->_StopFocusLock()V

    goto :goto_0

    .line 207
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/vegacamera/controller/FocusContainer$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$1;-><init>(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V

    .line 212
    const-wide/16 v2, 0xc8

    .line 207
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public GetCurrentFocusMode()I
    .locals 2

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, mode:I
    iget v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    packed-switch v1, :pswitch_data_0

    .line 246
    :goto_0
    return v0

    .line 230
    :pswitch_0
    const/4 v0, 0x1

    .line 231
    goto :goto_0

    .line 234
    :pswitch_1
    const/4 v0, 0x0

    .line 235
    goto :goto_0

    .line 237
    :pswitch_2
    const/4 v0, 0x2

    .line 238
    goto :goto_0

    .line 240
    :pswitch_3
    const/4 v0, 0x4

    .line 241
    goto :goto_0

    .line 243
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public GetCurrentFocusState()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusMode:I

    return v0
.end method

.method public InitializeFocusParm(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "p"

    .prologue
    .line 109
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] InitializeFocusParm()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->initializeParameters(Landroid/hardware/Camera$Parameters;)V

    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setFocusIndicator(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public Release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 443
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] Release()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->onFocusReleased()V

    .line 445
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->removeMessages()V

    .line 446
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->Release()V

    .line 447
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->release()V

    .line 449
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusLockIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    if-eqz v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusLockIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;->release()V

    .line 453
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusLockIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusLockIndicatorView;

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/OjtView;->release()V

    .line 457
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOjtView:Lcom/pantech/app/vegacamera/ui/OjtView;

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    if-eqz v0, :cond_3

    .line 460
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FaceView;->release()V

    .line 461
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    .line 463
    :cond_3
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    .line 464
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mMyFocusListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;

    .line 465
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    .line 466
    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mHandler:Landroid/os/Handler;

    .line 467
    return-void
.end method

.method public SetDisplayOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 137
    return-void
.end method

.method public SetFocusListener(Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    .line 76
    return-void
.end method

.method public SetFocusPreview(Landroid/view/View;I)V
    .locals 3
    .parameter "previewframe"
    .parameter "displayOrientation"

    .prologue
    .line 115
    const-string v0, "FocusContainer"

    const-string v1, "[FocusContainer] SetFocusPreview()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setPreviewSize(II)V

    .line 118
    iput p2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mDisplayOrientation:I

    .line 119
    return-void
.end method

.method public SetMirror()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v0

    .line 123
    .local v0, cameraId:I
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    aget-object v1, v3, v0

    .line 124
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v2, :cond_0

    .line 125
    .local v2, mirror:Z
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/controller/FocusManager;->setMirror(Z)V

    .line 126
    return-void

    .line 124
    .end local v2           #mirror:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public SetOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 140
    iget v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 141
    const-string v0, "FocusContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FocusContainer] setOrientation("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput p1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOrientation:I

    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/FaceView;->setDisplayOrientation(I)V

    .line 148
    :cond_0
    return-void
.end method

.method public StartFaceDetection()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 374
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedFaceDetection()Z

    move-result v2

    if-nez v2, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v0

    .line 378
    .local v0, id:I
    if-nez v0, :cond_0

    .line 379
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_2

    .line 380
    const-string v2, "FocusContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[FocusContainer] StartFaceDetection() mAppData.GetParam() is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    if-lez v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    if-nez v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$id;->face_view:I

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/ui/FaceView;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    .line 386
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/FaceView;->clear()V

    .line 387
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/ui/FaceView;->setVisibility(I)V

    .line 388
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    iget v5, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mDisplayOrientation:I

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/ui/FaceView;->setDisplayOrientation(I)V

    .line 389
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    iget v5, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mOrientation:I

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/ui/FaceView;->setOrientation(I)V

    .line 390
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v1, v2, v0

    .line 391
    .local v1, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    iget v2, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/pantech/app/vegacamera/ui/FaceView;->setMirror(Z)V

    .line 392
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ui/FaceView;->resume()V

    .line 393
    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->FaceDetectStart()V

    goto/16 :goto_0

    :cond_3
    move v2, v4

    .line 391
    goto :goto_1
.end method

.method public StopFaceDetection()V
    .locals 1

    .prologue
    .line 400
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedFaceDetection()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->FaceDetectStop()V

    .line 407
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FaceView;->clear()V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFaceView:Lcom/pantech/app/vegacamera/ui/FaceView;

    goto :goto_0
.end method

.method public getFocusMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 480
    const-string v0, "FocusContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[FocusContainer] getFocusMode() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/controller/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedToSkipFocusSound()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->bNeedToSkipFocusSound:Z

    return v0
.end method

.method public onFocusReleased()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->onFocusReleased()V

    .line 429
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetTouchFocus()V

    .line 430
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->UpdateFocusUI()V

    .line 431
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusManager:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->ResetSpotExposure()V

    .line 433
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->bFocusAreaSupported:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    if-ne v0, v1, :cond_1

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->CancelAutoFocus()V

    .line 437
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->SetFocusParameters()V

    .line 440
    :cond_1
    return-void
.end method

.method public setNeedToSkipFocusSound(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 416
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer;->bNeedToSkipFocusSound:Z

    .line 417
    return-void
.end method
