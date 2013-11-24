.class public abstract Lcom/pantech/app/vegacamera/ActivityBase;
.super Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;
.source "ActivityBase.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;
.implements Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
.implements Lcom/pantech/app/vegacamera/util/Storage$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;,
        Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;,
        Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;,
        Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;,
        Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;,
        Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_PICTURE:Ljava/lang/String; = "com.pantech.app.vegacamera.action.DELETE_PICTURE"

.field private static final CAMERA_APP_VIEW_TOGGLE_TIME:I = 0x64

.field private static final HANDLE_FOTA_LOCKED:I = 0x1

.field private static final HANDLE_QUICKVIEW_DIALOG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActivityBase"

.field private static final TOUCH_MODE_GESTURE:I = 0x5

.field private static final TOUCH_MODE_OFF:I = -0x1

.field private static final TYPE_REAR:I = 0x1


# instance fields
.field private _QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

.field private backupSingleTapArea:Landroid/view/View;

.field private bucketid:I

.field private isFotaTestMode:Z

.field private mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

.field private mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

.field protected mCameraAppView:Landroid/view/View;

.field private mCameraAppViewFadeIn:Landroid/view/animation/Animation;

.field private mCameraAppViewFadeOut:Landroid/view/animation/Animation;

.field public mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeletePictureFilter:Landroid/content/IntentFilter;

.field private mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

.field private mDevAllowedObserver:Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mLoadThumbnailTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/pantech/app/vegacamera/controller/Thumbnail;",
            ">;"
        }
    .end annotation
.end field

.field private mOnResumePending:Z

.field public mPaused:Z

.field private mResultCodeForTesting:I

.field private mResultDataForTesting:Landroid/content/Intent;

.field protected mResuming:Z

.field public mShowCameraAppView:Z

.field private mSingleTapArea:Landroid/view/View;

.field private volatile mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

.field private volatile mThumbnailView:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private volatile mThumbnailViewWidth:I

.field private mUpdateThumbnailDelayed:Z

.field private resolver:Landroid/content/ContentResolver;

.field protected showView_MS:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

    .line 80
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->resolver:Landroid/content/ContentResolver;

    .line 81
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 87
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 89
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mOnResumePending:Z

    .line 93
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->isFotaTestMode:Z

    .line 96
    new-instance v0, Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mHandler:Landroid/os/Handler;

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    .line 533
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 534
    iput v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnailViewWidth:I

    .line 537
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnailView:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 563
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mUpdateThumbnailDelayed:Z

    .line 564
    sget v0, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    iput v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->bucketid:I

    .line 566
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.pantech.app.vegacamera.action.DELETE_PICTURE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    .line 567
    new-instance v0, Lcom/pantech/app/vegacamera/ActivityBase$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/ActivityBase$1;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    return-void
.end method

.method private GetLastThumbnailUncached()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 670
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] getLastThumbnailUncached"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 675
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;

    invoke-direct {v0, p0, v2}, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 676
    return-void
.end method

.method private _AvailableFinishState()Z
    .locals 2

    .prologue
    .line 445
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] _AvailableFinishState"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_CheckDeviceAllowed()I

    move-result v0

    if-nez v0, :cond_0

    .line 447
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->ShowErrorFOTA()V

    .line 448
    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private _CheckDeviceAllowed()I
    .locals 5

    .prologue
    .line 412
    const/4 v0, 0x1

    .line 414
    .local v0, devEnabled:I
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->resolver:Landroid/content/ContentResolver;

    const-string v3, "camera_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 415
    const-string v2, "ActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ActivityBase] _CheckDeviceAllowed : devEnabled : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    :goto_0
    return v0

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "ActivityBase"

    const-string v3, "[ActivityBase] _CheckDeviceAllowed : fail"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _CheckFotaDevLocked()V
    .locals 2

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_CheckDeviceAllowed()I

    move-result v0

    if-nez v0, :cond_0

    .line 405
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] _CheckFotaDevLocked() == 0"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->ShowErrorFOTA()V

    .line 409
    :cond_0
    return-void
