.class public Lcom/pantech/app/vegacamera/Panorama;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICamera;
.implements Lcom/pantech/app/vegacamera/operator/IOperInterface;
.implements Lcom/pantech/app/vegacamera/PreviewGestures$Listener;
.implements Lcom/pantech/app/vegacamera/util/Storage$Listener;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/Panorama$MainHandler;,
        Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;,
        Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;,
        Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;,
        Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPTURE_PIXELS:I = 0xa8c00

.field private static final DEFAULT_INDICATOR_WIDTH:I = 0x64

.field private static final DEFAULT_SWEEP_ANGLE:I = 0xa0

.field private static final PANNING_SPEED_THRESHOLD:F = 20.0f

.field private static final TAG:Ljava/lang/String; = "Panorama"


# instance fields
.field private bCancelComputation:Z

.field private bDeviceOpenFail:Z

.field private bIsCalling:Z

.field private bMosaicFrameProcInit:Z

.field private bSaveState:Z

.field private bThreadRunning:Z

.field private fHorizontalViewAngle:F

.field private fVerticalViewAngle:F

.field private iCallState:I

.field private iCameraId:I

.field private iCameraInfoOrientation:I

.field private iDeviceOrientation:I

.field private iDeviceOrientationAtCapture:I

.field private iOrientationCompensation:I

.field private iPreviewHeight:I

.field private iPreviewWidth:I

.field private iZoomValue:I

.field private lTimeTaken:J

.field private mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mLeftIndicator:Landroid/view/View;

.field private mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

.field private mLoadingLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

.field private mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

.field private mOnFrameAvailableRunnable:Ljava/lang/Runnable;

.field private final mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;

.field private mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

.field private mPanoramaLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

.field private mPanoramaOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPreviewArea:Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;

.field private mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

.field private mPrograssBarLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mReview:Landroid/widget/ImageView;

.field private mReviewLayout:Landroid/view/View;

.field private mRightIndicator:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

.field private mSavingText:Landroid/widget/TextView;

.field private mSavingTextLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTooFastPrompt:Landroid/widget/TextView;

.field private mTooFastPromptLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private mWaitProcessorTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private objPlaySound:Ljava/lang/Object;

.field private objWait:Ljava/lang/Object;

.field private sDialogOk:Ljava/lang/String;

.field private sDialogTitle:Ljava/lang/String;

.field private sFocusMode:Ljava/lang/String;

.field private tPlayCaptureSoundThread:Ljava/lang/Thread;

.field private tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 75
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mRootView:Landroid/view/View;

    .line 77
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAlertDialog:Landroid/app/AlertDialog;

    .line 78
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 79
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 80
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mContentResolver:Landroid/content/ContentResolver;

    .line 81
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    .line 82
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoramaOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 83
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewArea:Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;

    .line 84
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 85
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    .line 86
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    .line 87
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoramaLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 88
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 89
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 90
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 92
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    .line 93
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 94
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    .line 95
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 96
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->tPlayCaptureSoundThread:Ljava/lang/Thread;

    .line 98
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bCancelComputation:Z

    .line 99
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    .line 100
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bIsCalling:Z

    .line 101
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bMosaicFrameProcInit:Z

    .line 102
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    .line 103
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    .line 105
    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iCallState:I

    .line 106
    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iCameraInfoOrientation:I

    .line 107
    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iCameraId:I

    .line 108
    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iOrientationCompensation:I

    .line 109
    iput v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientation:I

    .line 110
    iput v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientationAtCapture:I

    .line 111
    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewWidth:I

    .line 112
    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewHeight:I

    .line 113
    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    .line 114
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/Panorama;->lTimeTaken:J

    .line 116
    iput v3, p0, Lcom/pantech/app/vegacamera/Panorama;->fHorizontalViewAngle:F

    .line 117
    iput v3, p0, Lcom/pantech/app/vegacamera/Panorama;->fVerticalViewAngle:F

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->objWait:Ljava/lang/Object;

    .line 120
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->objPlaySound:Ljava/lang/Object;

    .line 122
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->sDialogOk:Ljava/lang/String;

    .line 123
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->sDialogTitle:Ljava/lang/String;

    .line 125
    const-string v0, "continuous-picture"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->sFocusMode:Ljava/lang/String;

    .line 127
    new-instance v0, Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;

    invoke-direct {v0, p0, v2}, Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Panorama;Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;

    .line 129
    new-instance v0, Lcom/pantech/app/vegacamera/Panorama$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/pantech/app/vegacamera/Panorama$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Panorama;Lcom/pantech/app/vegacamera/Panorama$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    .line 132
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    .line 133
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mReview:Landroid/widget/ImageView;

    .line 134
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mSavingText:Landroid/widget/TextView;

    .line 135
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPrompt:Landroid/widget/TextView;

    .line 136
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    .line 137
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPromptLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 138
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPrograssBarLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 139
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mSavingTextLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 140
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadingLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 141
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mReviewLayout:Landroid/view/View;

    .line 142
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mLeftIndicator:Landroid/view/View;

    .line 143
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mRightIndicator:Landroid/view/View;

    .line 70
    return-void
.end method

.method private GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoramaLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method private ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 1584
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoramaLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 1585
    return-void
.end method

.method private _AddScreenOnFlag()V
    .locals 3

    .prologue
    .line 1416
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1417
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 1418
    .local v0, keepScreenOnFlag:I
    if-eqz v1, :cond_0

    .line 1419
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 1420
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1423
    :cond_0
    return-void
.end method

.method private _CancelHighResComputation()V
    .locals 2

    .prologue
    .line 1259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bCancelComputation:Z

    .line 1260
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->objWait:Ljava/lang/Object;

    monitor-enter v1

    .line 1261
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->objWait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1260
    monitor-exit v1

    .line 1263
    return-void

    .line 1260
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private _ClearMosaicFrameProcessorIfNeeded()V
    .locals 1

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    if-eqz v0, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1360
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bMosaicFrameProcInit:Z

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->clear()V

    .line 1362
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bMosaicFrameProcInit:Z

    goto :goto_0
.end method

.method private _ClearScreenOnFlag()V
    .locals 3

    .prologue
    .line 1406
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1407
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 1408
    .local v0, keepScreenOnFlag:I
    if-eqz v1, :cond_0

    .line 1409
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 1410
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1413
    :cond_0
    return-void
.end method

.method private _CloseDevice()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 767
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 769
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->release()V

    .line 770
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V

    .line 771
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 773
    :cond_0
    return-void
.end method

.method private _ConfigMosaicPreview(II)V
    .locals 4
    .parameter "w"
    .parameter "h"

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_StopDevicePreview()V

    .line 894
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v0, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    .line 895
    .local v0, screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    .line 896
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    if-nez v1, :cond_2

    .line 897
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->acquireSurfaceTexture()V

    .line 905
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    if-eqz v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->release()V

    .line 908
    :cond_0
    new-instance v1, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, p1, p2, v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;-><init>(Landroid/graphics/SurfaceTexture;IIZ)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    .line 910
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 911
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_1

    .line 912
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V

    .line 914
    :cond_1
    return-void

    .line 899
    :cond_2
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->releaseSurfaceTexture()V

    .line 900
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->acquireSurfaceTexture()V

    .line 901
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->NotifyScreenNailChanged()V

    goto :goto_0
.end method

