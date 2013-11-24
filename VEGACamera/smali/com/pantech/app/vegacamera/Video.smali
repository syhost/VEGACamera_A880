.class public Lcom/pantech/app/vegacamera/Video;
.super Lcom/pantech/app/vegacamera/video/VideoHashMap;
.source "Video.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICamera;
.implements Lcom/pantech/app/vegacamera/operator/IOperInterface;
.implements Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/pantech/app/vegacamera/PreviewGestures$Listener;
.implements Lcom/pantech/app/vegacamera/video/VideoRecord$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;,
        Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;,
        Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;,
        Lcom/pantech/app/vegacamera/Video$Listener;,
        Lcom/pantech/app/vegacamera/Video$MainHandler;,
        Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Video"


# instance fields
.field public MMSMode:Z

.field private bAeLockSupported:Z

.field private bAwbLockSupported:Z

.field private bCameraDisabled:Z

.field private bFocusAreaSupported:Z

.field private bLocalVoice:Z

.field private bMeteringAreaSupported:Z

.field private bOpenCameraFail:Z

.field private bPreviewSizeChanged:Z

.field private bRestartForcePreview:Z

.field private bShotMode:Z

.field private bSkipFlingAfterRecord:Z

.field private iCameraDisplayOrientation:I

.field private iCameraId:I

.field private iDisplayOrientation:I

.field private iDisplayRotation:I

.field private iOrientation:I

.field private iOrientationCompensation:I

.field private iPreviewHeight:I

.field private iPreviewWidth:I

.field private iZoomValue:I

.field private lOnResumeTime:J

.field private lUpdateSet:J

.field private mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

.field private mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field private final mAutoFocusCallback:Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field private mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

.field private volatile mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

.field private final mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

.field private final mHandler:Landroid/os/Handler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private final mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;

.field private mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

.field private mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRootView:Landroid/view/View;

.field private mSaveUri:Landroid/net/Uri;

.field private final mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

.field private mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

.field private sCropValue:Ljava/lang/String;

.field private tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoHashMap;-><init>()V

    .line 70
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 71
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mRootView:Landroid/view/View;

    .line 73
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 74
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 75
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    .line 76
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mContentResolver:Landroid/content/ContentResolver;

    .line 77
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

    .line 78
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 79
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 80
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 81
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 82
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 83
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 84
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 85
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mSaveUri:Landroid/net/Uri;

    .line 86
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 88
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bAeLockSupported:Z

    .line 89
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bAwbLockSupported:Z

    .line 90
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bCameraDisabled:Z

    .line 91
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bRestartForcePreview:Z

    .line 92
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bFocusAreaSupported:Z

    .line 93
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bMeteringAreaSupported:Z

    .line 94
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bOpenCameraFail:Z

    .line 95
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bPreviewSizeChanged:Z

    .line 96
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bShotMode:Z

    .line 97
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bSkipFlingAfterRecord:Z

    .line 98
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bLocalVoice:Z

    .line 100
    iput v2, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    .line 102
    iput v2, p0, Lcom/pantech/app/vegacamera/Video;->iCameraDisplayOrientation:I

    .line 104
    iput v2, p0, Lcom/pantech/app/vegacamera/Video;->iDisplayOrientation:I

    .line 105
    iput v2, p0, Lcom/pantech/app/vegacamera/Video;->iDisplayRotation:I

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/Video;->iOrientation:I

    .line 107
    iput v2, p0, Lcom/pantech/app/vegacamera/Video;->iOrientationCompensation:I

    .line 108
    iput v2, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    .line 110
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/Video;->lOnResumeTime:J

    .line 111
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/Video;->lUpdateSet:J

    .line 113
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->sCropValue:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;

    .line 116
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;-><init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 117
    new-instance v0, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    .line 118
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 119
    new-instance v0, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;

    .line 120
    new-instance v0, Lcom/pantech/app/vegacamera/Video$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Video$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mProfile:Landroid/media/CamcorderProfile;

    .line 127
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->MMSMode:Z

    .line 129
    const/16 v0, 0x500

    iput v0, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewWidth:I

    .line 130
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewHeight:I

    .line 66
    return-void

    :cond_0
    move-object v0, v1

    .line 116
    goto :goto_0
.end method

.method private GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method private ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 675
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 676
    return-void
.end method

.method private _AddScreenOnFlag()V
    .locals 3

    .prologue
    .line 1415
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1416
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 1417
    .local v0, keepScreenOnFlag:I
    if-eqz v1, :cond_0

    .line 1418
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 1419
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1422
    :cond_0
    return-void
.end method

.method private _CameaAfterPreviewDone()V
    .locals 1

    .prologue
    .line 599
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 600
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->StartFaceDetect()V

    .line 601
    :cond_0
    return-void
.end method