.end method

.method private _GotoQuickViewDialogProc(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 708
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-nez v0, :cond_1

    .line 712
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->showDialog()V

    .line 716
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mOrientationManager:Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->getCompensation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setOrientation(I)V

    .line 717
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    goto :goto_0
.end method

.method private _IsKeyguardLocked()Z
    .locals 2

    .prologue
    .line 367
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 368
    .local v0, kgm:Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private _OnLongPress(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 895
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] onLongPress"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/pantech/app/vegacamera/ActivityBase;->onLongPress(Landroid/view/View;II)V

    .line 897
    return-void
.end method

.method private _RecoverVtouch()V
    .locals 4

    .prologue
    .line 491
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setTouchMode(II)V

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 495
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private _RegisterFotaDevObserver()V
    .locals 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;

    if-nez v0, :cond_0

    .line 424
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] _RegisterFotaDevObserver"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    new-instance v0, Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;

    .line 426
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 427
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;

    .line 426
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 428
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->resolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    .line 429
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->resolver:Landroid/content/ContentResolver;

    .line 432
    :cond_0
    return-void
.end method

.method private _SendBroadCast(Z)V
    .locals 3
    .parameter "_Is"

    .prologue
    .line 504
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedSmartCover()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.pantech.smartcover.ENABLE_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, _Intent1:Landroid/content/Intent;
    const-string v2, "enable"

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 509
    .end local v0           #_Intent1:Landroid/content/Intent;
    :cond_0
    return-void

    .line 506
    .restart local v0       #_Intent1:Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private _SetVtouch()V
    .locals 4

    .prologue
    .line 472
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v1, :cond_0

    .line 473
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 477
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_1

    .line 478
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setTouchMode(II)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :cond_1
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v0

    .line 484
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 480
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private _UnregisterFotaDevObserver()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;

    if-nez v0, :cond_1

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/ActivityBase$DeviceAllowedObserver;

    goto :goto_0
.end method