.method private _CreateConfigurations()V
    .locals 4

    .prologue
    .line 1544
    const-string v1, "Panorama"

    const-string v2, "[Panorama] _CreateConfigurations()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1546
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1548
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_setting_storage_location_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1547
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1549
    .local v0, storageLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->setLocationPref(Ljava/lang/String;)V

    .line 1550
    const-string v1, "Panorama"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_CreateConfigurations storageLocation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    .end local v0           #storageLocation:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1554
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Panorama;->_GetPreferredCameraId(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iCameraId:I

    .line 1556
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v3, p0, Lcom/pantech/app/vegacamera/Panorama;->iCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetLocalId(Landroid/content/Context;I)V

    .line 1557
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->GetVolatileData()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/pantech/app/vegacamera/Panorama;->iCameraId:I

    invoke-virtual {v2, v1, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetVolatileDataIdx(Ljava/util/ArrayList;I)V

    .line 1558
    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iCameraId:I

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->SetCameraId(I)V

    .line 1559
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1560
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredStorageLocation(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->SetStorageLocationDir(Ljava/lang/String;)V

    .line 1561
    return-void
.end method

.method private _CreateContentView()V
    .locals 4

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$layout;->panorama:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1132
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1138
    .local v0, appRes:Landroid/content/res/Resources;
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_SetViews(Landroid/content/res/Resources;)V

    .line 1139
    return-void
.end method

.method private _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 1568
    const-string v0, "Panorama"

    const-string v1, "[Panorama] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1570
    new-instance v0, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/PanoramaLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoramaLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 1572
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoramaOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1573
    invoke-direct {p0, p0}, Lcom/pantech/app/vegacamera/Panorama;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 1576
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoramaOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 1577
    return-void
.end method

.method private _DestroyLayoutInstance()V
    .locals 2

    .prologue
    .line 1588
    const-string v0, "Panorama"

    const-string v1, "[Panorama] _DestroyLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoramaOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 1592
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1593
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Release()V

    .line 1594
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->ReleaseLayoutControlObject()V

    .line 1596
    :cond_1
    return-void
.end method

.method private _DeviceSetParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 1
    .parameter "parameters"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 867
    :cond_0
    return-void
.end method

.method private _FindBestPreviewSize(Ljava/util/List;ZZ)Z
    .locals 9
    .parameter
    .parameter "need4To3"
    .parameter "needSmaller"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 776
    .local p1, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const v3, 0xa8c00

    .line 777
    .local v3, pixelsDiff:I
    const/4 v2, 0x0

    .line 778
    .local v2, hasFound:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 797
    return v2

    .line 778
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .line 779
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v1, v4, Landroid/hardware/Camera$Size;->height:I

    .line 780
    .local v1, h:I
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    .line 782
    .local v5, w:I
    const v7, 0xa8c00

    mul-int v8, v1, v5

    sub-int v0, v7, v8

    .line 783
    .local v0, d:I
    if-eqz p3, :cond_2

    if-ltz v0, :cond_0

    .line 786
    :cond_2
    if-eqz p2, :cond_3

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v5, 0x3

    if-ne v7, v8, :cond_0

    .line 789
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 790
    if-ge v0, v3, :cond_0

    .line 791
    iput v5, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewWidth:I

    .line 792
    iput v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewHeight:I

    .line 793
    move v3, v0

    .line 794
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private _GenerateFinalMosaic(Z)Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    .locals 13
    .parameter "highRes"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 1437
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->createMosaic(Z)I

    move-result v8

    .line 1438
    .local v8, mosaicReturnCode:I
    const/4 v2, -0x2

    if-ne v8, v2, :cond_0

    .line 1478
    :goto_0
    return-object v5

    .line 1440
    :cond_0
    const/4 v2, -0x1

    if-ne v8, v2, :cond_1

    .line 1441
    new-instance v5, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    goto :goto_0

    .line 1444
    :cond_1
    const/4 v1, 0x0

    .line 1446
    .local v1, imageData:[B
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->getFinalMosaicNV21()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1451
    :goto_1
    if-nez v1, :cond_2

    .line 1452
    const-string v2, "Panorama"

    const-string v5, "[Panorama] _GenerateFinalMosaic() returned null."

    invoke-static {v2, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    new-instance v5, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    goto :goto_0

    .line 1456
    :cond_2
    array-length v2, v1

    add-int/lit8 v7, v2, -0x8

    .line 1457
    .local v7, len:I
    add-int/lit8 v2, v7, 0x0

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x2

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    .line 1458
    add-int/lit8 v10, v7, 0x3

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    .line 1457
    add-int v3, v2, v10

    .line 1459
    .local v3, width:I
    add-int/lit8 v2, v7, 0x4

    aget-byte v2, v1, v2

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v10, v7, 0x5

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    add-int/2addr v2, v10

    add-int/lit8 v10, v7, 0x6

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v2, v10

    .line 1460
    add-int/lit8 v10, v7, 0x7

    aget-byte v10, v1, v10

    and-int/lit16 v10, v10, 0xff

    .line 1459
    add-int v4, v2, v10

    .line 1461
    .local v4, height:I
    const-string v2, "Panorama"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "[Panorama] ImLength = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", W = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", H = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    if-lez v3, :cond_3

    if-gtz v4, :cond_4

    .line 1465
    :cond_3
    const-string v2, "Panorama"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "[Panorama] width|height <= 0!!, len = "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", W = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, ", H = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    new-instance v5, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    goto/16 :goto_0

    .line 1469
    :cond_4
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1470
    .local v0, yuvimage:Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1471
    .local v9, out:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v12, v12, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v5, 0x64

    invoke-virtual {v0, v2, v5, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1473
    :try_start_1
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1478
    new-instance v5, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v5, p0, v2, v3, v4}, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;-><init>(Lcom/pantech/app/vegacamera/Panorama;[BII)V

    goto/16 :goto_0

    .line 1474
    :catch_0
    move-exception v6

    .line 1475
    .local v6, e:Ljava/lang/Exception;
    const-string v2, "Panorama"

    const-string v5, "[Panorama] Exception in storing final mosaic"

    invoke-static {v2, v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1476
    new-instance v5, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    goto/16 :goto_0

    .line 1447
    .end local v0           #yuvimage:Landroid/graphics/YuvImage;
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #len:I
    .end local v9           #out:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    goto/16 :goto_1
.end method

.method private _GetLastThumbNail()V
    .locals 2

    .prologue
    .line 2073
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    .line 2074
    .local v0, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 2075
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    .line 2076
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetLastThumbnail()V

    .line 2077
    return-void
.end method

.method private _GetPreferredCameraId(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1533
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1534
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1539
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private _GetPreviewBufSize()I
    .locals 3

    .prologue
    .line 1367
    new-instance v0, Landroid/graphics/PixelFormat;

    invoke-direct {v0}, Landroid/graphics/PixelFormat;-><init>()V

    .line 1368
    .local v0, pixelInfo:Landroid/graphics/PixelFormat;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1369
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    invoke-static {v1, v0}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 1372
    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewHeight:I

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x20

    return v1
.end method

.method private _GotoQuickview()V
    .locals 5

    .prologue
    .line 2128
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_goto_viewer"

    .line 2129
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_goto_viewer_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2128
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2131
    .local v0, mSaveAfterView:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2132
    const-string v1, "Panorama"

    const-string v2, "[Panorama] _GotoQuickview is skipped when IsGallerySecretMode"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2139
    :cond_0
    :goto_0
    return-void

    .line 2136
    :cond_1
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2137
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->GotoQuickView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _HideDirectionIndicators()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 917
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 918
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 919
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->setVisibility(I)V

    .line 920
    return-void
.end method

.method private _HideTooFastIndication()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1040
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPrompt:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1042
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1043
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewArea:Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;->setVisibility(I)V

    .line 1044
    return-void
.end method

.method private _InitMosaicFrameProcessorIfNeeded()V
    .locals 4

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-eqz v0, :cond_1

    .line 1383
    :cond_0
    :goto_0
    return-void

    .line 1380
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewHeight:I

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_GetPreviewBufSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->initialize(III)V

    .line 1381
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Panorama] mPreviewWidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPreviewHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bMosaicFrameProcInit:Z

    goto :goto_0
.end method

.method private _InitRotatable()V
    .locals 2

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    if-nez v0, :cond_0

    .line 1076
    new-instance v0, Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPromptLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 1079
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mPrograssBarLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 1080
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mSavingTextLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 1081
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadingLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RotateControl;->addObject(Landroid/view/View;)V

    .line 1082
    return-void
.end method

.method private _InitializeAfterDeviceOpen()V
    .locals 2

    .prologue
    .line 1613
    const-string v0, "Panorama"

    const-string v1, "[Panorama] _InitializeAfterDeviceOpen"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-nez v0, :cond_0

    .line 1615
    new-instance v0, Lcom/pantech/app/vegacamera/PreviewGestures;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/PreviewGestures;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 1617
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetListener(Lcom/pantech/app/vegacamera/PreviewGestures$Listener;)V

    .line 1618
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 1620
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_LoadPanoramaPreferences()V

    .line 1621
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Start()V

    .line 1622
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_GetLastThumbNail()V

    .line 1623
    return-void
.end method

.method private _KeepIdleTimerOnAwhile()V
    .locals 4

    .prologue
    const/16 v3, 0x3f

    .line 1431
    const-string v0, "Panorama"

    const-string v1, "[Panorama] _KeepIdleTimerOnAwhile()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1433
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1434
    return-void
.end method

.method private _LoadPanoramaPreferences()V
    .locals 3

    .prologue
    .line 1607
    const-string v1, "Panorama"

    const-string v2, "[Panorama] _LoadPanoramaPreferences"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    new-instance v0, Lcom/pantech/app/vegacamera/CameraSettings;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;)V

    .line 1609
    .local v0, settings:Lcom/pantech/app/vegacamera/CameraSettings;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    sget v2, Lcom/pantech/app/vegacamera/R$xml;->camera_preferences:I

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreferenceGroup(I)Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetPreferenceGroup(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;)V

    .line 1610
    return-void
.end method

.method private _OnBackgroundThreadFinished()V
    .locals 1

    .prologue
    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    .line 1256
    return-void
.end method

.method private _OpenDevice()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 739
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_1

    .line 740
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraHolder;->getBackCameraId()I

    move-result v0

    .line 741
    .local v0, backCameraId:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 742
    const/4 v0, 0x0

    .line 745
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    .line 746
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v3, v0}, Lcom/pantech/app/vegacamera/util/Util;->OpenCamera(Landroid/content/Context;I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_2

    .line 761
    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceOrientation(I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iCameraInfoOrientation:I

    .line 762
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 764
    .end local v0           #backCameraId:I
    :cond_1
    :goto_1
    return-void

    .line 747
    .restart local v0       #backCameraId:I
    :catch_0
    move-exception v1

    .line 748
    .local v1, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    .line 749
    const-string v2, "Panorama"

    const-string v3, "[Panorama] CameraHardwareException() "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 751
    .end local v1           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v1

    .line 752
    .local v1, e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    .line 753
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 755
    .end local v1           #e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    :catch_2
    move-exception v1

    .line 756
    .local v1, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    const-string v2, "Panorama"

    const-string v3, "[Panorama] app crash"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    .line 758
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method

.method private _PlayCaptureSound(Z)V
    .locals 3
    .parameter "start"

    .prologue
    .line 870
    const-string v1, "Panorama"

    const-string v2, "_PlayCaptureSound()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    move v0, p1

    .line 873
    .local v0, isStart:Z
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/pantech/app/vegacamera/Panorama$5;

    invoke-direct {v2, p0, v0}, Lcom/pantech/app/vegacamera/Panorama$5;-><init>(Lcom/pantech/app/vegacamera/Panorama;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->tPlayCaptureSoundThread:Ljava/lang/Thread;

    .line 889
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->tPlayCaptureSoundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 890
    return-void
.end method

.method private _ReleaseHandler()V
    .locals 2

    .prologue
    .line 1386
    const-string v0, "Panorama"

    const-string v1, "[Panorama] releaseHandler"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1388
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1389
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1390
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1391
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1392
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1393
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1394
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1395
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1396
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1397
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1398
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1399
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1400
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1401
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1403
    return-void
.end method

.method private _ReportProgress()V
    .locals 1

    .prologue
    .line 1142
    new-instance v0, Lcom/pantech/app/vegacamera/Panorama$9;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Panorama$9;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    .line 1169
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1170
    return-void
.end method

.method private _Reset()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1266
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetPanoramaCaptureState(I)V

    .line 1268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getOrientationManager()Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->unlockOrientation()V

    .line 1269
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 1271
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->Reset()V

    .line 1272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->Reset()V

    .line 1274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->reset()V

    .line 1279
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1282
    :cond_0
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    .line 1283
    return-void
.end method

.method private _ResetIdleTimer()V
    .locals 2

    .prologue
    .line 1426
    const-string v0, "Panorama"

    const-string v1, "[Panorama] _ResetIdleTimer()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1428
    return-void
.end method

.method private _ResetToPreview()V
    .locals 2

    .prologue
    .line 1286
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    .line 1287
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_Reset()V

    .line 1288
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->sFocusMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_DeviceSetParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1291
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_StartDevicePreview()V

    .line 1292
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_LoadPanoramaPreferences()V

    .line 1294
    :cond_0
    return-void
.end method

.method private _RunBackgroundThread(Ljava/lang/Thread;)V
    .locals 1
    .parameter "thread"

    .prologue
    .line 1246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    .line 1247
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 1248
    return-void
.end method

.method private _SaveHighResMosaic()V
    .locals 2

    .prologue
    .line 1173
    new-instance v0, Lcom/pantech/app/vegacamera/Panorama$10;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Panorama$10;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_RunBackgroundThread(Ljava/lang/Thread;)V

    .line 1241
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_ReportProgress()V

    .line 1242
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 1243
    return-void
.end method

.method private _SavePanorama([BIII)Landroid/net/Uri;
    .locals 13
    .parameter "jpegData"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 1330
    if-eqz p1, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_1

    .line 1332
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v2

    .line 1334
    .local v2, dateTaken:J
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pano_file_name_format:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p0, Lcom/pantech/app/vegacamera/Panorama;->lTimeTaken:J

    invoke-static {v0, v4, v5}, Lcom/pantech/app/vegacamera/panorama/PanoUtil;->CreateName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 1335
    .local v1, title:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".jpg"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1337
    .local v6, filename:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v9, v0, [I

    .line 1338
    .local v9, degree:[I
    const/4 v0, 0x0

    aput p4, v9, v0

    .line 1340
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v4

    .line 1341
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    move-object v8, p1

    move v10, p2

    move/from16 v11, p3

    .line 1340
    invoke-static/range {v0 .. v11}, Lcom/pantech/app/vegacamera/util/Storage;->addPanoramaImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[III)Landroid/net/Uri;

    move-result-object v12

    .line 1351
    .end local v1           #title:Ljava/lang/String;
    .end local v2           #dateTaken:J
    .end local v6           #filename:Ljava/lang/String;
    .end local v9           #degree:[I
    :goto_0
    return-object v12

    .line 1346
    :cond_0
    const-string v0, "Panorama"

    const-string v4, "[Panorama] null jpeg data, not storing"

    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1348
    const/16 v0, 0x6e

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/pantech/app/vegacamera/Panorama;->_ShowErrorAndFinish(II)V

    .line 1349
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1351
    :cond_1
    const/4 v12, 0x0

    goto :goto_0
.end method

.method private _SetCameraParameters(J)V
    .locals 8
    .parameter "updateSet"

    .prologue
    const-wide/16 v6, 0x0

    .line 1796
    const-string v3, "Panorama"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Panorama] _SetCameraParameters() :: updateSet = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1798
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1803
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1804
    .local v2, mParam:Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 1806
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_2

    .line 1807
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersZoom(Landroid/hardware/Camera$Parameters;)V

    .line 1810
    :cond_2
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BRIGHTNESS:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_3

    .line 1811
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V

    .line 1814
    :cond_3
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_WHITE_BALANCE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_4

    .line 1815
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V

    .line 1818
    :cond_4
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_SCENE_MODE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_5

    .line 1819
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 1822
    :cond_5
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EFFECT:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_6

    .line 1823
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V

    .line 1826
    :cond_6
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FLASH:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_7

    .line 1827
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V

    .line 1830
    :cond_7
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ANTI_BANDING:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_8

    .line 1831
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersAntiBanding(Landroid/hardware/Camera$Parameters;)V

    .line 1834
    :cond_8
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ANTI_SHAKE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_9

    .line 1835
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersAntiShake(Landroid/hardware/Camera$Parameters;)V

    .line 1838
    :cond_9
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BEAUTY:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_a

    .line 1839
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersBeauty(Landroid/hardware/Camera$Parameters;)V

    .line 1842
    :cond_a
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EXTRACT:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_b

    .line 1843
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V

    .line 1846
    :cond_b
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_SOUND_PLAY:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_c

    .line 1847
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersSoundPaly(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1853
    .end local v2           #mParam:Landroid/hardware/Camera$Parameters;
    :cond_c
    :goto_1
    const-string v3, "Panorama"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Camera] set parameters :: mParameters.toString() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1857
    :try_start_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1858
    :catch_0
    move-exception v0

    .line 1859
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->IsEngMode()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1860
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "[Camera] device set parameters exception"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1849
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1850
    .local v1, e1:Ljava/lang/Exception;
    const-string v3, "Panorama"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Camera] set parameters exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1862
    .end local v1           #e1:Ljava/lang/Exception;
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_d
    const-string v3, "Panorama"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Camera] set parameters exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 1564
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoramaOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 1565
    return-void
.end method

.method private _SetUpMosaic()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 693
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v2, v2, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v2, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 697
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    if-nez v2, :cond_2

    .line 698
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 699
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 700
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 709
    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->isMosaicMemoryAllocated()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 710
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setVisibility(I)V

    .line 713
    new-instance v2, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;-><init>(Lcom/pantech/app/vegacamera/Panorama;Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/Panorama$WaitProcessorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mWaitProcessorTask:Landroid/os/AsyncTask;

    goto :goto_0

    .line 702
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_1

    .line 715
    :cond_4
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-nez v2, :cond_0

    .line 719
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    if-nez v2, :cond_5

    .line 720
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setVisibility(I)V

    .line 725
    :cond_5
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_InitMosaicFrameProcessorIfNeeded()V

    .line 727
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v1

    .line 728
    .local v1, dispW:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v0

    .line 730
    .local v0, dispH:I
    if-le v1, v0, :cond_6

    .line 731
    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/Panorama;->_ConfigMosaicPreview(II)V

    goto :goto_0

    .line 733
    :cond_6
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/Panorama;->_ConfigMosaicPreview(II)V

    goto :goto_0
.end method

.method private _SetViews(Landroid/content/res/Resources;)V
    .locals 3
    .parameter "appRes"

    .prologue
    const/4 v2, 0x0

    .line 1085
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetPanoramaCaptureState(I)V

    .line 1086
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->pan_progress_bar:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    .line 1087
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    sget v1, Lcom/pantech/app/vegacamera/R$color;->pano_progress_empty:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->SetBackgroundColor(I)V

    .line 1088
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    sget v1, Lcom/pantech/app/vegacamera/R$color;->pano_progress_done:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->SetDoneColor(I)V

    .line 1089
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    sget v1, Lcom/pantech/app/vegacamera/R$color;->pano_progress_indication_fast:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->SetIndicatorColor(I)V

    .line 1090
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    new-instance v1, Lcom/pantech/app/vegacamera/Panorama$8;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/Panorama$8;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->SetOnDirectionChangeListener(Lcom/pantech/app/vegacamera/panorama/PanoProgressBar$OnDirectionChangeListener;)V

    .line 1105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->pan_left_indicator:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLeftIndicator:Landroid/view/View;

    .line 1106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->pan_right_indicator:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRightIndicator:Landroid/view/View;

    .line 1107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->capture_too_fast_text_v:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPrompt:Landroid/widget/TextView;

    .line 1111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->capture_too_fast_text_l:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPromptLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 1112
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->progressbar_l:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPrograssBarLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 1113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->review_saving_text_l:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mSavingTextLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 1114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->loading_l:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadingLayout:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 1117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->preview_area:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewArea:Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;

    .line 1118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewArea:Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;->setOnLayoutChangeListener(Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;)V

    .line 1120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->loading_frame:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    .line 1121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->review_saving_text_v:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mSavingText:Landroid/widget/TextView;

    .line 1123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->panorama_review_l:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mReviewLayout:Landroid/view/View;

    .line 1124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->review_area:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mReview:Landroid/widget/ImageView;

    .line 1126
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_InitRotatable()V

    .line 1127
    return-void
.end method

.method private _SetZoomControl(IZ)V
    .locals 5
    .parameter "state"
    .parameter "fVoice"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2143
    if-eqz p2, :cond_3

    const/4 v0, 0x6

    .line 2145
    .local v0, multiple:I
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2146
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2147
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFocusRelease()V

    .line 2148
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CancelAutoFocus()V

    .line 2151
    :cond_0
    if-nez p1, :cond_4

    .line 2152
    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    .line 2153
    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 2154
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    .line 2155
    if-eqz p2, :cond_1

    .line 2156
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->zoom_in_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2171
    :cond_1
    :goto_1
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/Panorama;->_SetCameraParameters(J)V

    .line 2173
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2174
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetZoomIndex(I)V

    .line 2176
    :cond_2
    return-void

    .end local v0           #multiple:I
    :cond_3
    move v0, v1

    .line 2143
    goto :goto_0

    .line 2160
    .restart local v0       #multiple:I
    :cond_4
    if-ne p1, v1, :cond_1

    .line 2161
    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    .line 2162
    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    if-gt v2, v1, :cond_1

    .line 2163
    iput v4, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    .line 2164
    if-eqz p2, :cond_1

    .line 2165
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->zoom_out_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private _SetupCaptureParams(Landroid/hardware/Camera$Parameters;)V
    .locals 13
    .parameter "parameters"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 801
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    .line 802
    .local v6, supportedSizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v6, v12, v12}, Lcom/pantech/app/vegacamera/Panorama;->_FindBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 803
    const-string v7, "Panorama"

    const-string v8, "[Panorama] No 4:3 ratio preview size supported."

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-direct {p0, v6, v11, v12}, Lcom/pantech/app/vegacamera/Panorama;->_FindBestPreviewSize(Ljava/util/List;ZZ)Z

    move-result v7

    if-nez v7, :cond_0

    .line 805
    const-string v7, "Panorama"

    const-string v8, "[Panorama] Can\'t find a supported preview size smaller than 960x720."

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-direct {p0, v6, v11, v11}, Lcom/pantech/app/vegacamera/Panorama;->_FindBestPreviewSize(Ljava/util/List;ZZ)Z

    .line 809
    :cond_0
    const-string v7, "Panorama"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Panorama] preview h = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , w = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget v7, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewWidth:I

    iget v8, p0, Lcom/pantech/app/vegacamera/Panorama;->iPreviewHeight:I

    invoke-virtual {p1, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 812
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v7

    const-string v8, "pref_setting_anti_banding"

    .line 813
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v10, Lcom/pantech/app/vegacamera/R$string;->pref_setting_anti_banding_default:I

    invoke-virtual {v9, v10}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 812
    invoke-virtual {v7, v8, v9}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, mAntiBanding:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedAntiBanding()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 816
    const-string v7, "Panorama"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Panorama] antibanding mAntiBanding = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const-string v7, "antibanding-values"

    invoke-virtual {p1, v7}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 818
    const-string v7, "antibanding"

    invoke-virtual {p1, v7, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V

    .line 834
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 835
    .local v0, frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .line 836
    .local v1, last:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v4, v7, v11

    .line 837
    .local v4, minFps:I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    aget v3, v7, v12

    .line 838
    .local v3, maxFps:I
    invoke-virtual {p1, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 840
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    .line 841
    .local v5, supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Panorama;->sFocusMode:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_3

    .line 842
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Panorama;->sFocusMode:Ljava/lang/String;

    invoke-virtual {p1, v7}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 848
    :goto_1
    invoke-virtual {p1, v11}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 850
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v7

    iput v7, p0, Lcom/pantech/app/vegacamera/Panorama;->fHorizontalViewAngle:F

    .line 851
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v7

    iput v7, p0, Lcom/pantech/app/vegacamera/Panorama;->fVerticalViewAngle:F

    .line 853
    iget v7, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    invoke-virtual {p1, v7}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 854
    return-void

    .line 820
    .end local v0           #frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    .end local v1           #last:I
    .end local v3           #maxFps:I
    .end local v4           #minFps:I
    .end local v5           #supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v7, "Panorama"

    const-string v8, "[Panorama] antibanding is not supported"

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 845
    .restart local v0       #frameRates:Ljava/util/List;,"Ljava/util/List<[I>;"
    .restart local v1       #last:I
    .restart local v3       #maxFps:I
    .restart local v4       #minFps:I
    .restart local v5       #supportedFocusModes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const-string v7, "Panorama"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "[Panorama] cannot set the focus mode to "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/pantech/app/vegacamera/Panorama;->sFocusMode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " becuase the mode is not supported."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private _ShowDirectionIndicators(I)V
    .locals 3
    .parameter "direction"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 923
    packed-switch p1, :pswitch_data_0

    .line 937
    :goto_0
    return-void

    .line 925
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 929
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 933
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 934
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private _ShowErrorAndFinish(II)V
    .locals 4
    .parameter "stateId"
    .parameter "dispTime"

    .prologue
    .line 1599
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Panorama] _ShowErrorAndFinish() :: stateId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 1601
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1604
    :cond_0
    return-void
.end method

.method private _ShowFinalMosaic(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    const/4 v6, 0x0

    .line 1297
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v4, v4, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v4, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return-void

    .line 1301
    :cond_1
    if-eqz p1, :cond_2

    .line 1302
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mReview:Landroid/widget/ImageView;

    invoke-virtual {v4, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1305
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setVisibility(I)V

    .line 1306
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mReviewLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->setVisibility(I)V

    .line 1308
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mSavingText:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1310
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mReview:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 1311
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v2

    .line 1312
    .local v2, dispWx:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceHeight(Landroid/content/Context;)I

    move-result v3

    .line 1315
    .local v3, dispWy:I
    iget v4, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientationAtCapture:I

    const/16 v5, 0x10e

    if-eq v4, v5, :cond_3

    iget v4, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientationAtCapture:I

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_4

    .line 1316
    :cond_3
    int-to-float v0, v2

    .line 1317
    .local v0, ReviewWx:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v1, v4

    .line 1318
    .local v1, ReviewWy:F
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->SetMeasure(IIFF)V

    goto :goto_0

    .line 1320
    .end local v0           #ReviewWx:F
    .end local v1           #ReviewWy:F
    :cond_4
    int-to-float v0, v3

    .line 1321
    .restart local v0       #ReviewWx:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v1, v4

    .line 1322
    .restart local v1       #ReviewWy:F
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->SetMeasure(IIFF)V

    goto :goto_0
.end method

.method private _ShowTooFastIndication(Z)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 1027
    if-eqz p1, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPrompt:Landroid/widget/TextView;

    sget v1, Lcom/pantech/app/vegacamera/R$string;->pano_direction_change:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1032
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPrompt:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 1033
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPrompt:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1035
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLeftIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1036
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mRightIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1037
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPrompt:Landroid/widget/TextView;

    sget v1, Lcom/pantech/app/vegacamera/R$string;->pano_too_fast_prompt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private _ShutterSoundPlay()V
    .locals 5

    .prologue
    .line 1961
    const-string v1, "Panorama"

    const-string v2, "[Camera] _ShutterSoundPlay()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    const/4 v0, 0x0

    .line 1963
    .local v0, shutterSound:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1964
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_shutter_sound"

    .line 1965
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_shutter_sound_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1964
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1968
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "shutter-sounds-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1977
    :goto_0
    return-void

    .line 1972
    :cond_1
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1973
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "shutter-sound"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1975
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "shutter-sound"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _StartCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 940
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 941
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v5}, Lcom/pantech/app/vegacamera/data/AppData;->SetPanoramaCaptureState(I)V

    .line 943
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->panorama_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5, v5}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;IZ)V

    .line 947
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Panorama;->bCancelComputation:Z

    .line 949
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/Panorama;->lTimeTaken:J

    .line 951
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 953
    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/Panorama;->_ShowDirectionIndicators(I)V

    .line 955
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "normal"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 956
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_DeviceSetParameters(Landroid/hardware/Camera$Parameters;)V

    .line 958
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    new-instance v1, Lcom/pantech/app/vegacamera/Panorama$6;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/Panorama$6;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->setProgressListener(Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;)V

    .line 976
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->Reset()V

    .line 979
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    const/high16 v1, 0x42c8

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->SetIndicatorWidth(F)V

    .line 980
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->SetMaxProgress(I)V

    .line 981
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->setVisibility(I)V

    .line 982
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientation:I

    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientationAtCapture:I

    .line 983
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getOrientationManager()Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/app/OrientationManager;->lockOrientation()V

    .line 984
    return-void
.end method

.method private _StartDevicePreview()V
    .locals 3

    .prologue
    .line 1482
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1522
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_0

    .line 1498
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 1499
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_StopDevicePreview()V

    .line 1502
    :cond_2
    const-wide/16 v1, -0x1

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/Panorama;->_SetCameraParameters(J)V

    .line 1504
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Panorama$OneShotPreviewCallback;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1506
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1508
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    .line 1509
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1512
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1515
    :try_start_0
    const-string v1, "Panorama"

    const-string v2, "[Panorama] start preview"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto :goto_0

    .line 1517
    :catch_0
    move-exception v0

    .line 1518
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_CloseDevice()V

    .line 1519
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "start rreview failed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private _StopCapture(Z)V
    .locals 4
    .parameter "aborted"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 987
    const-string v0, "Panorama"

    const-string v1, "[Panorama] _StopCapture()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->objPlaySound:Ljava/lang/Object;

    monitor-enter v1

    .line 990
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_PlayCaptureSound(Z)V

    .line 989
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetPanoramaCaptureState(I)V

    .line 995
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    .line 997
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_HideTooFastIndication()V

    .line 998
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_HideDirectionIndicators()V

    .line 1000
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->setProgressListener(Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;)V

    .line 1001
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_StopDevicePreview()V

    .line 1003
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 1005
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    if-nez v0, :cond_0

    .line 1006
    new-instance v0, Lcom/pantech/app/vegacamera/Panorama$7;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Panorama$7;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_RunBackgroundThread(Ljava/lang/Thread;)V

    .line 1024
    :cond_0
    return-void

    .line 989
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private _StopDevicePreview()V
    .locals 2

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1526
    const-string v0, "Panorama"

    const-string v1, "[Panorama] stop preview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopPreview()V

    .line 1529
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1530
    return-void
.end method

.method private _UpdateCameraParametersAntiBanding(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1922
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_anti_banding"

    .line 1923
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_anti_banding_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1922
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, mAntiBanding:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedAntiBanding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1926
    const-string v1, "Panorama"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] antibanding mAntiBanding = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1927
    const-string v1, "antibanding-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1928
    const-string v1, "antibanding"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1933
    :cond_0
    :goto_0
    return-void

    .line 1930
    :cond_1
    const-string v1, "Panorama"

    const-string v2, "[Camera] antibanding is not supported"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersAntiShake(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1936
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_anti_shake"

    .line 1937
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_anti_shake_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1936
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1939
    .local v0, mAntiShake:Ljava/lang/String;
    const-string v1, "Panorama"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] mAntiShake = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    const-string v1, "pantech-antishake-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1942
    const-string v1, "pantech-antishake"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    :goto_0
    return-void

    .line 1944
    :cond_0
    const-string v1, "Panorama"

    const-string v2, "[Camera] is not supported antishake"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersBeauty(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    return-void
.end method

.method private _UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1875
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_ev"

    .line 1876
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_ev_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1875
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1877
    .local v0, mEV:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "luma-adaptation"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1878
    return-void
.end method

.method private _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 1893
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_group"

    .line 1894
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_group_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1893
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1895
    .local v1, mEffectGroup:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1897
    .local v0, colorEffect:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "pref_effect_color_mono"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1898
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_mono"

    .line 1899
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1898
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1908
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1909
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1910
    const-string v2, "Panorama"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[panorama] set param color effect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    :cond_1
    return-void

    .line 1900
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "pref_effect_color_sepia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1901
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_sepia"

    .line 1902
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1901
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1903
    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    const-string v2, "pref_effect_color_aqua"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1904
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_aqua"

    .line 1905
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1904
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    return-void
.end method

.method private _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 1915
    const-string v0, "off"

    .line 1916
    .local v0, value:Ljava/lang/String;
    const-string v1, "Panorama"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "panorama mode, flash is not set param(value is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1919
    return-void
.end method

.method private _UpdateCameraParametersSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 1890
    return-void
.end method

.method private _UpdateCameraParametersSoundPaly(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 1957
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_ShutterSoundPlay()V

    .line 1958
    return-void
.end method

.method private _UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 1881
    const-string v0, "auto"

    .line 1883
    .local v0, whiteBalance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1884
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1885
    const-string v1, "Panorama"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Panorama] set param wb = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    :cond_0
    return-void
.end method

.method private _UpdateCameraParametersZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1870
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1872
    :cond_0
    return-void
.end method

.method private _UpdatePanoramaParametersZoom()V
    .locals 3

    .prologue
    .line 857
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Panorama] _UpdatePanoramaParametersZoom() : iZoomValue = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 861
    :cond_0
    return-void
.end method

.method private _UpdateProgress(FFFFZ)V
    .locals 5
    .parameter "panningRateXInDegree"
    .parameter "panningRateYInDegree"
    .parameter "progressHorizontalAngle"
    .parameter "progressVerticalAngle"
    .parameter "saving"

    .prologue
    const/high16 v2, 0x41a0

    .line 1048
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->requestRender()V

    .line 1054
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 1055
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1056
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Panorama;->_ShowTooFastIndication(Z)V

    .line 1057
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1061
    :cond_1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    float-to-int v0, p3

    .line 1064
    .local v0, angleInMajorDirection:I
    :goto_0
    if-eqz p5, :cond_3

    .line 1066
    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientationAtCapture:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientationAtCapture:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_5

    .line 1067
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->SetProgress(I)V

    .line 1072
    :cond_3
    :goto_1
    return-void

    .line 1062
    .end local v0           #angleInMajorDirection:I
    :cond_4
    float-to-int v0, p4

    goto :goto_0

    .line 1069
    .restart local v0       #angleInMajorDirection:I
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mPanoProgressBar:Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;

    neg-int v2, v0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/panorama/PanoProgressBar;->SetProgress(I)V

    goto :goto_1
.end method

.method private _WaitCameraStartUpThread()V
    .locals 2

    .prologue
    .line 679
    const-string v0, "Panorama"

    const-string v1, "[Panorama] _WaitCameraStartUpThread()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->Cancel()V

    .line 683
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->join()V

    .line 684
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    .line 685
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 687
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1172
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_SaveHighResMosaic()V

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/Panorama;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    return-void
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1
    .parameter

    .prologue
    .line 1579
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1039
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_HideTooFastIndication()V

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 2127
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_GotoQuickview()V

    return-void
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/Panorama;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1598
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Panorama;->_ShowErrorAndFinish(II)V

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/Panorama;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->objPlaySound:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/Panorama;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 869
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama;->_PlayCaptureSound(Z)V

    return-void
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1612
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_InitializeAfterDeviceOpen()V

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/Panorama;Landroid/os/AsyncTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama;->mWaitProcessorTask:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 692
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_SetUpMosaic()V

    return-void
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1354
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_ClearMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/Panorama;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 113
    iput p1, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    return-void
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_OpenDevice()V

    return-void
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/Panorama;)Z
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    return v0
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/Panorama;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama;->mInitialParams:Landroid/hardware/Camera$Parameters;

    return-void
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/Panorama;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mInitialParams:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/Panorama;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama;->_SetupCaptureParams(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/Panorama;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 863
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama;->_DeviceSetParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    return-object v0
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    return-object v0
.end method

.method static synthetic access$31(Lcom/pantech/app/vegacamera/Panorama;)Landroid/media/MediaActionSound;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$32(Lcom/pantech/app/vegacamera/Panorama;)F
    .locals 1
    .parameter

    .prologue
    .line 116
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama;->fHorizontalViewAngle:F

    return v0
.end method

.method static synthetic access$33(Lcom/pantech/app/vegacamera/Panorama;)F
    .locals 1
    .parameter

    .prologue
    .line 117
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama;->fVerticalViewAngle:F

    return v0
.end method

.method static synthetic access$34(Lcom/pantech/app/vegacamera/Panorama;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama;->_StopCapture(Z)V

    return-void
.end method

.method static synthetic access$35(Lcom/pantech/app/vegacamera/Panorama;FFFFZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1046
    invoke-direct/range {p0 .. p5}, Lcom/pantech/app/vegacamera/Panorama;->_UpdateProgress(FFFFZ)V

    return-void
.end method

.method static synthetic access$36(Lcom/pantech/app/vegacamera/Panorama;Z)Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1436
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama;->_GenerateFinalMosaic(Z)Lcom/pantech/app/vegacamera/Panorama$MosaicJpeg;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$37(Lcom/pantech/app/vegacamera/Panorama;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 922
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama;->_ShowDirectionIndicators(I)V

    return-void
.end method

.method static synthetic access$38(Lcom/pantech/app/vegacamera/Panorama;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1026
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama;->_ShowTooFastIndication(Z)V

    return-void
.end method

.method static synthetic access$39(Lcom/pantech/app/vegacamera/Panorama;)Z
    .locals 1
    .parameter

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bThreadRunning:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1375
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_InitMosaicFrameProcessorIfNeeded()V

    return-void
.end method

.method static synthetic access$40(Lcom/pantech/app/vegacamera/Panorama;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bCancelComputation:Z

    return v0
.end method

.method static synthetic access$41(Lcom/pantech/app/vegacamera/Panorama;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->objWait:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$42(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    return-object v0
.end method

.method static synthetic access$43(Lcom/pantech/app/vegacamera/Panorama;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mSavingText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$44(Lcom/pantech/app/vegacamera/Panorama;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$45(Lcom/pantech/app/vegacamera/Panorama;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientationAtCapture:I

    return v0
.end method

.method static synthetic access$46(Lcom/pantech/app/vegacamera/Panorama;)I
    .locals 1
    .parameter

    .prologue
    .line 106
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iCameraInfoOrientation:I

    return v0
.end method

.method static synthetic access$47(Lcom/pantech/app/vegacamera/Panorama;[BIII)Landroid/net/Uri;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1327
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/app/vegacamera/Panorama;->_SavePanorama([BIII)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewArea:Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/Panorama;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 892
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Panorama;->_ConfigMosaicPreview(II)V

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1285
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_ResetToPreview()V

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_OnBackgroundThreadFinished()V

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/Panorama;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Panorama;->_ShowFinalMosaic(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public DispatchTouchE(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v0, 0x1

    .line 1655
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1667
    :cond_0
    :goto_0
    return v0

    .line 1659
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerDepthAct()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1662
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/PreviewGestures;->DispatchTouchEv(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1667
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/Camera;->SuperDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 6
    .parameter "activity"
    .parameter "parent"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 352
    const-string v2, "Panorama"

    const-string v3, "[Panorama] Init()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 354
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iput-object p2, p0, Lcom/pantech/app/vegacamera/Panorama;->mRootView:Landroid/view/View;

    .line 355
    iput-object p3, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 357
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iput-boolean v4, v2, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 359
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_CreateConfigurations()V

    .line 361
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_CreateContentView()V

    .line 363
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mContentResolver:Landroid/content/ContentResolver;

    .line 365
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->EnterLightsOutMode(Landroid/view/Window;)V

    .line 366
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->InitializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 368
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 375
    :goto_0
    new-instance v2, Lcom/pantech/app/vegacamera/Panorama$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/Panorama$1;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    .line 400
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 401
    .local v1, pm:Landroid/os/PowerManager;
    const-string v2, "Panorama"

    invoke-virtual {v1, v5, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 403
    invoke-static {}, Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;->getInstance()Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    .line 405
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 406
    .local v0, appRes:Landroid/content/res/Resources;
    sget v2, Lcom/pantech/app/vegacamera/R$string;->pano_dialog_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->sDialogTitle:Ljava/lang/String;

    .line 407
    sget v2, Lcom/pantech/app/vegacamera/R$string;->details_ok:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->sDialogOk:Ljava/lang/String;

    .line 409
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mGLRootView:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;

    .line 411
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->sDialogTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 412
    sget v3, Lcom/pantech/app/vegacamera/R$string;->pano_dialog_panorama_failed:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 411
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAlertDialog:Landroid/app/AlertDialog;

    .line 413
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 414
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Panorama;->sDialogOk:Ljava/lang/String;

    new-instance v5, Lcom/pantech/app/vegacamera/Panorama$2;

    invoke-direct {v5, p0}, Lcom/pantech/app/vegacamera/Panorama$2;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 421
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/pantech/app/vegacamera/Panorama$3;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/Panorama$3;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 440
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->objPlaySound:Ljava/lang/Object;

    .line 441
    return-void

    .line 371
    .end local v0           #appRes:Landroid/content/res/Resources;
    .end local v1           #pm:Landroid/os/PowerManager;
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto/16 :goto_0
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1762
    packed-switch p1, :pswitch_data_0

    .line 1772
    :cond_0
    :goto_0
    return-void

    .line 1764
    :pswitch_0
    if-eqz p3, :cond_0

    .line 1765
    const-string v1, "pref_intent_value"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1766
    .local v0, newPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredStorageLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 1762
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public OnBackPressed()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 1627
    const-string v1, "Panorama"

    const-string v2, "[Panorama] onBackPressed()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v1, :cond_1

    .line 1649
    :cond_0
    :goto_0
    return v0

    .line 1632
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-nez v1, :cond_3

    .line 1633
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v1

    if-nez v1, :cond_3

    .line 1634
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    if-eqz v1, :cond_2

    .line 1635
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->capture_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1636
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    .line 1637
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetPreviewLayout()V

    .line 1639
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_CancelHighResComputation()V

    goto :goto_0

    .line 1641
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 1642
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->capture_cancel:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 1643
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_StopCapture(Z)V

    .line 1644
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetPreviewLayout()V

    .line 1645
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_Reset()V

    .line 1646
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1649
    :cond_4
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public OnCameraSwitch()V
    .locals 0

    .prologue
    .line 511
    return-void
.end method

.method public OnCaptureAnimationEnded()V
    .locals 0

    .prologue
    .line 1758
    return-void
.end method

.method public OnDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    const-string v0, "Panorama"

    const-string v1, "[Panorama] OnDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-eqz v0, :cond_0

    .line 649
    :goto_0
    return-void

    .line 639
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_DestroyLayoutInstance()V

    .line 641
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mContentResolver:Landroid/content/ContentResolver;

    .line 642
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mSavingText:Landroid/widget/TextView;

    .line 643
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mReviewLayout:Landroid/view/View;

    .line 644
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 645
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mLoadFrameView:Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;

    .line 646
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mReview:Landroid/widget/ImageView;

    .line 647
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mTooFastPrompt:Landroid/widget/TextView;

    .line 648
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicFrameProcessor:Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor;

    goto :goto_0
.end method

.method public OnFullScreenChanged(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 1746
    const-string v0, "Panorama"

    const-string v1, "[Panorama] OnFullScreenChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 1748
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 1750
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1751
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFullScreenChanged(Z)V

    .line 1753
    :cond_1
    return-void
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1672
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1673
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1680
    :cond_0
    :goto_0
    return v0

    .line 1676
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1680
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1685
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1686
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1693
    :cond_0
    :goto_0
    return v0

    .line 1689
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1693
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OnLongPress(Landroid/view/View;II)V
    .locals 0
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1742
    return-void
.end method

.method public OnModeDestroy()V
    .locals 0

    .prologue
    .line 630
    return-void
.end method

.method public OnOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1713
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    if-eqz v1, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1716
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientation:I

    invoke-static {p1, v1}, Lcom/pantech/app/vegacamera/util/Util;->RoundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientation:I

    .line 1717
    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iDeviceOrientation:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 1718
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iOrientationCompensation:I

    if-eq v1, v0, :cond_2

    .line 1719
    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iOrientationCompensation:I

    .line 1721
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    if-eqz v1, :cond_3

    .line 1722
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mRotateControl:Lcom/pantech/app/vegacamera/controller/RotateControl;

    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/controller/RotateControl;->setDegree(I)V

    .line 1724
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iOrientationCompensation:I

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnOrientationChanged(I)V

    goto :goto_0
.end method

.method public OnPause()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 515
    const-string v2, "Panorama"

    const-string v3, "[Panorama] OnPause()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-eqz v2, :cond_1

    .line 607
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_ReleaseHandler()V

    .line 523
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iput-boolean v7, v2, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 525
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_CancelHighResComputation()V

    .line 527
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_WaitCameraStartUpThread()V

    .line 529
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 531
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->tPlayCaptureSoundThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2

    .line 533
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->tPlayCaptureSoundThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_1
    iput-object v5, p0, Lcom/pantech/app/vegacamera/Panorama;->tPlayCaptureSoundThread:Ljava/lang/Thread;

    .line 540
    :cond_2
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    if-eqz v2, :cond_3

    .line 541
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->capture_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 542
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    .line 546
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v2

    if-ne v2, v7, :cond_5

    .line 547
    iget v2, p0, Lcom/pantech/app/vegacamera/Panorama;->iCallState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 548
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/Panorama;->bIsCalling:Z

    .line 550
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->capture_cancel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 551
    invoke-direct {p0, v7}, Lcom/pantech/app/vegacamera/Panorama;->_StopCapture(Z)V

    .line 552
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_Reset()V

    .line 553
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetPreviewLayout()V

    .line 558
    :cond_5
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 559
    invoke-static {v6}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 560
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_6

    .line 561
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    .line 565
    :cond_6
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_CloseDevice()V

    .line 567
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_OnBackgroundThreadFinished()V

    .line 569
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_7

    .line 570
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 573
    :cond_7
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_8

    .line 574
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 575
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    .line 576
    iput-object v5, p0, Lcom/pantech/app/vegacamera/Panorama;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 581
    :cond_8
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    if-eqz v2, :cond_9

    .line 582
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->release()V

    .line 583
    iput-object v5, p0, Lcom/pantech/app/vegacamera/Panorama;->mMosaicPreviewRenderer:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    .line 586
    :cond_9
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_ClearMosaicFrameProcessorIfNeeded()V

    .line 588
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mWaitProcessorTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_a

    .line 589
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mWaitProcessorTask:Landroid/os/AsyncTask;

    invoke-virtual {v2, v7}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 590
    iput-object v5, p0, Lcom/pantech/app/vegacamera/Panorama;->mWaitProcessorTask:Landroid/os/AsyncTask;

    .line 593
    :cond_a
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, v2, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    .line 594
    .local v1, screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 595
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->releaseSurfaceTexture()V

    .line 598
    :cond_b
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v2, :cond_c

    .line 599
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/PreviewGestures;->Release()V

    .line 600
    iput-object v5, p0, Lcom/pantech/app/vegacamera/Panorama;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 603
    :cond_c
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Stop()V

    .line 605
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_ResetIdleTimer()V

    .line 606
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_ClearScreenOnFlag()V

    goto/16 :goto_0

    .line 534
    .end local v1           #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    :catch_0
    move-exception v0

    .line 535
    .local v0, i:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public OnPreCameraSwitch()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public OnResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 452
    const-string v0, "Panorama"

    const-string v1, "[Panorama] doOnResume"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-eqz v0, :cond_0

    .line 501
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iput-boolean v3, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 458
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iput-boolean v4, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mResuming:Z

    .line 460
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/Panorama;->bIsCalling:Z

    .line 462
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$string;->pano_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->pano_start:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetPanoramaCaptureState(I)V

    .line 468
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_CreateLayoutInstance()V

    .line 470
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-nez v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 473
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 480
    :cond_2
    :goto_1
    new-instance v0, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;-><init>(Lcom/pantech/app/vegacamera/Panorama;Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    .line 481
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->tSetUpDeviceThread:Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Panorama$SetUpDeviceThread;->start()V

    .line 483
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_3

    .line 485
    :try_start_0
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_3
    :goto_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pantech/app/vegacamera/Panorama$4;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/Panorama$4;-><init>(Lcom/pantech/app/vegacamera/Panorama;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_AddScreenOnFlag()V

    .line 499
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_KeepIdleTimerOnAwhile()V

    .line 500
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iput-boolean v3, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mResuming:Z

    goto/16 :goto_0

    .line 475
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public OnSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1734
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1735
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnSingleTapUp(Landroid/view/View;II)V

    .line 1737
    :cond_0
    return-void
.end method

.method public OnSmartCoverClose()V
    .locals 0

    .prologue
    .line 2120
    return-void
.end method

.method public OnSmartCoverOpen()V
    .locals 0

    .prologue
    .line 2115
    return-void
.end method

.method public OnStart()V
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-eqz v0, :cond_0

    .line 448
    :cond_0
    return-void
.end method

.method public OnStop()V
    .locals 1

    .prologue
    .line 611
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bDeviceOpenFail:Z

    if-eqz v0, :cond_1

    .line 625
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bIsCalling:Z

    if-nez v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 618
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMediaActionSound:Landroid/media/MediaActionSound;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public OnUserInteraction()V
    .locals 2

    .prologue
    .line 1698
    const-string v0, "Panorama"

    const-string v1, "[Panorama] OnUserInteraction()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetPanoramaCaptureState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1701
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_KeepIdleTimerOnAwhile()V

    .line 1703
    :cond_0
    return-void
.end method

.method public SetFocusOperHandler(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 2036
    return-void
.end method

.method public SetOperHandler(I)V
    .locals 2
    .parameter "what"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1997
    sparse-switch p1, :sswitch_data_0

    .line 2031
    :cond_0
    :goto_0
    return-void

    .line 1999
    :sswitch_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2000
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Panorama;->bSaveState:Z

    if-nez v0, :cond_0

    .line 2001
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_StartCapture()V

    .line 2002
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->UnSetPreviewLayout()V

    goto :goto_0

    .line 2005
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->onCaptureComplete()V

    .line 2006
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    goto :goto_0

    .line 2012
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Panorama;->_StopCapture(Z)V

    .line 2014
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->_ClearLayoutAll()V

    goto :goto_0

    .line 2018
    :sswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopSmoothZoom()V

    goto :goto_0

    .line 2022
    :sswitch_3
    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/Panorama;->_SetZoomControl(IZ)V

    goto :goto_0

    .line 2027
    :sswitch_4
    invoke-direct {p0, v0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_SetZoomControl(IZ)V

    goto :goto_0

    .line 1997
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x24 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
    .end sparse-switch
.end method

.method public SetOperHandler(II)V
    .locals 1
    .parameter "what"
    .parameter "count"

    .prologue
    .line 1981
    packed-switch p1, :pswitch_data_0

    .line 1993
    :goto_0
    :pswitch_0
    return-void

    .line 1983
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    goto :goto_0

    .line 1987
    :pswitch_2
    iput p2, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    .line 1988
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_UpdatePanoramaParametersZoom()V

    .line 1989
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_DeviceSetParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 1981
    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public SetOperHandler(IZ)V
    .locals 0
    .parameter "what"
    .parameter "state"

    .prologue
    .line 2125
    return-void
.end method

.method public SetParameter(J)V
    .locals 0
    .parameter "what"

    .prologue
    .line 1787
    return-void
.end method

.method public SetParameter(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1782
    return-void
.end method

.method public SetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1777
    return-void
.end method

.method public SetSingleTapUpListener(Landroid/view/View;)V
    .locals 0
    .parameter "singleTapArea"

    .prologue
    .line 1730
    return-void
.end method

.method public SetUpdateParameter(J)V
    .locals 0
    .parameter "what"

    .prologue
    .line 1791
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Panorama;->_SetCameraParameters(J)V

    .line 1792
    return-void
.end method

.method public StorageChanged()V
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mResuming:Z

    if-nez v0, :cond_0

    .line 2067
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    .line 2069
    :cond_0
    return-void
.end method

.method public ZoomControl(I)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 2040
    if-nez p1, :cond_3

    .line 2041
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    .line 2042
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    .line 2062
    :cond_0
    :goto_0
    return-void

    .line 2045
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    .line 2054
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->_UpdatePanoramaParametersZoom()V

    .line 2055
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Panorama;->_DeviceSetParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2059
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2060
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetZoomIndex(I)V

    goto :goto_0

    .line 2046
    :cond_3
    if-ne p1, v1, :cond_2

    .line 2047
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    if-gt v0, v1, :cond_4

    .line 2048
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    goto :goto_0

    .line 2051
    :cond_4
    iget v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/Panorama;->iZoomValue:I

    goto :goto_1
.end method

.method public onBatteryStateChanged(I)V
    .locals 3
    .parameter "batteryState"

    .prologue
    .line 2081
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBatteryStateEvent() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 2083
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2085
    :cond_0
    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 3
    .parameter "callState"

    .prologue
    .line 2089
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2090
    iput p1, p0, Lcom/pantech/app/vegacamera/Panorama;->iCallState:I

    .line 2091
    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surface"

    .prologue
    .line 1707
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Panorama;->mOnFrameAvailableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1708
    return-void
.end method

.method public onHeadSetStateChanged(I)V
    .locals 3
    .parameter "headsetState"

    .prologue
    .line 2109
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHeadSetStateChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    return-void
.end method

.method public onMediaStateChanged()V
    .locals 2

    .prologue
    .line 2095
    const-string v0, "Panorama"

    const-string v1, "onMediaStateEvent()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2096
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2098
    return-void
.end method

.method public onRingerModeStateChanged(I)V
    .locals 3
    .parameter "audioSystemState"

    .prologue
    .line 2102
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRingerModeStateEvent() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2103
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2105
    return-void
.end method