.method private _CameraSetForSnapshotFlip()V
    .locals 7

    .prologue
    .line 604
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-nez v3, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 607
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    if-nez v3, :cond_2

    .line 608
    const-string v3, "Video"

    const-string v4, "_CameraSetForSnapshotFlip mAppData.GetComobPref() : null"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 615
    .local v1, mParam:Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_setting_mirror"

    .line 616
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$string;->pref_setting_mirror_default:I

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 615
    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 619
    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 620
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Video;->GetOrientation()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Video;->GetOrientation()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_4

    .line 621
    :cond_3
    const-string v3, "snapshot-picture-flip"

    const-string v4, "flip-h"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v3, "Video"

    const-string v4, "_CameraSetForSnapshotFlip snapshot-picture-flip flip-h"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :goto_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 634
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->IsEngMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 637
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "[Video] device set parameters exception"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 624
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const-string v3, "snapshot-picture-flip"

    const-string v4, "flip-v"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v3, "Video"

    const-string v4, "_CameraSetForSnapshotFlip snapshot-picture-flip flip-v"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 628
    :cond_5
    const-string v3, "snapshot-picture-flip"

    const-string v4, "off"

    invoke-virtual {v1, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string v3, "Video"

    const-string v4, "_CameraSetForSnapshotFlip snapshot-picture-flip off"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 639
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_6
    const-string v3, "Video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Video] set parameters exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _ClearScreenOnFlag()V
    .locals 3

    .prologue
    .line 1405
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1406
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 1407
    .local v0, keepScreenOnFlag:I
    if-eqz v1, :cond_0

    .line 1408
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 1409
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1412
    :cond_0
    return-void
.end method

.method private _CloseCamera()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1324
    const-string v0, "Video"

    const-string v1, "[Video] _CloseCamera()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1326
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1327
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1331
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;->setCbListener(Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;)V

    .line 1334
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1335
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->release()V

    .line 1336
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V

    .line 1337
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1339
    :cond_2
    return-void
.end method

.method private _CreateConfigurations()V
    .locals 4

    .prologue
    .line 1367
    const-string v1, "Video"

    const-string v2, "[Video] _CreateConfigurations"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1371
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_setting_storage_location_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1370
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    .local v0, storageLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->setLocationPref(Ljava/lang/String;)V

    .line 1373
    const-string v1, "Video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_CreateConfigurations storageLocation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    .end local v0           #storageLocation:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1377
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Video;->_GetPreferredCameraId(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    .line 1379
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v3, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetLocalId(Landroid/content/Context;I)V

    .line 1380
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->GetVolatileData()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    invoke-virtual {v2, v1, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetVolatileDataIdx(Ljava/util/ArrayList;I)V

    .line 1381
    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->SetCameraId(I)V

    .line 1382
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1383
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredStorageLocation(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->SetStorageLocationDir(Ljava/lang/String;)V

    .line 1384
    return-void
.end method

.method private _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 660
    const-string v0, "Video"

    const-string v1, "[Video] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    new-instance v0, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/VideoLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    invoke-direct {p0, p0}, Lcom/pantech/app/vegacamera/Video;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 667
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 668
    return-void
.end method

.method private _DestroyLayoutInstance()V
    .locals 2

    .prologue
    .line 679
    const-string v0, "Video"

    const-string v1, "[Video] _DestroyLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Video;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Release()V

    .line 685
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->ReleaseLayoutControlObject()V

    .line 687
    :cond_1
    return-void
.end method

.method private _GetDesiredPreviewSize()V
    .locals 3

    .prologue
    .line 1236
    const-string v0, "Video"

    const-string v1, "[Video] _GetDesiredPreviewSize()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1240
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_ReadVideoProfile()V

    .line 1242
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 1244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_1

    .line 1245
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mProfile:Landroid/media/CamcorderProfile;

    .line 1247
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewWidth:I

    .line 1248
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewHeight:I

    .line 1273
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] iPreviewWidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iPreviewHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _GetLastThumbNail()V
    .locals 3

    .prologue
    .line 570
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    .line 571
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    .line 575
    .local v0, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 576
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    .line 577
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetLastThumbnail()V

    goto :goto_0
.end method

.method private _GetPreferredCameraId(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1356
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1357
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1362
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private _InflateModuleLayout()V
    .locals 3

    .prologue
    .line 448
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->video:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 449
    return-void
.end method

.method private _InitializeAfterDeviceOpen()V
    .locals 3

    .prologue
    .line 581
    const-string v0, "Video"

    const-string v1, "[Video] _InitializeAfterDeviceOpen"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Lcom/pantech/app/vegacamera/PreviewGestures;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/PreviewGestures;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetListener(Lcom/pantech/app/vegacamera/PreviewGestures$Listener;)V

    .line 586
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 588
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_LoadCameraPreferences()V

    .line 589
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 590
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Start()V

    .line 591
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->InitFocusParm(Landroid/hardware/Camera$Parameters;)V

    .line 592
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iDisplayOrientation:I

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetFocusPreview(Landroid/view/View;I)V

    .line 593
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetFocusIndicatior(I[Landroid/hardware/Camera$Face;)V

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_GetLastThumbNail()V

    .line 596
    return-void
.end method

.method private _InitializeCapabilities()V
    .locals 2

    .prologue
    .line 1346
    const-string v0, "Video"

    const-string v1, "[Video] _InitializeCapabilities"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1348
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bFocusAreaSupported:Z

    .line 1349
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bMeteringAreaSupported:Z

    .line 1350
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsAELockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bAeLockSupported:Z

    .line 1351
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsAWBLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bAwbLockSupported:Z

    .line 1353
    return-void
.end method

.method private _InitializeMiscControls()V
    .locals 2

    .prologue
    .line 690
    const-string v0, "Video"

    const-string v1, "[Video] _InitializeMiscControls()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->frame:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 692
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Video;->SetSingleTapUpListener(Landroid/view/View;)V

    .line 693
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    new-instance v1, Lcom/pantech/app/vegacamera/Video$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/Video$1;-><init>(Lcom/pantech/app/vegacamera/Video;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 706
    return-void
.end method

.method private _IsCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1342
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _KeepIdleTimerOnAwhile()V
    .locals 4

    .prologue
    const/16 v3, 0x3f

    .line 1430
    const-string v0, "Video"

    const-string v1, "[Video] _KeepIdleTimerOnAwhile()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1432
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1433
    return-void
.end method

.method private _LoadCameraPreferences()V
    .locals 3

    .prologue
    .line 1387
    const-string v1, "Video"

    const-string v2, "[Video] _LoadCameraPreferences"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    new-instance v0, Lcom/pantech/app/vegacamera/CameraSettings;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;)V

    .line 1389
    .local v0, settings:Lcom/pantech/app/vegacamera/CameraSettings;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    sget v2, Lcom/pantech/app/vegacamera/R$xml;->camera_preferences:I

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreferenceGroup(I)Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetPreferenceGroup(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;)V

    .line 1390
    return-void
.end method

.method private _ReadVideoProfile()V
    .locals 8

    .prologue
    .line 1277
    const-string v5, "Video"

    const-string v6, "[VideoRecord] _ReadVideoProfile()"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    const/4 v2, 0x0

    .line 1281
    .local v2, quality:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1282
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.videoQuality"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1283
    .local v1, extraVideoQuality:I
    if-ltz v1, :cond_0

    const/4 v5, 0x7

    if-gt v1, v5, :cond_0

    .line 1284
    move v2, v1

    .line 1301
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/Video;->mProfile:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    return-void

    .line 1286
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v5}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 1287
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$string;->mms_resolution:I

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1288
    .local v3, videoQuality:Ljava/lang/String;
    sget-object v5, Lcom/pantech/app/vegacamera/Video;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-virtual {v5, v3}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1289
    goto :goto_0

    .line 1292
    .end local v3           #videoQuality:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v5

    const-string v6, "pref_setting_record_size"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1293
    .local v4, videoSize:Ljava/lang/String;
    sget-object v5, Lcom/pantech/app/vegacamera/Video;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-virtual {v5, v4}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1302
    .end local v4           #videoSize:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1304
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method private _ReleaseHandler()V
    .locals 2

    .prologue
    .line 1393
    const-string v0, "Video"

    const-string v1, "[Video] ReleaseHandler()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1395
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1396
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1397
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1398
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1399
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1400
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1401
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    return-void
.end method

.method private _ResetIdleTimer()V
    .locals 2

    .prologue
    .line 1425
    const-string v0, "Video"

    const-string v1, "[Video] _ResetIdleTimer()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1427
    return-void
.end method

.method private _SetAutoExposureLockIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 786
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] _SetAutoExposureLockIfSupported(), bAeLockSupported == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bAeLockSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :cond_0
    return-void
.end method

.method private _SetAutoWhiteBalanceLockIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 794
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] _SetAutoExposureLockIfSupported(), bAwbLockSupported == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bAwbLockSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method private _SetCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1155
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1160
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1162
    :catch_0
    move-exception v0

    .line 1163
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Video] set parameters exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _SetCameraParameters(J)V
    .locals 8
    .parameter "updateSet"

    .prologue
    const-wide/16 v6, 0x0

    .line 1041
    const-string v3, "Video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Video] _SetCameraParameters() :: updateSet = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1152
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 1049
    .local v2, mParam:Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_2

    .line 1050
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 1053
    :cond_2
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_INITIALIZE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_3

    .line 1054
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersInitialize(Landroid/hardware/Camera$Parameters;)V

    .line 1057
    :cond_3
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PREFERENCE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_4

    .line 1058
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersPreference()V

    .line 1061
    :cond_4
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_VIDEOSIZE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_5

    .line 1062
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraparametersVideoSize(Landroid/hardware/Camera$Parameters;)V

    .line 1065
    :cond_5
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_JPEG_QUALITY:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_6

    .line 1066
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersJpegQuality(Landroid/hardware/Camera$Parameters;)V

    .line 1069
    :cond_6
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_7

    .line 1070
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersZoom(Landroid/hardware/Camera$Parameters;)V

    .line 1073
    :cond_7
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BRIGHTNESS:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_8

    .line 1074
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V

    .line 1077
    :cond_8
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_WHITE_BALANCE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_9

    .line 1078
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V

    .line 1081
    :cond_9
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_SCENE_MODE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_a

    .line 1082
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 1085
    :cond_a
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EFFECT:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_b

    .line 1086
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V

    .line 1089
    :cond_b
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_WDR:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_c

    .line 1090
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersWDR(Landroid/hardware/Camera$Parameters;)V

    .line 1093
    :cond_c
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_HDR:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_d

    .line 1094
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V

    .line 1097
    :cond_d
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FLASH:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_e

    .line 1098
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V

    .line 1101
    :cond_e
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ANTI_BANDING:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_f

    .line 1102
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersAntiBanding(Landroid/hardware/Camera$Parameters;)V

    .line 1105
    :cond_f
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_OJT:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_10

    .line 1106
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersOJT(Landroid/hardware/Camera$Parameters;)V

    .line 1109
    :cond_10
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FOCUS_MODE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_11

    .line 1110
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 1113
    :cond_11
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_AUTO_EXPOSURE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_12

    .line 1114
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersAutoExposure(Landroid/hardware/Camera$Parameters;)V

    .line 1117
    :cond_12
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ANTI_SHAKE:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_13

    .line 1118
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersAntiShake(Landroid/hardware/Camera$Parameters;)V

    .line 1121
    :cond_13
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BEAUTY:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_14

    .line 1122
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersBeauty(Landroid/hardware/Camera$Parameters;)V

    .line 1125
    :cond_14
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EXTRACT:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_15

    .line 1126
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V

    .line 1129
    :cond_15
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_SOUND_PLAY:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_16

    .line 1130
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParametersSoundPlay(Landroid/hardware/Camera$Parameters;)V

    .line 1133
    :cond_16
    sget-wide v3, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_MIRROR:J

    and-long/2addr v3, p1

    cmp-long v3, v3, v6

    if-eqz v3, :cond_17

    .line 1134
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Video;->_UpdateCameraParameterFrontCameraFlipForSnapshot(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1140
    .end local v2           #mParam:Landroid/hardware/Camera$Parameters;
    :cond_17
    :goto_1
    const-string v3, "Video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Video] set parameters :: mParameters.toString() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1143
    :try_start_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->IsEngMode()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1146
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "[Video] device set parameters exception"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1136
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1137
    .local v1, e1:Ljava/lang/Exception;
    const-string v3, "Video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Video] set parameters exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1148
    .end local v1           #e1:Ljava/lang/Exception;
    .restart local v0       #e:Ljava/lang/Exception;
    :cond_18
    const-string v3, "Video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Video] set parameters exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private _SetCameraParametersWhenIdle(J)V
    .locals 8
    .parameter "additionalUpdateSet"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 709
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] _SetCameraParametersWhenIdle() :: additionalUpdateSet = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Video;->lUpdateSet:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/Video;->lUpdateSet:J

    .line 713
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] lUpdateSet = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/Video;->lUpdateSet:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 718
    iput-wide v6, p0, Lcom/pantech/app/vegacamera/Video;->lUpdateSet:J

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_IsCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 721
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bRestartForcePreview:Z

    if-eqz v0, :cond_2

    .line 722
    const-string v0, "Video"

    const-string v1, "[Video] ZSL enabled, restarting preview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StartPreview()V

    .line 724
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Video;->bRestartForcePreview:Z

    .line 727
    :cond_2
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Video;->lUpdateSet:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParameters(J)V

    .line 728
    iput-wide v6, p0, Lcom/pantech/app/vegacamera/Video;->lUpdateSet:J

    .line 734
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bPreviewSizeChanged:Z

    if-eqz v0, :cond_0

    .line 735
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Video;->bPreviewSizeChanged:Z

    .line 736
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetPreviewFrameLayoutAspectRatio()V

    .line 737
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StartPreview()V

    goto :goto_0

    .line 730
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 731
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private _SetDisplayOrientation()V
    .locals 2

    .prologue
    .line 1168
    const-string v0, "Video"

    const-string v1, "[Video] _SetDisplayOrientation()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Video;->iDisplayRotation:I

    .line 1170
    iget v0, p0, Lcom/pantech/app/vegacamera/Video;->iDisplayRotation:I

    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Video;->iDisplayOrientation:I

    .line 1171
    const/4 v0, 0x0

    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Video;->iCameraDisplayOrientation:I

    .line 1173
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetFocusDisplayOrientation(I)V

    .line 1177
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->requestLayoutContentPane()V

    .line 1178
    return-void