.method private _UpdateCameraAppView()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x64

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 795
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] _UpdateCameraAppView"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    .line 799
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 800
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 802
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    .line 803
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 804
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 805
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/ActivityBase$HideCameraAppView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 807
    :cond_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 812
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 813
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 817
    :goto_0
    return-void

    .line 815
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppViewFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->GetLastThumbnailUncached()V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/ActivityBase;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 563
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mUpdateThumbnailDelayed:Z

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/ActivityBase;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/ActivityBase;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/ActivityBase;)Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;
    .locals 1
    .parameter

    .prologue
    .line 528
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_CheckFotaDevLocked()V

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/ActivityBase;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 880
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ActivityBase;->onSingleTapUp(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/ActivityBase;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 894
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ActivityBase;->_OnLongPress(II)V

    return-void
.end method

.method private onSingleTapUp(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 881
    const-string v0, "ActivityBase"

    const-string v1, "[ActivitityBase] gesture private onSingleTapUp"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/pantech/app/vegacamera/ActivityBase;->onSingleTapUp(Landroid/view/View;II)V

    .line 884
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected abstract ActivityFactory()V
.end method

.method public CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 5
    .parameter "getPictures"

    .prologue
    .line 739
    const-string v2, "ActivityBase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[ActivityBase] CreateCameraScreenNail() :: path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    sget v2, Lcom/pantech/app/vegacamera/R$id;->camera_app_root:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    .line 741
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraAppView:Landroid/view/View;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 742
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 743
    .local v0, data:Landroid/os/Bundle;
    const-string v1, "/local/all/"

    .line 747
    .local v1, path:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->bucketid:I

    .line 749
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->bucketid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 750
    const-string v2, "media-set-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const-string v2, "media-item-path"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const-string v2, "show_when_locked"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 755
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    if-eqz v2, :cond_1

    .line 756
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->recycle()V

    .line 762
    :goto_1
    const-string v2, "app-bridge"

    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 763
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getStateCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 764
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    invoke-virtual {v2, v3, v0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 768
    :goto_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->getCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 769
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    return-object v2

    .line 749
    :cond_0
    const-string v2, "0"

    goto :goto_0

    .line 759
    :cond_1
    new-instance v2, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    goto :goto_1

    .line 766
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getStateManager()Lcom/pantech/app/vegacamera/bridge/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->getTopState()Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    move-result-object v3

    const-class v4, Lcom/pantech/app/vegacamera/bridge/app/PhotoPage;

    invoke-virtual {v2, v3, v4, v0}, Lcom/pantech/app/vegacamera/bridge/app/StateManager;->switchState(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method public GetCameraProxy()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetLastThumbnail()V
    .locals 3

    .prologue
    .line 657
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->getLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 662
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->UpdateThumbnailView()V

    .line 663
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    if-nez v0, :cond_0

    .line 665
    new-instance v0, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase$LoadThumbnailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 667
    :cond_0
    return-void
.end method

.method public GetResultCode()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mResultCodeForTesting:I

    return v0
.end method

.method public GetResultData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    return-object v0
.end method

.method public GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    return-object v0
.end method

.method public GetThumbnailView()Lcom/pantech/app/vegacamera/ui/RotateImageView;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnailView:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    return-object v0
.end method

.method public GetThumbnailViewWidth()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnailViewWidth:I

    return v0
.end method

.method public GotoGallery()V
    .locals 6

    .prologue
    .line 721
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    if-nez v3, :cond_1

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetUri()Landroid/net/Uri;

    move-result-object v2

    .line 725
    .local v2, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->resolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->IsUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 726
    const-string v3, "ActivityBase"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[ActivityBase] GotoGallery() :: uri = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.camera.action.REVIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 729
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "camera_vmotion"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 730
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 732
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "ActivityBase"

    const-string v4, "[ActivityBase] review image fail"

    invoke-static {v3, v4, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public GotoQuickView(Ljava/lang/String;)V
    .locals 2
    .parameter "viewType"

    .prologue
    .line 685
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase]_GotoQuickview is skipped when IsGallerySecretMode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :goto_0
    return-void

    .line 690
    :cond_0
    if-eqz p1, :cond_1

    .line 691
    const-string v0, "3sec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->showView_MS:I

    .line 698
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 699
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->backupSingleTapArea:Landroid/view/View;

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 703
    :cond_1
    sget v0, Lcom/pantech/app/vegacamera/R$string;->goto_quickview:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->_GotoQuickViewDialogProc(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 693
    :cond_2
    const-string v0, "5sec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 694
    const/16 v0, 0x1388

    iput v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->showView_MS:I

    goto :goto_1

    .line 696
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->showView_MS:I

    goto :goto_1
.end method

.method public IsInCameraApp()Z
    .locals 1

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    return v0
.end method

.method public IsPanoramaModule()Z
    .locals 2

    .prologue
    .line 930
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] IsPanoramaModule()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const/4 v0, 0x0

    return v0
.end method

.method public NotifyScreenNailChanged()V
    .locals 2

    .prologue
    .line 911
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] NotifyScreenNailChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    .line 913
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    #calls: Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->_NotifyScreenNailChanged()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->access$2(Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;)V

    .line 915
    :cond_0
    return-void
.end method

.method protected OnCaptureAnimationEnded()V
    .locals 2

    .prologue
    .line 926
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] onCaptureAnimationEnded"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    return-void
.end method

.method protected OnCaptureTextureCopied()V
    .locals 0

    .prologue
    .line 923
    return-void
.end method

.method protected OnFullScreenChanged(Z)V
    .locals 4
    .parameter "full"

    .prologue
    const/4 v3, 0x0

    .line 820
    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ActivityBase] OnFullScreenChanged("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    if-ne v0, p1, :cond_1

    .line 850
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    if-eqz p1, :cond_3

    .line 827
    iput v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->showView_MS:I

    .line 828
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->backupSingleTapArea:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 829
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->backupSingleTapArea:Landroid/view/View;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 838
    :cond_2
    :goto_1
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    .line 840
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 844
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_UpdateCameraAppView()V

    .line 846
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mUpdateThumbnailDelayed:Z

    if-eqz v0, :cond_0

    .line 847
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->GetLastThumbnailUncached()V

    .line 848
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mUpdateThumbnailDelayed:Z

    goto :goto_0

    .line 832
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 833
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->backupSingleTapArea:Landroid/view/View;

    .line 834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    goto :goto_1
.end method

.method protected OnPreviewTextureCopied()V
    .locals 2

    .prologue
    .line 918
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] onPreviewTextureCopied"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    return-void
.end method

.method protected RegisterBroadcast()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

    if-nez v0, :cond_0

    .line 456
    new-instance v0, Lcom/pantech/app/vegacamera/BroadcastManager;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/BroadcastManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

    .line 457
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/BroadcastManager;->Start()V

    .line 458
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/BroadcastManager;->SetListener(Lcom/pantech/app/vegacamera/BroadcastManager$Listener;)V

    .line 460
    :cond_0
    return-void
.end method

.method protected abstract ReturnCameraEntry()V
.end method

.method public SaveThumbnailToFile()V
    .locals 5

    .prologue
    .line 628
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->FromFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 629
    new-instance v0, Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/pantech/app/vegacamera/controller/Thumbnail;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase$SaveThumbnailTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 631
    :cond_0
    return-void
.end method

.method protected SetResultEx(I)V
    .locals 0
    .parameter "resultCode"

    .prologue
    .line 372
    iput p1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mResultCodeForTesting:I

    .line 373
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase;->setResult(I)V

    .line 374
    return-void
.end method

.method public SetResultEx(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 377
    iput p1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mResultCodeForTesting:I

    .line 378
    iput-object p2, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mResultDataForTesting:Landroid/content/Intent;

    .line 379
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 380
    return-void
.end method

.method public SetSwipingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 904
    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ActivityBase] SetSwipingEnabled("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    #calls: Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->_SetSwipingEnabled(Z)V
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->access$1(Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;Z)V

    .line 908
    :cond_0
    return-void
.end method

.method public SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V
    .locals 0
    .parameter "mThumbnail"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    .line 545
    return-void
.end method

.method public SetThumbnailView(Lcom/pantech/app/vegacamera/ui/RotateImageView;)V
    .locals 0
    .parameter "mThumbnailView"

    .prologue
    .line 560
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnailView:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 561
    return-void
.end method

.method public SetThumbnailViewWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 552
    iput p1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnailViewWidth:I

    .line 553
    return-void
.end method

.method protected abstract ShowErrorFOTA()V
.end method

.method protected abstract TestCodeFactory()V
.end method

.method protected UnregisterBroadcast()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 463
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/BroadcastManager;->SetListener(Lcom/pantech/app/vegacamera/BroadcastManager$Listener;)V

    .line 465
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/BroadcastManager;->Release()V

    .line 466
    iput-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mBroadcastManager:Lcom/pantech/app/vegacamera/BroadcastManager;

    .line 468
    :cond_0
    return-void
.end method

.method public UpdateThumbnailView()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnailView:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-nez v0, :cond_0

    .line 654
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnailView:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnail:Lcom/pantech/app/vegacamera/controller/Thumbnail;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->GetBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->SetBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mThumbnailView:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->SetBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected checkFromCameraButtonIntent()Z
    .locals 4

    .prologue
    .line 1055
    const/4 v0, 0x0

    .line 1056
    .local v0, result:Z
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "screen-off"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    const-string v1, "ActivityBase"

    const-string v2, "checkFromCameraButtonIntent true"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1059
    const/4 v0, 0x1

    .line 1061
    :cond_0
    return v0
.end method

.method protected abstract doOnResume()V
.end method

.method public getGotoQuickViewDialog()Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 126
    const-string v1, "ActivityBase"

    const-string v2, "[ActivityBase] onCreate()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p0}, Lcom/pantech/app/vegacamera/CameraFeatures;->Initialize(Landroid/content/Context;)V

    .line 128
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->SetImageFlileNamer(Landroid/content/Context;)V

    .line 130
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 131
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 149
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->getCameraActivityStateListener()Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->sendCameraActivityState(I)V

    .line 157
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/CameraAppImpl;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/CameraAppImpl;-><init>()V

    .line 158
    .local v0, mCameraAppImple:Lcom/pantech/app/vegacamera/CameraAppImpl;
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/CameraAppImpl;->setActivity(Landroid/app/Activity;)V

    .line 160
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 162
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_RegisterFotaDevObserver()V

    .line 164
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_AvailableFinishState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->ReturnCameraEntry()V

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->ActivityFactory()V

    .line 169
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->TestCodeFactory()V

    .line 170
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->setActivity(Landroid/app/Activity;)V

    .line 171
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->SetListener(Lcom/pantech/app/vegacamera/util/Storage$Listener;)V

    .line 172
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->setVolumeControlStream(I)V

    .line 173
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 341
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->getCameraActivityStateListener()Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->sendCameraActivityState(I)V

    .line 350
    :cond_0
    invoke-static {p0}, Lcom/pantech/app/vegacamera/menu/PopupManager;->RemoveInstance(Landroid/content/Context;)V

    .line 352
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->onDestroy()V

    .line 353
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_UnregisterFotaDevObserver()V

    .line 354
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x52

    const/4 v0, 0x1

    .line 321
    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_2

    .line 322
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    :cond_1
    :goto_0
    return v0

    .line 325
    :cond_2
    if-ne p1, v2, :cond_3

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    if-nez v1, :cond_1

    .line 328
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 333
    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 334
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLayoutChange(Landroid/view/View;IIII)V
    .locals 5
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 854
    const-string v3, "ActivityBase"

    const-string v4, "[ActivityBase] onLayoutChange"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    if-nez v3, :cond_1

    .line 856
    const-string v3, "ActivityBase"

    const-string v4, "mAppBridge == null "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    sub-int v2, p4, p2

    .line 861
    .local v2, width:I
    sub-int v0, p5, p3

    .line 862
    .local v0, height:I
    sget-boolean v3, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_0

    .line 863
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    .line 864
    .local v1, screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_2

    .line 865
    invoke-virtual {v1, v2, v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    .line 871
    :goto_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->NotifyScreenNailChanged()V

    goto :goto_0

    .line 869
    :cond_2
    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setPreviewFrameLayoutSize(II)V

    goto :goto_1
.end method

.method protected onLongPress(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 900
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] gesture protected onLongPress"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    return-void
.end method

.method protected onPause()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 249
    const-string v3, "ActivityBase"

    const-string v4, "[ActivityBase] onPause()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :try_start_0
    const-string v3, "alwaysontop"

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 252
    .local v2, service:Landroid/view/alwaysontop/AlwaysOnTopManager;
    invoke-virtual {v2}, Landroid/view/alwaysontop/AlwaysOnTopManager;->isAlwaysOnTopRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v2}, Landroid/view/alwaysontop/AlwaysOnTopManager;->skipAOTWindow()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .end local v2           #service:Landroid/view/alwaysontop/AlwaysOnTopManager;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->getCameraActivityStateListener()Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 263
    invoke-static {v7}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->sendCameraActivityState(I)V

    .line 266
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 267
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v3, :cond_2

    .line 268
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->dismissDialog()V

    .line 269
    iput-object v8, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 274
    :cond_2
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 275
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->onPause()V

    .line 277
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 278
    .local v1, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->UnregisterBroadcast()V

    .line 282
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.systemui.statusbar.phone.navigationbar.DISABLE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->_SendBroadCast(Z)V

    .line 286
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_UnregisterFotaDevObserver()V

    .line 287
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mOnResumePending:Z

    .line 289
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_RecoverVtouch()V

    .line 291
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    .line 292
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    if-eqz v3, :cond_3

    .line 293
    iget-object v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    invoke-virtual {v3, v6}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 294
    iput-object v8, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mLoadThumbnailTask:Landroid/os/AsyncTask;

    .line 296
    :cond_3
    return-void

    .line 257
    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #manager:Landroid/support/v4/content/LocalBroadcastManager;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 255
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 191
    const-string v4, "ActivityBase"

    const-string v5, "[ActivityBase] onResume()"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :try_start_0
    const-string v4, "alwaysontop"

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/alwaysontop/AlwaysOnTopManager;

    .line 194
    .local v3, service:Landroid/view/alwaysontop/AlwaysOnTopManager;
    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopManager;->isAlwaysOnTopRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    invoke-virtual {v3}, Landroid/view/alwaysontop/AlwaysOnTopManager;->skipAOTWindow()V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v3           #service:Landroid/view/alwaysontop/AlwaysOnTopManager;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->getCameraActivityStateListener()Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState$VEGACameraActivityStateListener;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 205
    invoke-static {v7}, Lcom/pantech/app/vegacamera/aot/VEGACameraActivityState;->sendCameraActivityState(I)V

    .line 208
    :cond_1
    iput-boolean v8, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 210
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->onResume()V

    .line 212
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 213
    .local v2, manager:Landroid/support/v4/content/LocalBroadcastManager;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDeletePictureReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mDeletePictureFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v4, v5}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 215
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->RegisterBroadcast()V

    .line 220
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->hasWindowFocus()Z

    move-result v0

    .line 221
    .local v0, hasWindowFocus:Z
    const-string v4, "ActivityBase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ActivityBase] onResume() read hasWindowFocus = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->GetCameraProxy()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v4

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_IsKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 223
    const-string v4, "ActivityBase"

    const-string v5, "[ActivityBase] onRsume.mOnResumePending = true"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mOnResumePending:Z

    .line 240
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_SetVtouch()V

    .line 242
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ActivityBase;->_QuickViewDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-nez v4, :cond_2

    .line 243
    invoke-virtual {p0, v7}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 245
    :cond_2
    return-void

    .line 226
    :cond_3
    const-string v4, "ActivityBase"

    const-string v5, "[ActivityBase] onRsume.mOnResumePending = false"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.systemui.statusbar.phone.navigationbar.ENABLE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    invoke-direct {p0, v7}, Lcom/pantech/app/vegacamera/ActivityBase;->_SendBroadCast(Z)V

    .line 231
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->doOnResume()V

    .line 232
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->_RegisterFotaDevObserver()V

    .line 233
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/ActivityBase;->isFotaTestMode:Z

    if-eqz v4, :cond_4

    .line 234
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ActivityBase;->resolver:Landroid/content/ContentResolver;

    const-string v5, "camera_on"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    iget-object v4, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 237
    :cond_4
    iput-boolean v8, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mOnResumePending:Z

    goto :goto_1

    .line 199
    .end local v0           #hasWindowFocus:Z
    .end local v1           #i:Landroid/content/Intent;
    .end local v2           #manager:Landroid/support/v4/content/LocalBroadcastManager;
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 197
    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 888
    const-string v0, "ActivityBase"

    const-string v1, "[ActivitityBase] gesture protected onSingleTapUp"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 358
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->onStart()V

    .line 359
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 363
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->onStop()V

    .line 364
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasFocus"

    .prologue
    .line 178
    const-string v1, "ActivityBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[ActivityBase] onWindowFocusChanged.hasFocus = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mOnResumePending = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mOnResumePending:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mOnResumePending:Z

    if-eqz v1, :cond_0

    .line 180
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.statusbar.phone.navigationbar.ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 182
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->_SendBroadCast(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->doOnResume()V

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mOnResumePending:Z

    .line 187
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .parameter "layoutResID"

    .prologue
    .line 680
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] setContentView"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->setContentView(I)V

    .line 682
    return-void
.end method

.method public setSingleTapUpListener(Landroid/view/View;)V
    .locals 3
    .parameter "singleTapArea"

    .prologue
    .line 876
    const-string v0, "ActivityBase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ActivityBase] setSingleTapUpListener "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase;->mSingleTapArea:Landroid/view/View;

    .line 878
    return-void
.end method