.end method

.method private _SetFocusAreasIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 803
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] _SetFocusAreasIfSupported(), bFocusAreaSupported ==  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bFocusAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 807
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusArea()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method private _SetMeteringAreasIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 819
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] _SetMeteringAreasIfSupported(), bMeteringAreaSupported ==  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bMeteringAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    return-void
.end method

.method private _SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 656
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 657
    return-void
.end method

.method private _SetPreviewFrameLayoutAspectRatio()V
    .locals 5

    .prologue
    .line 647
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] _SetPreviewFrameLayoutAspectRatio "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    .line 653
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private _SetZoomControl(IZ)V
    .locals 5
    .parameter "state"
    .parameter "fVoice"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1988
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2024
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    if-eqz p2, :cond_4

    const/4 v0, 0x6

    .line 1993
    .local v0, multiple:I
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 1994
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1995
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFocusRelease()V

    .line 1996
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CancelAutoFocus()V

    .line 1999
    :cond_2
    if-nez p1, :cond_5

    .line 2000
    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    .line 2001
    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_3

    .line 2002
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    .line 2003
    if-eqz p2, :cond_3

    .line 2004
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->zoom_in_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2019
    :cond_3
    :goto_2
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParameters(J)V

    .line 2021
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2022
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetZoomIndex(I)V

    goto :goto_0

    .end local v0           #multiple:I
    :cond_4
    move v0, v1

    .line 1991
    goto :goto_1

    .line 2008
    .restart local v0       #multiple:I
    :cond_5
    if-ne p1, v1, :cond_3

    .line 2009
    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    .line 2010
    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    if-gt v2, v1, :cond_3

    .line 2011
    iput v4, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    .line 2012
    if-eqz p2, :cond_3

    .line 2013
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->zoom_out_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private _SetupIntentCaptureParams()V
    .locals 2

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1437
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1438
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mSaveUri:Landroid/net/Uri;

    .line 1439
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->sCropValue:Ljava/lang/String;

    .line 1441
    :cond_0
    return-void
.end method

.method private _ShowErrorAndFinish(II)V
    .locals 4
    .parameter "stateId"
    .parameter "dispTime"

    .prologue
    .line 1520
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] ShowErrorAndFinish() :: stateId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 1522
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1523
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1525
    :cond_0
    return-void
.end method

.method private _ShutterSoundPlay()V
    .locals 5

    .prologue
    .line 835
    const-string v1, "Video"

    const-string v2, "[Video] _ShutterSoundPlay()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v0, 0x0

    .line 837
    .local v0, shutterSound:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_shutter_sound"

    .line 839
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_shutter_sound_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 838
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    :cond_0
    if-nez v0, :cond_2

    .line 855
    :cond_1
    :goto_0
    return-void

    .line 846
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "shutter-sounds-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 850
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 851
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "shutter-sound"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 853
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "shutter-sound"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _StartCameraMode()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 1458
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1517
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Video;->GetShotMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1467
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 1470
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1472
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1473
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v3, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->OpenCamera(Landroid/content/Context;I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1489
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    .line 1490
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    if-eq v1, v5, :cond_4

    .line 1491
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1492
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 1497
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_InitializeCapabilities()V

    .line 1499
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 1501
    const-wide/16 v1, -0x1

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParameters(J)V

    .line 1502
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1504
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_InitializeMiscControls()V

    .line 1506
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StartPreview()V

    .line 1508
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1509
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->InitFocusParm(Landroid/hardware/Camera$Parameters;)V

    .line 1512
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1513
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1515
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Video;->SetShotMode(Z)V

    goto/16 :goto_0

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    const-string v1, "Video"

    const-string v2, "[Video] CameraHardwareException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1479
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1480
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    const-string v1, "Video"

    const-string v2, "[Video] CameraDisabledException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1483
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    :catch_2
    move-exception v0

    .line 1484
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    const-string v1, "Video"

    const-string v2, "[Video] CameraAppCrashException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1494
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_1
.end method

.method private _StartPreview()V
    .locals 4

    .prologue
    .line 1181
    const-string v2, "Video"

    const-string v3, "[Video] _StartPreview"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StopPreview()V

    .line 1187
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Video$OneShotPreviewCallback;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1191
    :try_start_0
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedMetaDataCb()Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1201
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_GetDesiredPreviewSize()V

    .line 1202
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetDisplayOrientation()V

    .line 1204
    const-wide/16 v2, -0x1

    invoke-direct {p0, v2, v3}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParameters(J)V

    .line 1206
    sget-boolean v2, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v2, :cond_4

    .line 1207
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, v2, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    .line 1208
    .local v1, screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    if-nez v2, :cond_2

    .line 1209
    :cond_1
    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iCameraDisplayOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_3

    .line 1210
    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewWidth:I

    iget v3, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    .line 1215
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->NotifyScreenNailChanged()V

    .line 1216
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->acquireSurfaceTexture()V

    .line 1217
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1219
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/Video;->iCameraDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1220
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1227
    .end local v1           #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1232
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1233
    return-void

    .line 1212
    .restart local v1       #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    :cond_3
    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewHeight:I

    iget v3, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewWidth:I

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    goto :goto_1

    .line 1222
    .end local v1           #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/Video;->iDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1223
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_2

    .line 1228
    :catch_0
    move-exception v0

    .line 1229
    .local v0, ex:Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_CloseCamera()V

    .line 1230
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "startPreview failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1195
    .end local v0           #ex:Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    goto/16 :goto_0

    .line 1197
    :catch_2
    move-exception v2

    goto/16 :goto_0
.end method

.method private _StopPreview()V
    .locals 3

    .prologue
    .line 1311
    const-string v1, "Video"

    const-string v2, "[Video] _StopPreview"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1314
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1320
    return-void

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Video"

    const-string v2, "[Video] camera device stop preview exception"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParameterFrontCameraFlipForSnapshot(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "parm"

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_mirror"

    .line 1030
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_mirror_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1029
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1031
    .local v0, str:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1032
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Video;->GetOrientation()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Video;->GetOrientation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    .line 1033
    :cond_0
    const-string v1, "snapshot-picture-flip"

    const-string v2, "flip-h"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    :goto_0
    return-void

    .line 1035
    :cond_1
    const-string v1, "snapshot-picture-flip"

    const-string v2, "flip-v"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :cond_2
    const-string v1, "snapshot-picture-flip"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersAntiBanding(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 936
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_anti_banding"

    .line 937
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_anti_banding_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 936
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, mAntiBanding:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedAntiBanding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    const-string v1, "Video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Video] antibanding mAntiBanding = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v1, "antibanding-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 942
    const-string v1, "antibanding"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    const-string v1, "Video"

    const-string v2, "[Video] antibanding is not supported"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersAntiShake(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_anti_shake"

    .line 1005
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_anti_shake_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1004
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, mAntiShake:Ljava/lang/String;
    const-string v1, "Video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Video] mAntiShake = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    const-string v1, "pantech-antishake-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    const-string v1, "pantech-antishake"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    :goto_0
    return-void

    .line 1012
    :cond_0
    const-string v1, "Video"

    const-string v2, "[Video] is not supported antishake"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersAutoExposure(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 1001
    return-void
.end method

.method private _UpdateCameraParametersBeauty(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method private _UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 778
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_ev"

    .line 779
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_ev_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 778
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 780
    .local v0, mEV:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "luma-adaptation"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method private _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 877
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_group"

    .line 878
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_group_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 877
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, mEffectGroup:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 881
    .local v0, colorEffect:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "pref_effect_color_mono"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 882
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_mono"

    .line 883
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 882
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 892
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 893
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 894
    const-string v2, "Video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Video] set param color effect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_1
    return-void

    .line 884
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "pref_effect_color_sepia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 885
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_sepia"

    .line 886
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 885
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    const-string v2, "pref_effect_color_aqua"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 888
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_aqua"

    .line 889
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 888
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-colorextraction"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method private _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 920
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_flash_mode_camera"

    .line 921
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_flash_mode_video_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 920
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, flashMode:Ljava/lang/String;
    const-string v2, "Video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Video] flashMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 927
    .local v1, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 928
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 929
    const-string v2, "Video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Video] _UpdateCameraParametersFLASH flashMode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :goto_0
    return-void

    .line 931
    :cond_0
    const-string v2, "Video"

    const-string v3, "[Video] _UpdateCameraParametersFLASH flashMode:null"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 961
    const-string v2, "Video"

    const-string v3, "[Video] UpdateCameraParametersFocusMode"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const/4 v1, 0x0

    .line 964
    .local v1, mode:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 965
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->GetFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 966
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 975
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Video;->_updateAutoFocusMoveCallback(Ljava/lang/String;)V

    .line 976
    return-void

    .line 968
    :catch_0
    move-exception v0

    .line 969
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_focus_mode_status"

    .line 970
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_focus_mode_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 969
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 971
    const-string v2, "Video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Video] param.UpdateCameraParametersFocusMode + mode =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 912
    const-string v0, "pantech-hdr-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const-string v0, "Video"

    const-string v1, "[Video] is not supported hdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    :goto_0
    return-void

    .line 915
    :cond_0
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersInitialize(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 743
    return-void
.end method

.method private _UpdateCameraParametersJpegQuality(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 767
    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 768
    .local v0, jpegQuality:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 769
    return-void
.end method

.method private _UpdateCameraParametersOJT(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 950
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_focus_mode"

    .line 951
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_focus_mode_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 950
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, mObjectFocusMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "Object Tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    const-string v1, "pantech-ojt"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    :goto_0
    return-void

    .line 956
    :cond_0
    const-string v1, "pantech-ojt"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersPreference()V
    .locals 0

    .prologue
    .line 828
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetAutoExposureLockIfSupported()V

    .line 829
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetAutoWhiteBalanceLockIfSupported()V

    .line 830
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetFocusAreasIfSupported()V

    .line 831
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetMeteringAreasIfSupported()V

    .line 832
    return-void
.end method

.method private _UpdateCameraParametersSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 874
    return-void
.end method

.method private _UpdateCameraParametersSoundPlay(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_ShutterSoundPlay()V

    .line 1026
    return-void
.end method

.method private _UpdateCameraParametersWDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 899
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pantech-wdr-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 902
    const-string v0, "pantech-wdr-mode"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :goto_0
    return-void

    .line 904
    :cond_0
    const-string v0, "Video"

    const-string v1, "[Video] app data wdr state is null"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_1
    const-string v0, "Video"

    const-string v1, "[Video] is not supported wdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 858
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_wb"

    .line 859
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_setting_wb_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 858
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, whiteBalance:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 862
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 863
    const-string v2, "Video"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Video] set param wb = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 865
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, mWhiteBalance:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 867
    const-string v2, "auto"

    goto :goto_0
.end method

.method private _UpdateCameraParametersZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 775
    :cond_0
    return-void
.end method

.method private _UpdateCameraparametersVideoSize(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 746
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_setting_record_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 747
    .local v0, newVideoSize:Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "video-size"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, orgVideoSize:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 750
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->InitialVideoSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 756
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/Video;->bPreviewSizeChanged:Z

    .line 758
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_GetDesiredPreviewSize()V

    .line 760
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewWidth:I

    iget v5, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 761
    const-string v3, "Video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Video] _UpdateCameraparametersVideoSize setPreviewSize "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/app/vegacamera/Video;->iPreviewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "video-size"

    invoke-virtual {v3, v4, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    const-string v3, "Video"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Video] _UpdateCameraparametersVideoSize set video-size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    return-void

    .line 752
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 753
    .local v2, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/pantech/app/vegacamera/CameraSettings;->SetVideoSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method private _WaitCameraStartUpThread()V
    .locals 2

    .prologue
    .line 386
    const-string v0, "Video"

    const-string v1, "[Video] _WaitCameraStartUpThread()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->Cancel()V

    .line 390
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->join()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    .line 392
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private _updateAutoFocusMoveCallback(Ljava/lang/String;)V
    .locals 2
    .parameter "mode"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 981
    if-nez p1, :cond_0

    .line 989
    :goto_0
    return-void

    .line 984
    :cond_0
    const-string v0, "continuous-picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 985
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/vegacamera/Video$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/Video;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 708
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParametersWhenIdle(J)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/Video;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_CameaAfterPreviewDone()V

    return-void
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/Video;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Video;->bOpenCameraFail:Z

    return-void
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/Video;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1519
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Video;->_ShowErrorAndFinish(II)V

    return-void
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/Video;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Video;->bCameraDisabled:Z

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 1457
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StartCameraMode()V

    return-void
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1
    .parameter

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_CameraSetForSnapshotFlip()V

    return-void
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/Video;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput p1, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    return-void
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/Video;)I
    .locals 1
    .parameter

    .prologue
    .line 100
    iget v0, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/Video;)I
    .locals 1
    .parameter

    .prologue
    .line 105
    iget v0, p0, Lcom/pantech/app/vegacamera/Video;->iDisplayRotation:I

    return v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/Video;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_InitializeCapabilities()V

    return-void
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/Video;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1040
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParameters(J)V

    return-void
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 1180
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StartPreview()V

    return-void
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/Video;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Video;->bSkipFlingAfterRecord:Z

    return-void
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/video/VideoRecord;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    return-object v0
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    return-void
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 1414
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_AddScreenOnFlag()V

    return-void
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 1429
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_KeepIdleTimerOnAwhile()V

    return-void
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/Video;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bLocalVoice:Z

    return v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 1167
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetDisplayOrientation()V

    return-void
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_InflateModuleLayout()V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/Video;)J
    .locals 2
    .parameter

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Video;->lOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 646
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetPreviewFrameLayoutAspectRatio()V

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_InitializeAfterDeviceOpen()V

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method


# virtual methods
.method public AbsRecordingStopComplete()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public CameraErrorCbNotify(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1984
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/Video;->_ShowErrorAndFinish(II)V

    .line 1985
    return-void
.end method

.method public DispatchTouchE(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v0, 0x1

    .line 1598
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1615
    :cond_0
    :goto_0
    return v0

    .line 1602
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerDepthAct()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1605
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/PreviewGestures;->DispatchTouchEv(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1610
    :cond_2
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Video;->bSkipFlingAfterRecord:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1611
    const-string v1, "Video"

    const-string v2, "[Video] skip SuperDispatchTouchEvent:OnFling after Recording before OnFullScreenChanged"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1615
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/Camera;->SuperDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public DoAttach([B)V
    .locals 15
    .parameter "jpegImageData"

    .prologue
    .line 1775
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v11, v11, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v11, :cond_1

    .line 1867
    :cond_0
    :goto_0
    return-void

    .line 1779
    :cond_1
    const-string v11, "Video"

    const-string v12, "[Video] doAttach"

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    const-string v8, "crop-temp"

    .line 1783
    .local v8, sTempCropFilename:Ljava/lang/String;
    move-object/from16 v2, p1

    .line 1785
    .local v2, data:[B
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->sCropValue:Ljava/lang/String;

    if-nez v11, :cond_4

    .line 1790
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mSaveUri:Landroid/net/Uri;

    if-eqz v11, :cond_3

    .line 1791
    const/4 v6, 0x0

    .line 1793
    .local v6, outputStream:Ljava/io/OutputStream;
    :try_start_0
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v12, p0, Lcom/pantech/app/vegacamera/Video;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 1794
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 1795
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    .line 1797
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(I)V

    .line 1798
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1803
    if-eqz v6, :cond_0

    .line 1804
    :try_start_1
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    goto :goto_0

    .line 1806
    :catch_0
    move-exception v11

    goto :goto_0

    .line 1799
    :catch_1
    move-exception v11

    .line 1803
    if-eqz v6, :cond_0

    .line 1804
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 1806
    :catch_2
    move-exception v11

    goto :goto_0

    .line 1801
    :catchall_0
    move-exception v11

    .line 1803
    if-eqz v6, :cond_2

    .line 1804
    :try_start_3
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9

    .line 1811
    :cond_2
    :goto_1
    throw v11

    .line 1813
    .end local v6           #outputStream:Ljava/io/OutputStream;
    :cond_3
    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v5

    .line 1814
    .local v5, orientation:I
    const v11, 0xc800

    invoke-static {v2, v11}, Lcom/pantech/app/vegacamera/util/Util;->MakeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1815
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/util/Util;->BmRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1816
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v12, -0x1

    new-instance v13, Landroid/content/Intent;

    const-string v14, "inline-data"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v14, "data"

    invoke-virtual {v13, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(ILandroid/content/Intent;)V

    .line 1817
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto :goto_0

    .line 1821
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #orientation:I
    :cond_4
    const/4 v10, 0x0

    .line 1822
    .local v10, tempUri:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 1824
    .local v9, tempStream:Ljava/io/FileOutputStream;
    :try_start_4
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v12, "crop-temp"

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/ActivityBase;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1825
    .local v7, path:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 1826
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v12, "crop-temp"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/pantech/app/vegacamera/ActivityBase;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 1827
    invoke-virtual {v9, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 1828
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 1829
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v10

    .line 1840
    if-eqz v9, :cond_5

    .line 1841
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_10

    .line 1850
    :cond_5
    :goto_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 1851
    .local v4, newExtras:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->sCropValue:Ljava/lang/String;

    const-string v12, "circle"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1852
    const-string v11, "circleCrop"

    const-string v12, "true"

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    :cond_6
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mSaveUri:Landroid/net/Uri;

    if-eqz v11, :cond_8

    .line 1855
    const-string v11, "output"

    iget-object v12, p0, Lcom/pantech/app/vegacamera/Video;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1860
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-string v11, "com.android.camera.action.CROP"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1862
    .local v1, cropIntent:Landroid/content/Intent;
    invoke-virtual {v1, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1863
    invoke-virtual {v1, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1865
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v1, v12}, Lcom/pantech/app/vegacamera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1830
    .end local v1           #cropIntent:Landroid/content/Intent;
    .end local v4           #newExtras:Landroid/os/Bundle;
    .end local v7           #path:Ljava/io/File;
    :catch_3
    move-exception v3

    .line 1831
    .local v3, ex:Ljava/io/FileNotFoundException;
    :try_start_6
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(I)V

    .line 1832
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1840
    if-eqz v9, :cond_0

    .line 1841
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    goto/16 :goto_0

    .line 1843
    :catch_4
    move-exception v11

    goto/16 :goto_0

    .line 1834
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v3

    .line 1835
    .local v3, ex:Ljava/io/IOException;
    :try_start_8
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(I)V

    .line 1836
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1840
    if-eqz v9, :cond_0

    .line 1841
    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_c

    goto/16 :goto_0

    .line 1843
    :catch_6
    move-exception v11

    goto/16 :goto_0

    .line 1838
    .end local v3           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v11

    .line 1840
    if-eqz v9, :cond_7

    .line 1841
    :try_start_a
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_e

    .line 1848
    :cond_7
    :goto_4
    throw v11

    .line 1857
    .restart local v4       #newExtras:Landroid/os/Bundle;
    .restart local v7       #path:Ljava/io/File;
    :cond_8
    const-string v11, "return-data"

    const/4 v12, 0x1

    invoke-virtual {v4, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1808
    .end local v4           #newExtras:Landroid/os/Bundle;
    .end local v7           #path:Ljava/io/File;
    .end local v9           #tempStream:Ljava/io/FileOutputStream;
    .end local v10           #tempUri:Landroid/net/Uri;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :catch_7
    move-exception v11

    goto/16 :goto_0

    .line 1806
    :catch_8
    move-exception v12

    goto/16 :goto_1

    .line 1808
    :catch_9
    move-exception v12

    goto/16 :goto_1

    :catch_a
    move-exception v11

    goto/16 :goto_0

    .line 1845
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local v3, ex:Ljava/io/FileNotFoundException;
    .restart local v9       #tempStream:Ljava/io/FileOutputStream;
    .restart local v10       #tempUri:Landroid/net/Uri;
    :catch_b
    move-exception v11

    goto/16 :goto_0

    .local v3, ex:Ljava/io/IOException;
    :catch_c
    move-exception v11

    goto/16 :goto_0

    .line 1843
    .end local v3           #ex:Ljava/io/IOException;
    :catch_d
    move-exception v12

    goto :goto_4

    .line 1845
    :catch_e
    move-exception v12

    goto :goto_4

    .line 1843
    .restart local v7       #path:Ljava/io/File;
    :catch_f
    move-exception v11

    goto/16 :goto_2

    .line 1845
    :catch_10
    move-exception v11

    goto/16 :goto_2
.end method

.method public GetCameraId()I
    .locals 3

    .prologue
    .line 2045
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] mCamreaId == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    iget v0, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    return v0
.end method

.method public GetOrientation()I
    .locals 1

    .prologue
    .line 2050
    iget v0, p0, Lcom/pantech/app/vegacamera/Video;->iOrientation:I

    return v0
.end method

.method public GetShotMode()Z
    .locals 1

    .prologue
    .line 2054
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bShotMode:Z

    return v0
.end method

.method public Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 3
    .parameter "activity"
    .parameter "parent"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 401
    const-string v0, "Video"

    const-string v1, "[Video] Init()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 403
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iput-object p2, p0, Lcom/pantech/app/vegacamera/Video;->mRootView:Landroid/view/View;

    .line 404
    iput-object p3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 406
    new-instance v0, Lcom/pantech/app/vegacamera/util/ElapsedTime;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/util/ElapsedTime;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

    .line 407
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/ElapsedTime;->start()V

    .line 409
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 411
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_CreateConfigurations()V

    .line 413
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_InflateModuleLayout()V

    .line 415
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_CreateLayoutInstance()V

    .line 417
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mContentResolver:Landroid/content/ContentResolver;

    .line 419
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->EnterLightsOutMode(Landroid/view/Window;)V

    .line 420
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->InitializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 422
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 424
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 426
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetupIntentCaptureParams()V

    .line 431
    :goto_0
    new-instance v0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;-><init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    .line 432
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->start()V

    .line 433
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 435
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_InitializeMiscControls()V

    .line 436
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_0
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2098
    packed-switch p1, :pswitch_data_0

    .line 2107
    :cond_0
    :goto_0
    return-void

    .line 2100
    :pswitch_0
    if-eqz p3, :cond_0

    .line 2101
    const-string v1, "pref_intent_value"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2102
    .local v0, newPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredStorageLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto :goto_0

    .line 2098
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public OnBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1529
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Video;->GetShotMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1530
    const-string v0, "Video"

    const-string v1, "[Video] OnBackPressed() :: video record mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    if-nez v0, :cond_1

    .line 1532
    const/4 v0, 0x0

    .line 1552
    :cond_0
    :goto_0
    return v0

    .line 1534
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->OnBackPressed()Z

    move-result v0

    goto :goto_0

    .line 1536
    :cond_2
    const-string v1, "Video"

    const-string v2, "[Video] OnBackPressed() :: camera mode"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_IsCameraIdle()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1538
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1540
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1541
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnBackPressed()Z

    move-result v0

    goto :goto_0

    .line 1549
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1550
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public OnCameraSwitch()V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public OnCaptureAnimationEnded()V
    .locals 0

    .prologue
    .line 1970
    return-void
.end method

.method public OnDestroy()V
    .locals 2

    .prologue
    .line 565
    const-string v0, "Video"

    const-string v1, "[Video] OnDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_DestroyLayoutInstance()V

    .line 567
    return-void
.end method

.method public OnFullScreenChanged(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 1659
    const-string v0, "Video"

    const-string v1, "[Video] OnFullScreenChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bSkipFlingAfterRecord:Z

    .line 1661
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 1664
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1665
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFullScreenChanged(Z)V

    .line 1667
    :cond_1
    return-void
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1560
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1561
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1574
    :cond_0
    :goto_0
    return v0

    .line 1564
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1565
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1574
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1569
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1579
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1580
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1593
    :cond_0
    :goto_0
    return v0

    .line 1583
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1584
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1593
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1588
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public OnLongPress(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1646
    const-string v0, "Video"

    const-string v1, "[Video] OnLongPress()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1647
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1648
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1649
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/PreviewGestures;->IsScaling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/PreviewGestures;->IsMulti()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1655
    :cond_1
    :goto_0
    return-void

    .line 1652
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1653
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnLongPress(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public OnModeDestroy()V
    .locals 0

    .prologue
    .line 561
    return-void
.end method

.method public OnOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 1759
    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iOrientation:I

    invoke-static {p1, v1}, Lcom/pantech/app/vegacamera/util/Util;->RoundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Video;->iOrientation:I

    .line 1760
    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iOrientation:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 1761
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 1762
    iput v0, p0, Lcom/pantech/app/vegacamera/Video;->iOrientationCompensation:I

    .line 1763
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_SetDisplayOrientation()V

    .line 1764
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_CameraSetForSnapshotFlip()V

    .line 1766
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1767
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iOrientationCompensation:I

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnOrientationChanged(I)V

    .line 1769
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    if-eqz v1, :cond_2

    .line 1770
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget v2, p0, Lcom/pantech/app/vegacamera/Video;->iOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->SetOrientationChanged(I)V

    .line 1772
    :cond_2
    return-void
.end method

.method public OnPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 497
    const-string v1, "Video"

    const-string v2, "[Video] OnPause()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_WaitCameraStartUpThread()V

    .line 503
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Video;->GetShotMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Video;->GetShotMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 513
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->OnPause()V

    .line 516
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 523
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->releaseSurfaceTexture()V

    .line 525
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 526
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 528
    :cond_2
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Video;->SetSingleTapUpListener(Landroid/view/View;)V

    .line 530
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v1, :cond_3

    .line 531
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/PreviewGestures;->Release()V

    .line 532
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 535
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 536
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICapture;->onRelease()V

    .line 537
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 540
    :cond_4
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 541
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Stop()V

    .line 544
    :cond_5
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_ResetIdleTimer()V

    .line 545
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_ReleaseHandler()V

    .line 547
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_ClearScreenOnFlag()V

    .line 549
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 550
    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/Video;->SetShotMode(Z)V

    .line 551
    return-void

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Video] OnPause cancelAutoFocus failed() , RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 518
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 519
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StopPreview()V

    .line 520
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_CloseCamera()V

    goto :goto_1
.end method

.method public OnPreCameraSwitch()V
    .locals 0

    .prologue
    .line 488
    return-void
.end method

.method public OnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 458
    const-string v0, "Video"

    const-string v1, "[Video] OnResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    if-nez v0, :cond_4

    .line 465
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 466
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    .line 467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 468
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 474
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_CreateConfigurations()V

    .line 475
    new-instance v0, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;-><init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    .line 476
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;->start()V

    .line 477
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_InitializeMiscControls()V

    .line 480
    :cond_4
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_AddScreenOnFlag()V

    .line 481
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_KeepIdleTimerOnAwhile()V

    .line 482
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Video;->bSkipFlingAfterRecord:Z

    goto :goto_0

    .line 471
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_1
.end method

.method public OnSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/video/VideoRecord;->OnSingleTapUp(Landroid/view/View;II)V

    .line 1642
    :cond_0
    :goto_0
    return-void

    .line 1638
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1639
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnSingleTapUp(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public OnSmartCoverClose()V
    .locals 0

    .prologue
    .line 2094
    return-void
.end method

.method public OnSmartCoverOpen()V
    .locals 0

    .prologue
    .line 2089
    return-void
.end method

.method public OnStart()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method public OnStop()V
    .locals 0

    .prologue
    .line 556
    return-void
.end method

.method public OnUserInteraction()V
    .locals 2

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1623
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_KeepIdleTimerOnAwhile()V

    .line 1625
    :cond_1
    return-void
.end method

.method public OperCapture(II)V
    .locals 2
    .parameter "what"
    .parameter "count"

    .prologue
    .line 1713
    const-string v0, "Video"

    const-string v1, "[Video] OperCapture"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    return-void
.end method

.method public OperFocus(I)V
    .locals 4
    .parameter "what"

    .prologue
    const/4 v3, 0x1

    .line 1717
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1755
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    const-string v1, "Video"

    const-string v2, "[Video] OperFocus"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1725
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 1726
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/Video$AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 1727
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto :goto_0

    .line 1732
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1734
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1735
    :catch_0
    move-exception v0

    .line 1736
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Video"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Video] OperFocus cancelAutoFocus failed() , RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1741
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_2
    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    if-nez v1, :cond_0

    .line 1742
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1743
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 1748
    :pswitch_3
    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iCameraId:I

    if-nez v1, :cond_0

    .line 1749
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1750
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopFaceDetection()V

    goto :goto_0

    .line 1723
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public RecordingComplete()V
    .locals 2

    .prologue
    .line 2033
    const-string v0, "Video"

    const-string v1, "[Video] RecordingComplete()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    return-void
.end method

.method public SetFocusOperHandler(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 1709
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/Video;->OperFocus(I)V

    .line 1710
    return-void
.end method

.method public SetOperHandler(I)V
    .locals 5
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1871
    sparse-switch p1, :sswitch_data_0

    .line 1960
    :goto_0
    return-void

    .line 1873
    :sswitch_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1874
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->ShowDisableToast()V

    goto :goto_0

    .line 1878
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1879
    new-instance v0, Lcom/pantech/app/vegacamera/Video$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Video$2;-><init>(Lcom/pantech/app/vegacamera/Video;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 1927
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->CheckFileSize(Lcom/pantech/app/vegacamera/ActivityBase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1928
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    .line 1931
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetLocalVoice(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bLocalVoice:Z

    .line 1932
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Video;->bLocalVoice:Z

    if-eqz v0, :cond_3

    .line 1933
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetLocalVoice(Landroid/content/Context;Z)V

    .line 1934
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusGainOper()V

    .line 1936
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1937
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StopPreview()V

    .line 1938
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget v1, p0, Lcom/pantech/app/vegacamera/Video;->iOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->setRecordingOrientation(I)V

    .line 1939
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/video/VideoRecord;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 1941
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 1942
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Video;->SetShotMode(Z)V

    .line 1944
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_ResetIdleTimer()V

    goto :goto_0

    .line 1948
    :sswitch_1
    invoke-direct {p0, v2, v4}, Lcom/pantech/app/vegacamera/Video;->_SetZoomControl(IZ)V

    goto :goto_0

    .line 1952
    :sswitch_2
    invoke-direct {p0, v4, v4}, Lcom/pantech/app/vegacamera/Video;->_SetZoomControl(IZ)V

    goto :goto_0

    .line 1956
    :sswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopSmoothZoom()V

    goto/16 :goto_0

    .line 1871
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x24 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_1
    .end sparse-switch
.end method

.method public SetOperHandler(II)V
    .locals 2
    .parameter "what"
    .parameter "count"

    .prologue
    .line 1688
    sparse-switch p1, :sswitch_data_0

    .line 1705
    :goto_0
    return-void

    .line 1692
    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/Video;->OperCapture(II)V

    goto :goto_0

    .line 1696
    :sswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    goto :goto_0

    .line 1700
    :sswitch_2
    iput p2, p0, Lcom/pantech/app/vegacamera/Video;->iZoomValue:I

    .line 1701
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParameters(J)V

    goto :goto_0

    .line 1688
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x23 -> :sswitch_1
        0x25 -> :sswitch_2
    .end sparse-switch
.end method

.method public SetOperHandler(IZ)V
    .locals 0
    .parameter "what"
    .parameter "state"

    .prologue
    .line 2113
    return-void
.end method

.method public SetParameter(J)V
    .locals 0
    .parameter "what"

    .prologue
    .line 1683
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParameters(J)V

    .line 1684
    return-void
.end method

.method public SetParameter(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1678
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] setParameter + name =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    return-void
.end method

.method public SetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1671
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] setParameter + name =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "value =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1674
    return-void
.end method

.method public SetShotMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2058
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Video;->bShotMode:Z

    .line 2059
    return-void
.end method

.method public SetSingleTapUpListener(Landroid/view/View;)V
    .locals 2
    .parameter "singleTapArea"

    .prologue
    .line 1629
    const-string v0, "Video"

    const-string v1, "[Video] SetSingleTapUpListener()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    .line 1631
    return-void
.end method

.method public SetUpdateParameter(J)V
    .locals 3
    .parameter "what"

    .prologue
    .line 1964
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1965
    return-void
.end method

.method public SetupPreview()V
    .locals 2

    .prologue
    .line 2037
    const-string v0, "Video"

    const-string v1, "[Video] SetupPreview()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 2040
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PREFERENCE:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/Video;->_SetCameraParameters(J)V

    .line 2042
    return-void
.end method

.method public StorageChanged()V
    .locals 0

    .prologue
    .line 2133
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StopPreview()V

    .line 2134
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->_StartCameraMode()V

    .line 2135
    return-void
.end method

.method public ZoomControl(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2028
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/Video;->_SetZoomControl(IZ)V

    .line 2029
    return-void
.end method

.method protected _GotoQuickview()V
    .locals 5

    .prologue
    .line 2116
    const-string v1, "Video"

    const-string v2, "[Video]_GotoQuickview"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2119
    const-string v1, "Video"

    const-string v2, "[Video] _GotoQuickview is skipped when IsGallerySecretMode"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2129
    :cond_0
    :goto_0
    return-void

    .line 2123
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_goto_viewer"

    .line 2124
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_goto_viewer_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2123
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2126
    .local v0, mSaveAfterView:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2127
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->GotoQuickView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBatteryStateChanged(I)V
    .locals 3
    .parameter "batteryState"

    .prologue
    .line 2063
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBatteryStateEvent() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2064
    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 3
    .parameter "callState"

    .prologue
    .line 2068
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 1974
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusData([Landroid/hardware/Camera$Face;)V

    .line 1976
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1977
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStart(I)V

    .line 1980
    :cond_0
    return-void
.end method

.method public onHeadSetStateChanged(I)V
    .locals 3
    .parameter "headsetState"

    .prologue
    .line 2083
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHeadSetStateChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2084
    return-void
.end method

.method public onMediaStateChanged()V
    .locals 2

    .prologue
    .line 2073
    const-string v0, "Video"

    const-string v1, "onMediaStateEvent()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    return-void
.end method

.method public onRingerModeStateChanged(I)V
    .locals 3
    .parameter "audioSystemState"

    .prologue
    .line 2078
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRingerModeStateEvent() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2079
    return-void
.end method

.method public setFocusCallback(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 439
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->setFocusCallback(Z)V

    .line 445
    :goto_0
    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusResult(Z)V

    .line 443
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Video;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    goto :goto_0
.end method
