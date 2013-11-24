.class public Lcom/pantech/app/vegacamera/Effects;
.super Lcom/pantech/app/vegacamera/video/VideoHashMap;
.source "Effects.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICamera;
.implements Lcom/pantech/app/vegacamera/operator/IOperInterface;
.implements Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/pantech/app/vegacamera/PreviewGestures$Listener;
.implements Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;,
        Lcom/pantech/app/vegacamera/Effects$AutoFocusMoveCallback;,
        Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;,
        Lcom/pantech/app/vegacamera/Effects$CaptureHandler;,
        Lcom/pantech/app/vegacamera/Effects$ImageNamer;,
        Lcom/pantech/app/vegacamera/Effects$ImageSaver;,
        Lcom/pantech/app/vegacamera/Effects$MainHandler;,
        Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;,
        Lcom/pantech/app/vegacamera/Effects$SaveRequest;
    }
.end annotation


# static fields
.field private static final RESTART_CAPTURE:I = 0x2

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Effects"

.field private static final UPDATE_THUMBNAIL:I = 0x3


# instance fields
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

.field public effectPreviewCondition:Landroid/os/ConditionVariable;

.field i:I

.field private iCameraDisplayOrientation:I

.field private iCameraId:I

.field private iDisplayOrientation:I

.field private iDisplayRotation:I

.field private iOrientation:I

.field private iOrientationCompensation:I

.field private iPreviewHeight:I

.field private iPreviewWidth:I

.field private iZoomValue:I

.field private imageHeight:I

.field private imageJpegData:[B

.field private imageWidth:I

.field private iseffectPreviewConditionBlocked:Z

.field private lOnResumeTime:J

.field private lUpdateSet:J

.field private mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

.field private mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field private final mAutoFocusCallback:Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field private mCameraDevice:Landroid/hardware/Camera;

.field private mCameraDisplayOrientation:I

.field private mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

.field private volatile mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

.field private final mCaptureHandler:Landroid/os/Handler;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentEffect:I

.field private mCurrentEffectDistortionAmt:I

.field private mEffect:I

.field private mEffectDistortionAmt:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

.field protected mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

.field private mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

.field private final mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

.field private mFIS:Ljava/io/FileInputStream;

.field private mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

.field private mGraphEnv:Landroid/filterfw/GraphEnvironment;

.field private mGraphId:I

.field public final mHandler:Landroid/os/Handler;

.field private mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;

.field private mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mOldRunner:Landroid/filterfw/core/GraphRunner;

.field private final mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;

.field private mOrientationHint:I

.field private mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

.field private mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

.field private mPreviewHeight:I

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewWidth:I

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

.field private mRootView:Landroid/view/View;

.field private mRunner:Landroid/filterfw/core/GraphRunner;

.field private mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field private mSaveUri:Landroid/net/Uri;

.field private mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

.field private final mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureSource:Landroid/graphics/SurfaceTexture;

.field private mediaScannerConn:Landroid/media/MediaScannerConnection;

.field private sCropValue:Ljava/lang/String;

.field private tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoHashMap;-><init>()V

    .line 91
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 92
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mRootView:Landroid/view/View;

    .line 95
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 96
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 97
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    .line 98
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mContentResolver:Landroid/content/ContentResolver;

    .line 99
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

    .line 100
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mFIS:Ljava/io/FileInputStream;

    .line 101
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 102
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 103
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 104
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 105
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 106
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 107
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 108
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mSaveUri:Landroid/net/Uri;

    .line 109
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    .line 112
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bAeLockSupported:Z

    .line 113
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bAwbLockSupported:Z

    .line 114
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bCameraDisabled:Z

    .line 115
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bRestartForcePreview:Z

    .line 116
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bFocusAreaSupported:Z

    .line 117
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bMeteringAreaSupported:Z

    .line 118
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bOpenCameraFail:Z

    .line 119
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bPreviewSizeChanged:Z

    .line 120
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bShotMode:Z

    .line 121
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bSkipFlingAfterRecord:Z

    .line 122
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bLocalVoice:Z

    .line 124
    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    .line 126
    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraDisplayOrientation:I

    .line 128
    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->iDisplayOrientation:I

    .line 129
    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->iDisplayRotation:I

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientation:I

    .line 131
    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    .line 132
    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    .line 135
    iput-wide v5, p0, Lcom/pantech/app/vegacamera/Effects;->lOnResumeTime:J

    .line 136
    iput-wide v5, p0, Lcom/pantech/app/vegacamera/Effects;->lUpdateSet:J

    .line 139
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 140
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 148
    iput v3, p0, Lcom/pantech/app/vegacamera/Effects;->mEffect:I

    .line 149
    iput v3, p0, Lcom/pantech/app/vegacamera/Effects;->mCurrentEffect:I

    .line 150
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectParameter:Ljava/lang/Object;

    .line 151
    iput v4, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectDistortionAmt:I

    .line 152
    iput v4, p0, Lcom/pantech/app/vegacamera/Effects;->mCurrentEffectDistortionAmt:I

    .line 154
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    .line 155
    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mOrientationHint:I

    .line 156
    const/16 v0, 0x500

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewWidth:I

    .line 157
    const/16 v0, 0x2d0

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewHeight:I

    .line 159
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->sCropValue:Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;

    .line 162
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/Effects$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Effects$AutoFocusMoveCallback;-><init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$AutoFocusMoveCallback;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 163
    new-instance v0, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    .line 164
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 165
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;

    .line 167
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Effects$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    .line 169
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    .line 170
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->effectPreviewCondition:Landroid/os/ConditionVariable;

    .line 171
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->iseffectPreviewConditionBlocked:Z

    .line 174
    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->i:I

    .line 1664
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Effects$1;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    .line 1772
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Effects$2;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    .line 1821
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Effects$3;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 1832
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$4;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Effects$4;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 2414
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$5;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Effects$5;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

    .line 3113
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$CaptureHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Effects$CaptureHandler;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mCaptureHandler:Landroid/os/Handler;

    .line 3115
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    .line 3116
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    .line 3117
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->imageJpegData:[B

    .line 177
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    .line 178
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    .line 179
    return-void

    :cond_0
    move-object v0, v1

    .line 162
    goto :goto_0
.end method

.method private GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method private ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 749
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 750
    return-void
.end method

.method private _AddScreenOnFlag()V
    .locals 3

    .prologue
    .line 2066
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2067
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 2068
    .local v0, keepScreenOnFlag:I
    if-eqz v1, :cond_0

    .line 2069
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 2070
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 2073
    :cond_0
    return-void
.end method

.method private _CameaAfterPreviewDone()V
    .locals 1

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->StartFaceDetect()V

    .line 672
    return-void
.end method

.method private _CameraSetForSnapshotFlip()V
    .locals 0

    .prologue
    .line 676
    return-void
.end method

.method private _ClearScreenOnFlag()V
    .locals 3

    .prologue
    .line 2056
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 2057
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 2058
    .local v0, keepScreenOnFlag:I
    if-eqz v1, :cond_0

    .line 2059
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 2060
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 2063
    :cond_0
    return-void
.end method

.method private _CloseCamera()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1972
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1973
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_ReleaseEffectsRecorder()V

    .line 1975
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1976
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1979
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1980
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1981
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;->setCbListener(Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;)V

    .line 1982
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->release()V

    .line 1983
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V

    .line 1984
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1986
    :cond_1
    return-void
.end method

.method private _CreateConfigurations()V
    .locals 4

    .prologue
    .line 2016
    const-string v1, "Effects"

    const-string v2, "[Effects] _CreateConfigurations"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2019
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2020
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_setting_storage_location_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2019
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2021
    .local v0, storageLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->setLocationPref(Ljava/lang/String;)V

    .line 2022
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_CreateConfigurations storageLocation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    .end local v0           #storageLocation:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 2026
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_GetPreferredCameraId(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    .line 2028
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetLocalId(Landroid/content/Context;I)V

    .line 2029
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->SetCameraId(I)V

    .line 2030
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 2031
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredStorageLocation(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->SetStorageLocationDir(Ljava/lang/String;)V

    .line 2033
    return-void
.end method

.method private _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 734
    const-string v0, "Effects"

    const-string v1, "[Effects] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    new-instance v0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    invoke-direct {p0, p0}, Lcom/pantech/app/vegacamera/Effects;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 741
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 742
    return-void
.end method

.method private _DestroyLayoutInstance()V
    .locals 2

    .prologue
    .line 753
    const-string v0, "Effects"

    const-string v1, "[Effects] _DestroyLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Effects;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 757
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 758
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Release()V

    .line 759
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->ReleaseLayoutControlObject()V

    .line 761
    :cond_1
    return-void
.end method

.method private _GetDesiredPreviewSize()V
    .locals 3

    .prologue
    .line 1237
    const-string v0, "Effects"

    const-string v1, "[Effects] _GetDesiredPreviewSize()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1252
    :goto_0
    return-void

    .line 1241
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_ReadVideoProfile()V

    .line 1243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 1245
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_1

    .line 1246
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    .line 1248
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewWidth:I

    .line 1249
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewHeight:I

    .line 1251
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] iPreviewWidth = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iPreviewHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewHeight:I

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
    .line 644
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 645
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 652
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    .line 649
    .local v0, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 650
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    .line 651
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetLastThumbnail()V

    goto :goto_0
.end method

.method private _GetPreferredCameraId(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 2005
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 2006
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2011
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method private _GotoQuickview()V
    .locals 5

    .prologue
    .line 1879
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1894
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1883
    const-string v1, "Effects"

    const-string v2, "[Effects]_GotoQuickview is skipped when IsGallerySecretMode"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1887
    :cond_2
    const-string v1, "Effects"

    const-string v2, "_GotoQuickview()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_goto_viewer"

    .line 1889
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_goto_viewer_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1888
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1891
    .local v0, mSaveAfterView:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1892
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->GotoQuickView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _InflateModuleLayout()V
    .locals 3

    .prologue
    .line 2792
    const-string v0, "Effects"

    const-string v1, "_InflateModuleLayout()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->effects:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 2794
    return-void
.end method

.method private _InitializeAfterDeviceOpen()V
    .locals 3

    .prologue
    .line 655
    const-string v0, "Effects"

    const-string v1, "[Effects] _InitializeAfterDeviceOpen"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-nez v0, :cond_0

    .line 657
    new-instance v0, Lcom/pantech/app/vegacamera/PreviewGestures;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/PreviewGestures;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetListener(Lcom/pantech/app/vegacamera/PreviewGestures$Listener;)V

    .line 660
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 662
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_LoadCameraPreferences()V

    .line 663
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Start()V

    .line 664
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->InitFocusParm(Landroid/hardware/Camera$Parameters;)V

    .line 665
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iDisplayOrientation:I

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetFocusPreview(Landroid/view/View;I)V

    .line 667
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_GetLastThumbNail()V

    .line 668
    return-void
.end method

.method private _InitializeCapabilities()V
    .locals 2

    .prologue
    .line 1993
    const-string v0, "Effects"

    const-string v1, "[Effects] _InitializeCapabilities"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1995
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 2002
    :goto_0
    return-void

    .line 1997
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bFocusAreaSupported:Z

    .line 1998
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bMeteringAreaSupported:Z

    .line 1999
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsAELockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bAeLockSupported:Z

    .line 2000
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsAWBLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bAwbLockSupported:Z

    goto :goto_0
.end method

.method private _InitializeEffect(Z)V
    .locals 10
    .parameter "forceReset"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 1485
    if-nez p1, :cond_0

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->mCurrentEffectDistortionAmt:I

    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectDistortionAmt:I

    if-eq v2, v3, :cond_5

    .line 1486
    :cond_0
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Effect initializing. Preview size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1487
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Effect initializing. mEffectDistortionAmt  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectDistortionAmt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "previewSurfaceTexture"

    aput-object v4, v3, v8

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    aput-object v4, v3, v7

    const-string v4, "previewWidth"

    aput-object v4, v3, v6

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    const/4 v4, 0x4

    .line 1490
    const-string v5, "previewHeight"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string v5, "orientation"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget v5, p0, Lcom/pantech/app/vegacamera/Effects;->mOrientationHint:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1489
    invoke-virtual {v2, v3}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 1491
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_InitializeEffect mGraphEnv.addReferences orientation:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects;->mOrientationHint:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v2

    if-eq v2, v9, :cond_1

    .line 1494
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v2

    if-ne v2, v6, :cond_2

    .line 1495
    :cond_1
    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->mCurrentEffect:I

    invoke-direct {p0, v2, v6}, Lcom/pantech/app/vegacamera/Effects;->sendMessage(II)V

    .line 1498
    :cond_2
    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffect:I

    packed-switch v2, :pswitch_data_0

    .line 1544
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown effect ID"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects;->mEffect:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1500
    :pswitch_0
    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectDistortionAmt:I

    packed-switch v2, :pswitch_data_1

    .line 1535
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_00:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    .line 1547
    :goto_0
    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffect:I

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mCurrentEffect:I

    .line 1549
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 1550
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/GraphEnvironment;->getRunner(II)Landroid/filterfw/core/GraphRunner;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 1551
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/GraphRunner;->setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V

    .line 1552
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "New runner: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Old runner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1555
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1556
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->GetFocusState()I

    move-result v2

    if-ne v2, v7, :cond_6

    .line 1557
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2, v8}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    .line 1569
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v2

    if-eq v2, v9, :cond_4

    .line 1570
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 1573
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 1575
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1579
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 1586
    :cond_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    const-string v3, "goofyrenderer"

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 1587
    .local v1, goofyFilter:Landroid/filterfw/core/Filter;
    const-string v3, "currentEffect"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectParameter:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1597
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetFaceDetectOrientation()V

    .line 1598
    return-void

    .line 1502
    .end local v1           #goofyFilter:Landroid/filterfw/core/Filter;
    :pswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_00:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1505
    :pswitch_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_01:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1508
    :pswitch_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_02:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1511
    :pswitch_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_03:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1514
    :pswitch_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_04:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1517
    :pswitch_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_05:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1520
    :pswitch_7
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_06:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1523
    :pswitch_8
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_07:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1526
    :pswitch_9
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_08:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1529
    :pswitch_a
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_09:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1532
    :pswitch_b
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$raw;->goofy_face_10:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    goto/16 :goto_0

    .line 1558
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 1560
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1564
    :goto_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2, v8}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusResult(Z)V

    .line 1565
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2, v7}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    goto/16 :goto_1

    .line 1561
    :catch_0
    move-exception v0

    .line 1562
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Effects] OperFocus cancelAutoFocus failed() , RuntimeException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1576
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1577
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to connect camera to effect input"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1498
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 1500
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private _InitializeEffectsPreview()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1408
    const-string v2, "Effects"

    .line 1409
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_InitializeEffectsPreview "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraDisplayOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mAppData.GetEffectsState()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1410
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1409
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1407
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects;->GetCameraId()I

    move-result v3

    aget-object v0, v2, v3

    .line 1414
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1415
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_ReleaseEffectsRecorder()V

    .line 1418
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/data/AppData;->SetEffectsState(I)V

    .line 1420
    new-instance v2, Landroid/media/MediaActionSound;

    invoke-direct {v2}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1421
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 1422
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 1423
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v2, v5}, Landroid/media/MediaActionSound;->load(I)V

    .line 1425
    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraDisplayOrientation:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraDisplayOrientation(I)V

    .line 1426
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/Effects;->_SetCamera(Landroid/hardware/Camera;)V

    .line 1427
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraFacing(I)V

    .line 1428
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v2, :cond_1

    .line 1429
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/Effects;->_SetProfile(Landroid/media/CamcorderProfile;)V

    .line 1430
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1435
    const/4 v1, 0x0

    .line 1436
    .local v1, rotation:I
    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 1437
    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    add-int/lit16 v2, v2, 0x10e

    rem-int/lit16 v1, v2, 0x168

    .line 1440
    :cond_2
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_SetOrientationHint(I)V

    .line 1451
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_3

    .line 1452
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getWidth()I

    move-result v3

    .line 1453
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v4, v4, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getHeight()I

    move-result v4

    .line 1452
    invoke-direct {p0, v2, v3, v4}, Lcom/pantech/app/vegacamera/Effects;->_SetPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V

    .line 1455
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadEffectParameter(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectParameter:Ljava/lang/Object;

    .line 1456
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->getFaceEffectsIndex()I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectDistortionAmt:I

    .line 1458
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectParameter:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 1459
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetEffect()V

    .line 1460
    :cond_4
    return-void
.end method

.method private _InitializeFilterFramework()V
    .locals 7

    .prologue
    .line 1463
    new-instance v3, Landroid/filterfw/GraphEnvironment;

    invoke-direct {v3}, Landroid/filterfw/GraphEnvironment;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 1464
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v3}, Landroid/filterfw/GraphEnvironment;->createGLEnvironment()V

    .line 1466
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1467
    .local v2, videoFrameWidth:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1468
    .local v1, videoFrameHeight:I
    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDisplayOrientation:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDisplayOrientation:I

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_1

    .line 1469
    :cond_0
    move v0, v2

    .line 1470
    .local v0, tmp:I
    move v2, v1

    .line 1471
    move v1, v0

    .line 1474
    .end local v0           #tmp:I
    :cond_1
    const-string v3, "Effects"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Effects framework initializing. Recording size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1475
    iget v5, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDisplayOrientation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1474
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "textureSourceCallback"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/pantech/app/vegacamera/Effects;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "recordingWidth"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    .line 1478
    const-string v6, "recordingHeight"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "recordingProfile"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "learningDoneListener"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/pantech/app/vegacamera/Effects;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    aput-object v6, v4, v5

    const/16 v5, 0xa

    .line 1479
    const-string v6, "recordingDoneListener"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/pantech/app/vegacamera/Effects;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v6, v4, v5

    .line 1477
    invoke-virtual {v3, v4}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 1480
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 1481
    const/4 v3, -0x1

    iput v3, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphId:I

    .line 1482
    return-void
.end method

.method private _InitializeMiscControls()V
    .locals 2

    .prologue
    .line 764
    const-string v0, "Effects"

    const-string v1, "[Effects] _InitializeMiscControls()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->frame:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 766
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Effects;->SetSingleTapUpListener(Landroid/view/View;)V

    goto :goto_0
.end method

.method private _IsCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1989
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

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

    .line 2081
    const-string v0, "Effects"

    const-string v1, "[Effects] _KeepIdleTimerOnAwhile()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2083
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2084
    return-void
.end method

.method private _LoadCameraPreferences()V
    .locals 3

    .prologue
    .line 2036
    const-string v1, "Effects"

    const-string v2, "[Effects] _LoadCameraPreferences"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2037
    new-instance v0, Lcom/pantech/app/vegacamera/CameraSettings;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;)V

    .line 2038
    .local v0, settings:Lcom/pantech/app/vegacamera/CameraSettings;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    sget v2, Lcom/pantech/app/vegacamera/R$xml;->camera_preferences:I

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreferenceGroup(I)Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetPreferenceGroup(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;)V

    .line 2039
    return-void
.end method

.method private _ReadVideoProfile()V
    .locals 8

    .prologue
    .line 1847
    const-string v5, "Effects"

    const-string v6, "[Effects] _ReadVideoProfile()"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    const/4 v2, 0x5

    .line 1851
    .local v2, quality:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.videoQuality"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1852
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.videoQuality"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1853
    .local v1, extraVideoQuality:I
    if-ltz v1, :cond_0

    const/4 v5, 0x7

    if-gt v1, v5, :cond_0

    .line 1854
    move v2, v1

    .line 1869
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1876
    return-void

    .line 1856
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v5}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2

    .line 1857
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$string;->mms_resolution:I

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1858
    .local v3, videoQuality:Ljava/lang/String;
    sget-object v5, Lcom/pantech/app/vegacamera/Effects;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-virtual {v5, v3}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1859
    goto :goto_0

    .line 1860
    .end local v3           #videoQuality:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v6, Lcom/pantech/app/vegacamera/R$string;->effects_video_size:I

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1861
    .local v4, videoSize:Ljava/lang/String;
    sget-object v5, Lcom/pantech/app/vegacamera/Effects;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-virtual {v5, v4}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1870
    .end local v4           #videoSize:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1872
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method private _RecordingStop_LayoutInflate()V
    .locals 2

    .prologue
    .line 2774
    const-string v0, "Effects"

    const-string v1, "absRecording() _RecordingStop_LayoutInflate"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartCameraMode()V

    .line 2776
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeMiscControls()V

    .line 2777
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Effects;->SetShotMode(Z)V

    .line 2778
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_AddScreenOnFlag()V

    .line 2779
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_KeepIdleTimerOnAwhile()V

    .line 2780
    return-void
.end method

.method private declared-synchronized _ReleaseEffectsRecorder()V
    .locals 3

    .prologue
    .line 1956
    monitor-enter p0

    :try_start_0
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_ReleaseEffectsRecorder ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1965
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetEffectsState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1968
    monitor-exit p0

    return-void

    .line 1962
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects;->_StopEffectsPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1956
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1958
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private _ReleaseHandler()V
    .locals 2

    .prologue
    .line 2042
    const-string v0, "Effects"

    const-string v1, "[Effects] ReleaseHandler()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2044
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2045
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2046
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2047
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2048
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2049
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2050
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2051
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2052
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2053
    return-void
.end method

.method private _ResetIdleTimer()V
    .locals 2

    .prologue
    .line 2076
    const-string v0, "Effects"

    const-string v1, "[Effects] _ResetIdleTimer()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2078
    return-void
.end method

.method private _SetAutoExposureLockIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 875
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] _SetAutoExposureLockIfSupported(), bAeLockSupported == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bAeLockSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_0
    return-void
.end method

.method private _SetAutoWhiteBalanceLockIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 882
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] _SetAutoExposureLockIfSupported(), bAwbLockSupported == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bAwbLockSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void
.end method

.method private _SetCameraFacing(I)V
    .locals 2
    .parameter "facing"

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1322
    return-void

    .line 1316
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraFacing called on alrady released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1314
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private _SetCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1211
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1216
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Effects] set parameters exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private _SetCameraParameters(J)V
    .locals 7
    .parameter "updateSet"

    .prologue
    const-wide/16 v5, 0x0

    .line 1120
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Effects] _SetCameraParameters() :: updateSet = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return-void

    .line 1127
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1128
    .local v1, mParam:Landroid/hardware/Camera$Parameters;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 1130
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_INITIALIZE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_2

    .line 1131
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersInitialize(Landroid/hardware/Camera$Parameters;)V

    .line 1134
    :cond_2
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PREFERENCE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3

    .line 1135
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersPreference()V

    .line 1138
    :cond_3
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_VIDEOSIZE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_4

    .line 1139
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraparametersVideoSize(Landroid/hardware/Camera$Parameters;)V

    .line 1142
    :cond_4
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_JPEG_QUALITY:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_5

    .line 1143
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersJpegQuality(Landroid/hardware/Camera$Parameters;)V

    .line 1146
    :cond_5
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_6

    .line 1147
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersZoom(Landroid/hardware/Camera$Parameters;)V

    .line 1150
    :cond_6
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BRIGHTNESS:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_7

    .line 1151
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V

    .line 1154
    :cond_7
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_WHITE_BALANCE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_8

    .line 1155
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V

    .line 1158
    :cond_8
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_WDR:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_9

    .line 1159
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersWDR(Landroid/hardware/Camera$Parameters;)V

    .line 1162
    :cond_9
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_HDR:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_a

    .line 1163
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V

    .line 1166
    :cond_a
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FLASH:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    .line 1167
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersFLASHoff()V

    .line 1171
    :cond_b
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ANTI_BANDING:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_c

    .line 1172
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersAntiBanding(Landroid/hardware/Camera$Parameters;)V

    .line 1175
    :cond_c
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_OJT:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_d

    .line 1176
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersOJT(Landroid/hardware/Camera$Parameters;)V

    .line 1179
    :cond_d
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FOCUS_MODE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_e

    .line 1180
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 1183
    :cond_e
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_AUTO_EXPOSURE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_f

    .line 1184
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersAutoExposure(Landroid/hardware/Camera$Parameters;)V

    .line 1187
    :cond_f
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ANTI_SHAKE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_10

    .line 1188
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_UpdateCameraParametersAntiShake(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1195
    :cond_10
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Effects] set parameters :: mParameters.toString() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1198
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1199
    :catch_0
    move-exception v0

    .line 1200
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->IsEngMode()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1201
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[Effects] device set parameters exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1190
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #mParam:Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v0

    .line 1191
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Effects] set parameters exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1203
    .restart local v1       #mParam:Landroid/hardware/Camera$Parameters;
    :cond_11
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Effects] set parameters exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[Effects] device set parameters exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private _SetCameraParametersWhenIdle(J)V
    .locals 8
    .parameter "additionalUpdateSet"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 781
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] _SetCameraParametersWhenIdle() :: additionalUpdateSet = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Effects;->lUpdateSet:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/Effects;->lUpdateSet:J

    .line 785
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] lUpdateSet = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/Effects;->lUpdateSet:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 790
    iput-wide v6, p0, Lcom/pantech/app/vegacamera/Effects;->lUpdateSet:J

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_IsCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 793
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bRestartForcePreview:Z

    if-eqz v0, :cond_2

    .line 794
    const-string v0, "Effects"

    const-string v1, "[Effects] ZSL enabled, restarting preview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartPreview()V

    .line 796
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Effects;->bRestartForcePreview:Z

    .line 799
    :cond_2
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Effects;->lUpdateSet:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V

    .line 800
    iput-wide v6, p0, Lcom/pantech/app/vegacamera/Effects;->lUpdateSet:J

    .line 806
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bPreviewSizeChanged:Z

    if-eqz v0, :cond_0

    .line 807
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Effects;->bPreviewSizeChanged:Z

    .line 808
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetPreviewFrameLayoutAspectRatio()V

    .line 809
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartPreview()V

    goto :goto_0

    .line 802
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 803
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private _SetDisplayOrientation()V
    .locals 2

    .prologue
    .line 1225
    const-string v0, "Effects"

    const-string v1, "[Effects] _SetDisplayOrientation()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iDisplayRotation:I

    .line 1227
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iDisplayRotation:I

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iDisplayOrientation:I

    .line 1228
    const/4 v0, 0x0

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraDisplayOrientation:I

    .line 1230
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetFocusDisplayOrientation(I)V

    .line 1233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->requestLayoutContentPane()V

    .line 1234
    return-void
.end method

.method private _SetEffect()V
    .locals 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1326
    const-string v0, "Effects"

    const-string v1, "EffectException setPreviewSurfaceTexture cannot be called while recording!"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1330
    const-string v0, "Effects"

    const-string v1, "EffectException setPreviewSurfaceTexture called on an already released recorder!"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1337
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeEffect(Z)V

    goto :goto_0
.end method

.method private _SetFaceDetectOrientation()V
    .locals 6

    .prologue
    .line 1282
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v3, :cond_0

    .line 1283
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "rotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 1284
    .local v2, rotateFilter:Landroid/filterfw/core/Filter;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    const-string v4, "metarotate"

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 1285
    .local v0, metaRotateFilter:Landroid/filterfw/core/Filter;
    const-string v3, "rotation"

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects;->mOrientationHint:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1286
    const-string v3, "Effects"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_SetFaceDetectOrientation() rotateFilter "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/Effects;->mOrientationHint:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->mOrientationHint:I

    rsub-int v3, v3, 0x168

    rem-int/lit16 v1, v3, 0x168

    .line 1288
    .local v1, reverseDegrees:I
    const-string v3, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1289
    const-string v3, "Effects"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_SetFaceDetectOrientation() metaRotateFilter "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    .end local v0           #metaRotateFilter:Landroid/filterfw/core/Filter;
    .end local v1           #reverseDegrees:I
    .end local v2           #rotateFilter:Landroid/filterfw/core/Filter;
    :cond_0
    return-void
.end method

.method private _SetFocusAreasIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 890
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] _SetFocusAreasIfSupported(), bFocusAreaSupported ==  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bFocusAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 893
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusArea()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

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
    .line 905
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] _SetMeteringAreasIfSupported(), bMeteringAreaSupported ==  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bMeteringAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method private _SetOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1302
    const-string v0, "Effects"

    const-string v1, "setOrientationHint() state released."

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    :goto_0
    return-void

    .line 1308
    :cond_0
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting orientation hint to: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iput p1, p0, Lcom/pantech/app/vegacamera/Effects;->mOrientationHint:I

    .line 1310
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetFaceDetectOrientation()V

    goto :goto_0
.end method

.method private _SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 730
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 731
    return-void
.end method

.method private _SetPreviewFrameLayoutAspectRatio()V
    .locals 5

    .prologue
    .line 721
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] _SetPreviewFrameLayoutAspectRatio "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    .line 727
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private _SetPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 4
    .parameter "surfaceTexture"
    .parameter "mSurfaceWidth"
    .parameter "mSurfaceHeight"

    .prologue
    const/4 v3, 0x1

    .line 1342
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetPreviewSurfaceTexture("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1344
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1346
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setPreviewSurfaceTexture called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1351
    :cond_1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1352
    iput p2, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewWidth:I

    .line 1353
    iput p3, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewHeight:I

    .line 1355
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1356
    const-string v0, "Effects"

    const-string v1, "setPreviewSurfaceTexture startEffectsPreview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartEffectsPreview()V

    .line 1363
    :cond_2
    :goto_0
    return-void

    .line 1358
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1360
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1361
    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/Effects;->_InitializeEffect(Z)V

    goto :goto_0
.end method

.method private _SetZoomControl(IZ)V
    .locals 5
    .parameter "state"
    .parameter "fVoice"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 3456
    if-eqz p2, :cond_3

    const/4 v0, 0x6

    .line 3458
    .local v0, multiple:I
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 3459
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3460
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFocusRelease()V

    .line 3461
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CancelAutoFocus()V

    .line 3464
    :cond_0
    if-nez p1, :cond_4

    .line 3465
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    .line 3466
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 3467
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    .line 3468
    if-eqz p2, :cond_1

    .line 3469
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->zoom_in_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 3484
    :cond_1
    :goto_1
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V

    .line 3486
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3487
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetZoomIndex(I)V

    .line 3489
    :cond_2
    return-void

    .end local v0           #multiple:I
    :cond_3
    move v0, v1

    .line 3456
    goto :goto_0

    .line 3473
    .restart local v0       #multiple:I
    :cond_4
    if-ne p1, v1, :cond_1

    .line 3474
    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    .line 3475
    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    if-gt v2, v1, :cond_1

    .line 3476
    iput v4, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    .line 3477
    if-eqz p2, :cond_1

    .line 3478
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->zoom_out_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private _SetupIntentCaptureParams()V
    .locals 2

    .prologue
    .line 2087
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2088
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2089
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mSaveUri:Landroid/net/Uri;

    .line 2090
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->sCropValue:Ljava/lang/String;

    .line 2092
    :cond_0
    return-void
.end method

.method private _ShowErrorAndFinish(II)V
    .locals 4
    .parameter "stateId"
    .parameter "dispTime"

    .prologue
    .line 2151
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] ShowErrorAndFinish() :: stateId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2152
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 2153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2156
    :cond_0
    return-void
.end method

.method private _StartCameraMode()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2099
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects;->GetShotMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    .line 2103
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-nez v1, :cond_3

    .line 2105
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2106
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->OpenCamera(Landroid/content/Context;I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2122
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    if-eq v1, v5, :cond_2

    .line 2123
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    if-eq v1, v6, :cond_2

    .line 2124
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2125
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 2130
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeCapabilities()V

    .line 2132
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 2134
    const-wide/16 v1, -0x1

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V

    .line 2135
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2137
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeMiscControls()V

    .line 2139
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartPreview()V

    .line 2141
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->InitFocusParm(Landroid/hardware/Camera$Parameters;)V

    .line 2143
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2144
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2146
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Effects;->SetShotMode(Z)V

    .line 2148
    :cond_3
    :goto_1
    return-void

    .line 2108
    :catch_0
    move-exception v0

    .line 2109
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    const-string v1, "Effects"

    const-string v2, "[Effects] CameraHardwareException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2112
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 2113
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    const-string v1, "Effects"

    const-string v2, "[Effects] CameraDisabledException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2114
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2116
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    :catch_2
    move-exception v0

    .line 2117
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    const-string v1, "Effects"

    const-string v2, "[Effects] CameraAppCrashException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2127
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_0
.end method

.method private _StartPreview()V
    .locals 3

    .prologue
    .line 1366
    const-string v1, "Effects"

    const-string v2, "[Effects] _StartPreview"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StopPreview()V

    .line 1372
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1373
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1375
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_GetDesiredPreviewSize()V

    .line 1376
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetDisplayOrientation()V

    .line 1380
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v1, :cond_4

    .line 1381
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v0, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    .line 1382
    .local v0, screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-nez v1, :cond_2

    .line 1383
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraDisplayOrientation:I

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_3

    .line 1384
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    .line 1389
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->NotifyScreenNailChanged()V

    .line 1390
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->acquireSurfaceTexture()V

    .line 1391
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1393
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1394
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1400
    .end local v0           #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeEffectsPreview()V

    .line 1401
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartEffectsPreview()V

    .line 1403
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1404
    return-void

    .line 1386
    .restart local v0       #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    :cond_3
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewHeight:I

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewWidth:I

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    goto :goto_0

    .line 1396
    .end local v0           #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1397
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_1
.end method

.method private _StopPreview()V
    .locals 3

    .prologue
    .line 1936
    const-string v1, "Effects"

    const-string v2, "_StopPreview()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1937
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    .line 1941
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1943
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopPreview()V

    .line 1944
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1945
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_ReleaseEffectsRecorder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1952
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1953
    return-void

    .line 1947
    :catch_0
    move-exception v0

    .line 1948
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Effects"

    const-string v2, "[Effects] camera device stop preview exception"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersAntiBanding(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1029
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_anti_banding"

    .line 1030
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_anti_banding_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1029
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    .local v0, mAntiBanding:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedAntiBanding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1033
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Effects] antibanding mAntiBanding = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    const-string v1, "antibanding-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1035
    const-string v1, "antibanding"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    const-string v1, "Effects"

    const-string v2, "[Effects] antibanding is not supported"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersAntiShake(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_anti_shake"

    .line 1108
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_anti_shake_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1107
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1110
    .local v0, mAntiShake:Ljava/lang/String;
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Effects] mAntiShake = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    const-string v1, "pantech-antishake-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    const-string v1, "pantech-antishake"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    :goto_0
    return-void

    .line 1115
    :cond_0
    const-string v1, "Effects"

    const-string v2, "[Effects] is not supported antishake"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersAutoExposure(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 1104
    return-void
.end method

.method private _UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 852
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_ev"

    .line 853
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_ev_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 852
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, mEV:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "luma-adaptation"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method private _UpdateCameraParametersFLASHoff()V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1005
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1006
    const-string v0, "Effects"

    const-string v1, "before startPreview set flash off"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    return-void
.end method

.method private _UpdateCameraParametersFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 1068
    const-string v2, "Effects"

    const-string v3, "[Effects] UpdateCameraParametersFocusMode"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    const/4 v1, 0x0

    .line 1072
    .local v1, mode:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->GetFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 1073
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    :goto_0
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_updateAutoFocusMoveCallback(Ljava/lang/String;)V

    .line 1083
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_focus_mode_status"

    .line 1076
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_focus_mode_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1075
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1077
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Effects] param.UpdateCameraParametersFocusMode + mode =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 973
    const-string v0, "pantech-hdr-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    const-string v0, "Effects"

    const-string v1, "[Effects] is not supported hdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 978
    :goto_0
    return-void

    .line 976
    :cond_0
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersInitialize(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 814
    const-string v0, "none"

    .line 815
    .local v0, value:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 816
    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    return-void
.end method

.method private _UpdateCameraParametersJpegQuality(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 841
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 842
    .local v0, jpegQuality:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 843
    return-void
.end method

.method private _UpdateCameraParametersOJT(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_focus_mode"

    .line 1058
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_focus_mode_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1057
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1060
    .local v0, mObjectFocusMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "Object Tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    const-string v1, "pantech-ojt"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :goto_0
    return-void

    .line 1063
    :cond_0
    const-string v1, "pantech-ojt"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersPreference()V
    .locals 0

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetAutoExposureLockIfSupported()V

    .line 914
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetAutoWhiteBalanceLockIfSupported()V

    .line 915
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetFocusAreasIfSupported()V

    .line 916
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetMeteringAreasIfSupported()V

    .line 917
    return-void
.end method

.method private _UpdateCameraParametersWDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 961
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pantech-wdr-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 963
    const-string v0, "pantech-wdr-mode"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :goto_0
    return-void

    .line 965
    :cond_0
    const-string v0, "Effects"

    const-string v1, "[Effects] app data wdr state is null"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 968
    :cond_1
    const-string v0, "Effects"

    const-string v1, "[Effects] is not supported wdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 846
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 849
    :cond_0
    return-void
.end method

.method private _UpdateCameraparametersVideoSize(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 820
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_setting_record_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, newVideoSize:Ljava/lang/String;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "video-size"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, orgVideoSize:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 824
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->InitialVideoSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 830
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/Effects;->bPreviewSizeChanged:Z

    .line 832
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_GetDesiredPreviewSize()V

    .line 834
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewWidth:I

    iget v5, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 835
    const-string v3, "Effects"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Effecs] _UpdateCameraparametersVideoSize setPreviewSize "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/app/vegacamera/Effects;->iPreviewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "video-size"

    invoke-virtual {v3, v4, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    const-string v3, "Effects"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Effecs] _UpdateCameraparametersVideoSize set video-size "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    return-void

    .line 826
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 827
    .local v2, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/pantech/app/vegacamera/CameraSettings;->SetVideoSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method private _WaitCameraStartUpThread()V
    .locals 3

    .prologue
    .line 446
    const-string v1, "Effects"

    const-string v2, "[Effects] _WaitCameraStartUpThread()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->Cancel()V

    .line 450
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->join()V

    .line 451
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    .line 452
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    :cond_0
    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private _updateAutoFocusMoveCallback(Ljava/lang/String;)V
    .locals 2
    .parameter "mode"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1087
    const-string v0, "continuous-picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/vegacamera/Effects$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    .line 1092
    :goto_0
    return-void

    .line 1090
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/Effects;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3012
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Effects;->raiseError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/GraphEnvironment;
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/Effects;Landroid/filterfw/core/GraphRunner;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-void
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/Effects;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3002
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Effects;->sendMessage(II)V

    return-void
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/Effects;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3117
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects;->imageJpegData:[B

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/Effects;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3118
    iput p1, p0, Lcom/pantech/app/vegacamera/Effects;->imageWidth:I

    return-void
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/Effects;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3119
    iput p1, p0, Lcom/pantech/app/vegacamera/Effects;->imageHeight:I

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/Effects;)I
    .locals 1
    .parameter

    .prologue
    .line 131
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    return v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$ImageNamer;
    .locals 1
    .parameter

    .prologue
    .line 3115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$ImageSaver;
    .locals 1
    .parameter

    .prologue
    .line 3116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/Effects;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/Effects;)I
    .locals 1
    .parameter

    .prologue
    .line 3118
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->imageWidth:I

    return v0
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/Effects;)I
    .locals 1
    .parameter

    .prologue
    .line 3119
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->imageHeight:I

    return v0
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/Effects;)[B
    .locals 1
    .parameter

    .prologue
    .line 3117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->imageJpegData:[B

    return-object v0
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/Effects;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 780
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParametersWhenIdle(J)V

    return-void
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/Effects;)I
    .locals 1
    .parameter

    .prologue
    .line 129
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iDisplayRotation:I

    return v0
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1224
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetDisplayOrientation()V

    return-void
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/Effects;)J
    .locals 2
    .parameter

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Effects;->lOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 720
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetPreviewFrameLayoutAspectRatio()V

    return-void
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeAfterDeviceOpen()V

    return-void
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 97
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/Effects;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$31(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_CameaAfterPreviewDone()V

    return-void
.end method

.method static synthetic access$32(Lcom/pantech/app/vegacamera/Effects;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Effects;->bOpenCameraFail:Z

    return-void
.end method

.method static synthetic access$33(Lcom/pantech/app/vegacamera/Effects;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2150
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Effects;->_ShowErrorAndFinish(II)V

    return-void
.end method

.method static synthetic access$34(Lcom/pantech/app/vegacamera/Effects;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Effects;->bCameraDisabled:Z

    return-void
.end method

.method static synthetic access$35(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 2094
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartCameraMode()V

    return-void
.end method

.method static synthetic access$36(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1878
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_GotoQuickview()V

    return-void
.end method

.method static synthetic access$37(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1
    .parameter

    .prologue
    .line 744
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$38(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_CameraSetForSnapshotFlip()V

    return-void
.end method

.method static synthetic access$39(Lcom/pantech/app/vegacamera/Effects;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 132
    iput p1, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/Effects;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$40(Lcom/pantech/app/vegacamera/Effects;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Effects;->iseffectPreviewConditionBlocked:Z

    return-void
.end method

.method static synthetic access$41(Lcom/pantech/app/vegacamera/Effects;)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    return v0
.end method

.method static synthetic access$42(Lcom/pantech/app/vegacamera/Effects;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$43(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1992
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeCapabilities()V

    return-void
.end method

.method static synthetic access$44(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1365
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartPreview()V

    return-void
.end method

.method static synthetic access$45(Lcom/pantech/app/vegacamera/Effects;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 3113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mCaptureHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$46(Lcom/pantech/app/vegacamera/Effects;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Effects;->bSkipFlingAfterRecord:Z

    return-void
.end method

.method static synthetic access$47(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1955
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_ReleaseEffectsRecorder()V

    return-void
.end method

.method static synthetic access$48(Lcom/pantech/app/vegacamera/Effects;)Z
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->iseffectPreviewConditionBlocked:Z

    return v0
.end method

.method static synthetic access$49(Lcom/pantech/app/vegacamera/Effects;)Landroid/media/MediaActionSound;
    .locals 1
    .parameter

    .prologue
    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/Effects;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$50(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 2767
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_RecordingStop_LayoutInflate()V

    return-void
.end method

.method static synthetic access$51(Lcom/pantech/app/vegacamera/Effects;)Z
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bLocalVoice:Z

    return v0
.end method

.method static synthetic access$52(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 2791
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InflateModuleLayout()V

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Effects$OneShotPreviewCallback;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/Effects;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1119
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 1971
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_CloseCamera()V

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/Effects;)Landroid/filterfw/core/GraphRunner;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    return-object v0
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 3013
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/vegacamera/Effects$8;

    invoke-direct {v1, p0, p1}, Lcom/pantech/app/vegacamera/Effects$8;-><init>(Lcom/pantech/app/vegacamera/Effects;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3023
    return-void
.end method

.method private sendMessage(II)V
    .locals 2
    .parameter "effect"
    .parameter "msg"

    .prologue
    .line 3004
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/vegacamera/Effects$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/pantech/app/vegacamera/Effects$7;-><init>(Lcom/pantech/app/vegacamera/Effects;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3010
    return-void
.end method


# virtual methods
.method public CameraErrorCbNotify(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2899
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/Effects;->_ShowErrorAndFinish(II)V

    .line 2900
    return-void
.end method

.method public DispatchTouchE(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v0, 0x1

    .line 2221
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 2238
    :cond_0
    :goto_0
    return v0

    .line 2225
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerDepthAct()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2228
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/PreviewGestures;->DispatchTouchEv(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2233
    :cond_2
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Effects;->bSkipFlingAfterRecord:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2234
    const-string v1, "Effects"

    const-string v2, "[Effects] skip SuperDispatchTouchEvent:OnFling after Recording before OnFullScreenChanged"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2238
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/Camera;->SuperDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public DoAttach([B)V
    .locals 17
    .parameter "jpegImageData"

    .prologue
    .line 2523
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v13, v13, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v13, :cond_1

    .line 2623
    :cond_0
    :goto_0
    return-void

    .line 2527
    :cond_1
    const-string v13, "Effects"

    const-string v14, "[Effects] doAttach"

    invoke-static {v13, v14}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    const-string v9, "crop-temp"

    .line 2531
    .local v9, sTempCropFilename:Ljava/lang/String;
    move-object/from16 v3, p1

    .line 2533
    .local v3, data:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->sCropValue:Ljava/lang/String;

    if-nez v13, :cond_4

    .line 2538
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_3

    .line 2539
    const/4 v7, 0x0

    .line 2541
    .local v7, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/Effects;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 2542
    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 2543
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 2545
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(I)V

    .line 2546
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2552
    if-eqz v7, :cond_0

    .line 2553
    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_c

    goto :goto_0

    .line 2555
    :catch_0
    move-exception v4

    .line 2556
    .local v4, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 2547
    .end local v4           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 2548
    .local v4, e:Ljava/io/IOException;
    :try_start_2
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2550
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 2552
    if-eqz v7, :cond_2

    .line 2553
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b

    .line 2560
    :cond_2
    :goto_1
    throw v13

    .line 2555
    :catch_2
    move-exception v4

    .line 2556
    .local v4, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 2562
    .end local v4           #e:Ljava/lang/Exception;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    :cond_3
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v6

    .line 2563
    .local v6, orientation:I
    const v13, 0xc800

    invoke-static {v3, v13}, Lcom/pantech/app/vegacamera/util/Util;->MakeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2564
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v6}, Lcom/pantech/app/vegacamera/util/Util;->BmRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2565
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    const-string v16, "inline-data"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "data"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(ILandroid/content/Intent;)V

    .line 2566
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 2570
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #orientation:I
    :cond_4
    const/4 v12, 0x0

    .line 2571
    .local v12, tempUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 2573
    .local v11, tempStream:Ljava/io/FileOutputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v14, "crop-temp"

    invoke-virtual {v13, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 2574
    .local v8, path:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 2575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v14, "crop-temp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/pantech/app/vegacamera/ActivityBase;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 2576
    invoke-virtual {v11, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2577
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 2578
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v12

    .line 2591
    if-eqz v11, :cond_5

    .line 2592
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9

    .line 2606
    :cond_5
    :goto_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2607
    .local v5, newExtras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->sCropValue:Ljava/lang/String;

    const-string v14, "circle"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2608
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2610
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_8

    .line 2611
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/Effects;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2616
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2618
    .local v2, cropIntent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2619
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2621
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v2, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2579
    .end local v2           #cropIntent:Landroid/content/Intent;
    .end local v5           #newExtras:Landroid/os/Bundle;
    .end local v8           #path:Ljava/io/File;
    :catch_3
    move-exception v4

    .line 2580
    .local v4, e:Ljava/io/FileNotFoundException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(I)V

    .line 2581
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    .line 2583
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2589
    .end local v4           #e:Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v13

    .line 2591
    if-eqz v11, :cond_7

    .line 2592
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    .line 2604
    :cond_7
    :goto_4
    throw v13

    .line 2584
    :catch_4
    move-exception v4

    .line 2585
    .local v4, e:Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(I)V

    .line 2586
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    .line 2588
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2594
    .end local v4           #e:Ljava/io/IOException;
    :catch_5
    move-exception v4

    .line 2595
    .local v4, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 2596
    .end local v4           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v10

    .line 2598
    .local v10, t:Ljava/lang/Throwable;
    :try_start_9
    new-instance v14, Ljava/lang/Throwable;

    invoke-direct {v14}, Ljava/lang/Throwable;-><init>()V

    throw v14
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    .line 2599
    :catch_7
    move-exception v4

    .line 2601
    .local v4, e:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 2594
    .end local v4           #e:Ljava/lang/Throwable;
    .end local v10           #t:Ljava/lang/Throwable;
    .restart local v8       #path:Ljava/io/File;
    :catch_8
    move-exception v4

    .line 2595
    .local v4, e:Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 2596
    .end local v4           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v10

    .line 2598
    .restart local v10       #t:Ljava/lang/Throwable;
    :try_start_a
    new-instance v13, Ljava/lang/Throwable;

    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    throw v13
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 2599
    :catch_a
    move-exception v4

    .line 2601
    .local v4, e:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 2613
    .end local v4           #e:Ljava/lang/Throwable;
    .end local v10           #t:Ljava/lang/Throwable;
    .restart local v5       #newExtras:Landroid/os/Bundle;
    :cond_8
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    .line 2557
    .end local v5           #newExtras:Landroid/os/Bundle;
    .end local v8           #path:Ljava/io/File;
    .end local v11           #tempStream:Ljava/io/FileOutputStream;
    .end local v12           #tempUri:Landroid/net/Uri;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_b
    move-exception v14

    goto/16 :goto_1

    :catch_c
    move-exception v13

    goto/16 :goto_0
.end method

.method public EffectRecordingThreadComplete()V
    .locals 2

    .prologue
    .line 2935
    const-string v0, "Effects"

    const-string v1, "[Effects] EffectRecordingThreadComplete()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    return-void
.end method

.method public GetCameraId()I
    .locals 3

    .prologue
    .line 2947
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] mCamreaId == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    return v0
.end method

.method public GetOrientation()I
    .locals 1

    .prologue
    .line 2952
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientation:I

    return v0
.end method

.method public GetShotMode()Z
    .locals 1

    .prologue
    .line 2956
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bShotMode:Z

    return v0
.end method

.method public Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 5
    .parameter "activity"
    .parameter "parent"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 462
    const-string v0, "Effects"

    const-string v1, "[Effects] Init()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 464
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iput-object p2, p0, Lcom/pantech/app/vegacamera/Effects;->mRootView:Landroid/view/View;

    .line 465
    iput-object p3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 467
    new-instance v0, Lcom/pantech/app/vegacamera/util/ElapsedTime;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/util/ElapsedTime;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

    .line 468
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/ElapsedTime;->start()V

    .line 470
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iput-boolean v3, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 472
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_CreateConfigurations()V

    .line 474
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->effects:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 476
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_CreateLayoutInstance()V

    .line 478
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mContentResolver:Landroid/content/ContentResolver;

    .line 480
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->EnterLightsOutMode(Landroid/view/Window;)V

    .line 481
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->InitializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 483
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 484
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 487
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetupIntentCaptureParams()V

    .line 492
    :goto_0
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;-><init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    .line 493
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->start()V

    .line 494
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 496
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeMiscControls()V

    .line 497
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetEffectsState(I)V

    .line 498
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_0
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2833
    sparse-switch p1, :sswitch_data_0

    .line 2895
    :cond_0
    :goto_0
    return-void

    .line 2835
    :sswitch_0
    if-eqz p3, :cond_0

    .line 2836
    const/4 v3, 0x0

    .line 2837
    .local v3, extras:Landroid/os/Bundle;
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v10, 0x0

    iput-boolean v10, v9, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 2838
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2840
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    .line 2843
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto :goto_0

    .line 2844
    :cond_1
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v9}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 2846
    const/4 v5, 0x0

    .line 2847
    .local v5, filename:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2848
    :try_start_0
    const-string v9, "bestfaceFilenameforMMS"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 2851
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2852
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v9

    long-to-int v6, v9

    .line 2854
    .local v6, len:I
    new-array v1, v6, [B

    .line 2856
    .local v1, buf:[B
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mFIS:Ljava/io/FileInputStream;

    .line 2857
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mFIS:Ljava/io/FileInputStream;

    invoke-virtual {v9, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 2859
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->DoAttach([B)V

    .line 2861
    if-eqz v5, :cond_3

    .line 2862
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2863
    .local v8, path:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2872
    .end local v8           #path:Ljava/io/File;
    :cond_3
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto :goto_0

    .line 2865
    .end local v1           #buf:[B
    .end local v4           #file:Ljava/io/File;
    .end local v6           #len:I
    :catch_0
    move-exception v2

    .line 2866
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2867
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    throw v9

    .line 2868
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 2869
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2870
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    throw v9

    .line 2875
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #filename:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mFIS:Ljava/io/FileInputStream;

    if-eqz v9, :cond_0

    .line 2876
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mFIS:Ljava/io/FileInputStream;

    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 2878
    :catch_2
    move-exception v2

    .line 2879
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 2880
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9}, Ljava/lang/RuntimeException;-><init>()V

    throw v9

    .line 2888
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #extras:Landroid/os/Bundle;
    :sswitch_1
    if-eqz p3, :cond_0

    .line 2889
    const-string v9, "pref_intent_value"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2890
    .local v7, newPath:Ljava/lang/String;
    iget-object v9, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v9

    invoke-static {v9, v7}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredStorageLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2833
    nop

    :sswitch_data_0
    .sparse-switch
        0x42 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch
.end method

.method public OnBackPressed()Z
    .locals 2

    .prologue
    .line 2160
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects;->GetShotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2161
    const-string v0, "Effects"

    const-string v1, "[Effects] OnBackPressed() :: video record mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    if-nez v0, :cond_0

    .line 2163
    const/4 v0, 0x0

    .line 2176
    :goto_0
    return v0

    .line 2165
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->OnBackPressed()Z

    move-result v0

    goto :goto_0

    .line 2167
    :cond_1
    const-string v0, "Effects"

    const-string v1, "[Effects] OnBackPressed() :: camera mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2168
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_IsCameraIdle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 2171
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnBackPressed()Z

    move-result v0

    goto :goto_0

    .line 2173
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2176
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public OnCameraSwitch()V
    .locals 2

    .prologue
    .line 541
    const-string v0, "Effects"

    const-string v1, "[Effects] OnCameraSwitch()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method public OnCaptureAnimationEnded()V
    .locals 0

    .prologue
    .line 2820
    return-void
.end method

.method public OnDestroy()V
    .locals 2

    .prologue
    .line 639
    const-string v0, "Effects"

    const-string v1, "[Effects] OnDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_DestroyLayoutInstance()V

    .line 641
    return-void
.end method

.method public OnFullScreenChanged(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 2282
    const-string v0, "Effects"

    const-string v1, "[Effects] OnFullScreenChanged()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bSkipFlingAfterRecord:Z

    .line 2284
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v0, :cond_0

    .line 2285
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 2287
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2288
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFullScreenChanged(Z)V

    .line 2291
    :cond_1
    return-void
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 2183
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2184
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2197
    :cond_0
    :goto_0
    return v0

    .line 2187
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2188
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2197
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2192
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

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

    .line 2202
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2203
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2216
    :cond_0
    :goto_0
    return v0

    .line 2206
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2207
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->_OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2216
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2211
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

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
    .line 2269
    const-string v0, "Effects"

    const-string v1, "[Effects] OnLongPress()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2271
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2272
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/PreviewGestures;->IsScaling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/PreviewGestures;->IsMulti()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2278
    :cond_1
    :goto_0
    return-void

    .line 2275
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2276
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnLongPress(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public OnModeDestroy()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public OnOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 2503
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientation:I

    invoke-static {p1, v1}, Lcom/pantech/app/vegacamera/util/Util;->RoundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientation:I

    .line 2504
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientation:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 2505
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 2506
    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    .line 2507
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Effects] OnOrientationChanged iOrientationCompensation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetDisplayOrientation()V

    .line 2509
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_CameraSetForSnapshotFlip()V

    .line 2510
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientation:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Effects;->_SetOrientationHint(I)V

    .line 2513
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2514
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnOrientationChanged(I)V

    .line 2517
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    if-eqz v1, :cond_2

    .line 2518
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget v2, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->SetOrientationChanged(I)V

    .line 2520
    :cond_2
    return-void
.end method

.method public OnPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 546
    const-string v1, "Effects"

    const-string v2, "[Effects] OnPause()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_WaitCameraStartUpThread()V

    .line 550
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 554
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects;->GetShotMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 567
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    if-eqz v1, :cond_1

    .line 568
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->OnPause()V

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_2

    .line 571
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 574
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 575
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StopPreview()V

    .line 576
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_CloseCamera()V

    .line 579
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_4

    .line 580
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->releaseSurfaceTexture()V

    .line 581
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 582
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 585
    :cond_4
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Effects;->SetSingleTapUpListener(Landroid/view/View;)V

    .line 587
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v1, :cond_5

    .line 588
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/PreviewGestures;->Release()V

    .line 589
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 592
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 593
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICapture;->onRelease()V

    .line 594
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 597
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    if-eqz v1, :cond_7

    .line 598
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;->finish()V

    .line 599
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    .line 601
    :cond_7
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    if-eqz v1, :cond_8

    .line 602
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;->finish()V

    .line 603
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    .line 608
    :cond_8
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_setShutterButton_Enable()V

    .line 609
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Stop()V

    .line 611
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_ResetIdleTimer()V

    .line 612
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_ReleaseHandler()V

    .line 614
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_ClearScreenOnFlag()V

    .line 616
    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/Effects;->SetShotMode(Z)V

    .line 617
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Effects] OnPause cancelAutoFocus failed() , RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public OnPreCameraSwitch()V
    .locals 0

    .prologue
    .line 537
    return-void
.end method

.method public OnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 506
    const-string v0, "Effects"

    const-string v1, "[Effects] OnResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 513
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    if-nez v0, :cond_5

    .line 514
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 515
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, v2, :cond_3

    .line 516
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 517
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 523
    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_CreateConfigurations()V

    .line 524
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;-><init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    .line 525
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;->start()V

    .line 526
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeMiscControls()V

    .line 529
    :cond_5
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_AddScreenOnFlag()V

    .line 530
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_KeepIdleTimerOnAwhile()V

    .line 531
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Effects;->bSkipFlingAfterRecord:Z

    goto :goto_0

    .line 520
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_1
.end method

.method public OnSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2258
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2259
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->OnSingleTapUp(Landroid/view/View;II)V

    .line 2265
    :cond_0
    :goto_0
    return-void

    .line 2261
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2262
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnSingleTapUp(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public OnSmartCoverClose()V
    .locals 0

    .prologue
    .line 2996
    return-void
.end method

.method public OnSmartCoverOpen()V
    .locals 0

    .prologue
    .line 2991
    return-void
.end method

.method public OnStart()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public OnStop()V
    .locals 2

    .prologue
    .line 621
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_0

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1}, Landroid/media/MediaActionSound;->release()V

    .line 624
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_0
    return-void

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Ljava/lang/NoClassDefFoundError;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public OnUserInteraction()V
    .locals 2

    .prologue
    .line 2243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2246
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_KeepIdleTimerOnAwhile()V

    .line 2248
    :cond_1
    return-void
.end method

.method public OperCapture(II)V
    .locals 3
    .parameter "what"
    .parameter "count"

    .prologue
    .line 2353
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] OperCapture what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2354
    packed-switch p1, :pswitch_data_0

    .line 2368
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2357
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusOper()V

    .line 2358
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Effects;->_do_FaceEffectCapture()V

    goto :goto_0

    .line 2362
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2363
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onStop()V

    goto :goto_0

    .line 2354
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public OperFocus(I)V
    .locals 5
    .parameter "what"

    .prologue
    const/4 v4, 0x1

    .line 2453
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    if-eqz v1, :cond_1

    .line 2499
    :cond_0
    :goto_0
    return-void

    .line 2457
    :cond_1
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Effects] OperFocus : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2459
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2461
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2463
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/Effects$AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2464
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2466
    :catch_0
    move-exception v0

    .line 2467
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Effects] OperFocus AutoFocus failed() , RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2468
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto :goto_0

    .line 2474
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 2476
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2477
    :catch_1
    move-exception v0

    .line 2478
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Effects] OperFocus cancelAutoFocus failed() , RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2483
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_2
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    if-nez v1, :cond_0

    .line 2485
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2486
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startFaceDetection()V

    goto/16 :goto_0

    .line 2491
    :pswitch_3
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iCameraId:I

    if-nez v1, :cond_0

    .line 2493
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2494
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopFaceDetection()V

    goto/16 :goto_0

    .line 2459
    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public SetFocusOperHandler(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 2349
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/Effects;->OperFocus(I)V

    .line 2350
    return-void
.end method

.method public SetOperHandler(I)V
    .locals 6
    .parameter "what"

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 2657
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] SetOperHandler what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2658
    sparse-switch p1, :sswitch_data_0

    .line 2765
    :goto_0
    :sswitch_0
    return-void

    .line 2664
    :sswitch_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2665
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->ShowDisableToast()V

    goto :goto_0

    .line 2669
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2670
    new-instance v0, Lcom/pantech/app/vegacamera/Effects$6;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Effects$6;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    .line 2728
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->setEffectsListener(Lcom/pantech/app/vegacamera/video/EffectsRecorder$EffectsListener;)V

    .line 2731
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->CheckFileSize(Lcom/pantech/app/vegacamera/ActivityBase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2732
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    .line 2735
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetLocalVoice(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bLocalVoice:Z

    .line 2736
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Effects;->bLocalVoice:Z

    if-eqz v0, :cond_3

    .line 2737
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/util/Util;->SetLocalVoice(Landroid/content/Context;Z)V

    .line 2738
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusGainOper()V

    .line 2740
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2741
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->setRecordingOrientation(ILcom/pantech/app/vegacamera/data/AppData;Landroid/filterfw/core/GraphRunner;)V

    .line 2742
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;Landroid/filterfw/core/GraphRunner;)V

    .line 2743
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 2744
    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/Effects;->SetShotMode(Z)V

    .line 2745
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_ResetIdleTimer()V

    goto :goto_0

    .line 2749
    :sswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/Effects;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    goto/16 :goto_0

    .line 2753
    :sswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopSmoothZoom()V

    goto/16 :goto_0

    .line 2757
    :sswitch_4
    invoke-direct {p0, v3, v5}, Lcom/pantech/app/vegacamera/Effects;->_SetZoomControl(IZ)V

    goto/16 :goto_0

    .line 2761
    :sswitch_5
    invoke-direct {p0, v5, v5}, Lcom/pantech/app/vegacamera/Effects;->_SetZoomControl(IZ)V

    goto/16 :goto_0

    .line 2658
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0x24 -> :sswitch_3
        0x26 -> :sswitch_5
        0x27 -> :sswitch_4
    .end sparse-switch
.end method

.method public SetOperHandler(II)V
    .locals 2
    .parameter "what"
    .parameter "count"

    .prologue
    .line 2319
    sparse-switch p1, :sswitch_data_0

    .line 2345
    :goto_0
    return-void

    .line 2323
    :sswitch_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2325
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/Effects;->OperCapture(II)V

    goto :goto_0

    .line 2328
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->onCaptureComplete()V

    .line 2329
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    goto :goto_0

    .line 2336
    :sswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    goto :goto_0

    .line 2340
    :sswitch_2
    iput p2, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    .line 2341
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V

    goto :goto_0

    .line 2319
    nop

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
    .line 3000
    return-void
.end method

.method public SetParameter(J)V
    .locals 0
    .parameter "what"

    .prologue
    .line 2314
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V

    .line 2315
    return-void
.end method

.method public SetParameter(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2302
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] setParameter + name =  "

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

    .line 2303
    const-string v0, "pref_mode_face_effect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2304
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectParameter:Ljava/lang/Object;

    .line 2305
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetEffect()V

    .line 2310
    :cond_0
    :goto_0
    return-void

    .line 2306
    :cond_1
    const-string v0, "face_effect_control"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2307
    iput p2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectDistortionAmt:I

    .line 2308
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetEffect()V

    goto :goto_0
.end method

.method public SetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 2295
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] setParameter + name =  "

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

    .line 2296
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    return-void
.end method

.method public SetShotMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2960
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Effects;->bShotMode:Z

    .line 2961
    return-void
.end method

.method public SetSingleTapUpListener(Landroid/view/View;)V
    .locals 2
    .parameter "singleTapArea"

    .prologue
    .line 2252
    const-string v0, "Effects"

    const-string v1, "[Effects] SetSingleTapUpListener()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2254
    return-void
.end method

.method public SetUpdateParameter(J)V
    .locals 3
    .parameter "what"

    .prologue
    .line 2814
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2815
    return-void
.end method

.method public SetupPreview()V
    .locals 2

    .prologue
    .line 2939
    const-string v0, "Effects"

    const-string v1, "[Effects] SetupPreview()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2941
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 2942
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PREFERENCE:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V

    .line 2944
    return-void
.end method

.method public StorageChanged()V
    .locals 0

    .prologue
    .line 3106
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StopPreview()V

    .line 3107
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartCameraMode()V

    .line 3108
    return-void
.end method

.method public ZoomControl(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 2904
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2905
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2906
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFocusRelease()V

    .line 2907
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CancelAutoFocus()V

    .line 2910
    :cond_0
    if-nez p1, :cond_4

    .line 2911
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_2

    .line 2912
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    .line 2930
    :cond_1
    :goto_0
    return-void

    .line 2916
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    .line 2925
    :cond_3
    :goto_1
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/Effects;->_SetCameraParameters(J)V

    .line 2927
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2928
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetZoomIndex(I)V

    goto :goto_0

    .line 2917
    :cond_4
    if-ne p1, v2, :cond_3

    .line 2918
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    if-gt v0, v2, :cond_5

    .line 2919
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    goto :goto_0

    .line 2922
    :cond_5
    iget v0, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/Effects;->iZoomValue:I

    goto :goto_1
.end method

.method protected _DoReturnToCaller(Z)V
    .locals 5
    .parameter "valid"

    .prologue
    .line 2797
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2799
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    if-eqz v2, :cond_1

    .line 2800
    const/4 v0, -0x1

    .line 2801
    .local v0, resultCode:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->getVideoRecordUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2805
    :goto_0
    const-string v2, "Effects"

    .line 2806
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Effects] _DoReturnToCaller resultCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , resultIntent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2805
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2807
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(ILandroid/content/Intent;)V

    .line 2808
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2809
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    .line 2810
    :cond_0
    return-void

    .line 2803
    .end local v0           #resultCode:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method protected _GetVideoFlip()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1601
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_mirror"

    .line 1602
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_mirror_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1601
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1604
    .local v0, str:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1605
    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->mOrientationHint:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/Effects;->mOrientationHint:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    .line 1606
    :cond_0
    const-string v1, "flip-v"

    .line 1611
    :goto_0
    return-object v1

    .line 1608
    :cond_1
    const-string v1, "flip-h"

    goto :goto_0

    .line 1611
    :cond_2
    const-string v1, "off"

    goto :goto_0
.end method

.method public _MediaScannerDisconnect()V
    .locals 2

    .prologue
    .line 2445
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2446
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 2447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    .line 2448
    const-string v0, "Effects"

    const-string v1, "[Effects] MediaScannerDisconnect() : disconnect()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2450
    :cond_0
    return-void
.end method

.method public _SetCamera(Landroid/hardware/Camera;)V
    .locals 2
    .parameter "cameraDevice"

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1266
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;

    .line 1267
    return-void

    .line 1257
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while previewing!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1259
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1261
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCamera called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public _SetCameraDisplayOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setCameraDisplayOrientation called after configuration!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1297
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDisplayOrientation:I

    .line 1298
    return-void
.end method

.method public _SetProfile(Landroid/media/CamcorderProfile;)V
    .locals 2
    .parameter "profile"

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1278
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    .line 1279
    return-void

    .line 1272
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile cannot be called while recording!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1274
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "setProfile called on an already released recorder!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1270
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized _StartEffectsPreview()V
    .locals 3

    .prologue
    .line 1616
    monitor-enter p0

    :try_start_0
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_StartEffectsPreview ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1617
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1635
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1636
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No effect parameter provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1616
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1621
    :pswitch_0
    :try_start_1
    const-string v0, "Effects"

    const-string v1, "startPreview called when already running preview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1662
    :goto_0
    monitor-exit p0

    return-void

    .line 1625
    :pswitch_1
    :try_start_2
    const-string v0, "Effects"

    const-string v1, "Cannot start preview when already recording!"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1629
    :pswitch_2
    const-string v0, "Effects"

    const-string v1, "setEffect called on an already released recorder!"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_1

    .line 1639
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No recording profile provided!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    .line 1642
    const-string v0, "Effects"

    const-string v1, "Passed a null surface holder; waiting for valid one"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetEffectsState(I)V

    goto :goto_0

    .line 1646
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_3

    .line 1647
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1650
    :cond_3
    const-string v0, "Effects"

    const-string v1, "Initializing filter graph"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeFilterFramework()V

    .line 1654
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Effects;->_InitializeEffect(Z)V

    .line 1656
    const-string v0, "Effects"

    const-string v1, "Starting filter graph"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetEffectsState(I)V

    .line 1659
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1617
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized _StopEffectsPreview()V
    .locals 4

    .prologue
    .line 1897
    monitor-enter p0

    :try_start_0
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stopping preview ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1908
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    .line 1912
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 1933
    :goto_0
    monitor-exit p0

    return-void

    .line 1900
    :sswitch_0
    :try_start_1
    const-string v1, "Effects"

    const-string v2, "StopPreview called when preview not active!"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1897
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1903
    :sswitch_1
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "stopPreview called on released EffectsRecorder!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1919
    :cond_0
    const-string v1, "Effects"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "effects state ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "device state ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1922
    :try_start_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1927
    :try_start_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 1928
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 1929
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 1931
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetEffectsState(I)V

    .line 1932
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto :goto_0

    .line 1923
    :catch_0
    move-exception v0

    .line 1924
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect camera to effect input"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1898
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 981
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_flash_mode_camera"

    .line 982
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_flash_mode_camera_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 981
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, flashMode:Ljava/lang/String;
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flashMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 985
    .local v1, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 986
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    if-nez v2, :cond_1

    .line 988
    const-string v0, "off"

    .line 994
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 995
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Effects] _UpdateCameraParametersFLASH flashMode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    :goto_1
    return-void

    .line 989
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 991
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    const-string v0, "torch"

    goto :goto_0

    .line 997
    :cond_2
    const-string v2, "Effects"

    const-string v3, "[Effects] _UpdateCameraParametersFLASH flashMode:null"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected _UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 858
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_wb"

    .line 859
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

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
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Effects] set param wb = "

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

.method protected _UpdateFaceEffectParameter()Z
    .locals 3

    .prologue
    .line 1048
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_UpdatFaceEffectParameter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectParameter:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_SetEffect()V

    .line 1053
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public _do_FaceEffectCapture()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2371
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    if-nez v3, :cond_0

    .line 2372
    new-instance v3, Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    invoke-direct {v3}, Lcom/pantech/app/vegacamera/Effects$ImageNamer;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mImageNamer:Lcom/pantech/app/vegacamera/Effects$ImageNamer;

    .line 2373
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    if-nez v3, :cond_1

    .line 2374
    new-instance v3, Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/Effects$ImageSaver;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mImageSaver:Lcom/pantech/app/vegacamera/Effects$ImageSaver;

    .line 2376
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v3, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v3

    iget v6, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientation:I

    add-int/lit16 v6, v6, 0x168

    rem-int/lit16 v6, v6, 0x168

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->animateSlide(I)V

    .line 2377
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v3, v5}, Landroid/media/MediaActionSound;->play(I)V

    .line 2379
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v3}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v3

    .line 2380
    const-string v6, "EffectCaptureFilter"

    invoke-virtual {v3, v6}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 2379
    check-cast v0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;

    .line 2381
    .local v0, EffectCaptureFilter:Landroid/filterpacks/videosink/ImpleFaceEffectCapture;
    const/4 v1, 0x0

    .line 2382
    .local v1, imageOrientation:I
    iget v3, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    sparse-switch v3, :sswitch_data_0

    .line 2396
    const/16 v1, 0x10e

    .line 2400
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    const-string v6, "pref_setting_mirror"

    .line 2401
    iget-object v7, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v8, Lcom/pantech/app/vegacamera/R$string;->pref_setting_mirror_default:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2400
    invoke-virtual {v3, v6, v7}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2403
    .local v2, str:Ljava/lang/String;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_setShutterButton_Disable()V

    .line 2405
    const-string v3, "orientation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2406
    const-string v6, "pictureFlip"

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2407
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2406
    invoke-virtual {v0, v6, v3}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2408
    const-string v3, "FaceCaptureDoneListener"

    iget-object v6, p0, Lcom/pantech/app/vegacamera/Effects;->mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

    invoke-virtual {v0, v3, v6}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2409
    const-string v3, "onCapture"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2410
    const-string v3, "onCapture"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2411
    const-string v3, "Effects"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "iOrientationCompensation="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/Effects;->iOrientationCompensation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imageOrientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    return-void

    .line 2384
    .end local v2           #str:Ljava/lang/String;
    :sswitch_0
    const/16 v1, 0x10e

    .line 2385
    goto :goto_0

    .line 2387
    :sswitch_1
    const/4 v1, 0x0

    .line 2388
    goto :goto_0

    .line 2390
    :sswitch_2
    const/16 v1, 0x5a

    .line 2391
    goto :goto_0

    .line 2393
    :sswitch_3
    const/16 v1, 0xb4

    .line 2394
    goto/16 :goto_0

    .restart local v2       #str:Ljava/lang/String;
    :cond_2
    move v3, v5

    .line 2407
    goto :goto_1

    .line 2382
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method enable3ALocks(Z)V
    .locals 0
    .parameter "toggle"

    .prologue
    .line 1770
    return-void
.end method

.method public onBatteryStateChanged(I)V
    .locals 3
    .parameter "batteryState"

    .prologue
    .line 2965
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBatteryStateEvent() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 3
    .parameter "callState"

    .prologue
    .line 2970
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2971
    return-void
.end method

.method public declared-synchronized onEffectsError(Ljava/lang/Exception;)V
    .locals 5
    .parameter "exception"

    .prologue
    .line 3071
    monitor-enter p0

    if-nez p1, :cond_1

    .line 3072
    :try_start_0
    const-string v0, "Effects"

    const-string v1, "onEffectsError exception occured but exception contents null"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3102
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 3076
    :cond_1
    :try_start_1
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEffectsError exception= "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3078
    instance-of v0, p1, Landroid/filterpacks/videosink/MediaRecorderStopException;

    if-eqz v0, :cond_2

    .line 3079
    const-string v0, "Effects"

    const-string v1, "MediaRecorderStopException "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3080
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3081
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-class v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->startCameraActivity(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 3082
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    check-cast v0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_goto_EffectsIndex()V

    .line 3083
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3071
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3089
    :cond_2
    :try_start_2
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 3090
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.RuntimeException: Error registering surface"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3091
    const-string v0, "Effects"

    const-string v1, "Error registering surface and checkQualityAndStartPreview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3092
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartCameraMode()V

    goto :goto_0

    .line 3093
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.RuntimeException: Error swapping EGL buffers"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3094
    const-string v0, "Effects"

    const-string v1, "Error swapping EGL buffers and checkQualityAndStartPreview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartCameraMode()V

    goto :goto_0

    .line 3097
    :cond_4
    const-string v0, "Effects"

    const-string v1, "Runtime Exception"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3098
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->_StartCameraMode()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onEffectsUpdate(II)V
    .locals 3
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    .line 3027
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onEffectsUpdate() : EFFECT_MSG = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 3029
    const-string v0, "Effects"

    const-string v1, "onEffectsUpdate() : EFFECT_MSG_RECORDING_DONE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 3067
    :cond_0
    :goto_0
    return-void

    .line 3044
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 3047
    const-string v0, "Effects"

    const-string v1, "onEffectsUpdate() : EFFECT_MSG_EFFECTS_STOPPED"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3048
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 3052
    const-string v0, "Effects"

    const-string v1, "onEffectsUpdate() : EFFECT_MSG_EFFECTS_STOPPED"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3053
    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 3054
    const-string v0, "Effects"

    const-string v1, "onEffectsUpdate() : EFFECT_MSG_EFFECTS_RELEASE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 2825
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2826
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusData([Landroid/hardware/Camera$Face;)V

    .line 2827
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStart(I)V

    .line 2829
    :cond_0
    return-void
.end method

.method public onHeadSetStateChanged(I)V
    .locals 3
    .parameter "headsetState"

    .prologue
    .line 2985
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHeadSetStateChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2986
    return-void
.end method

.method public onMediaStateChanged()V
    .locals 2

    .prologue
    .line 2975
    const-string v0, "Effects"

    const-string v1, "onMediaStateEvent()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2976
    return-void
.end method

.method public onRingerModeStateChanged(I)V
    .locals 3
    .parameter "audioSystemState"

    .prologue
    .line 2980
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRingerModeStateEvent() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2981
    return-void
.end method

.method public setFocusCallback(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetEffectsState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mEffectsRecorder:Lcom/pantech/app/vegacamera/video/EffectsRecorder;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/video/EffectsRecorder;->setFocusCallback(Z)V

    .line 2789
    :goto_0
    return-void

    .line 2786
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusResult(Z)V

    .line 2787
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    goto :goto_0
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .parameter "toggle"

    .prologue
    .line 1751
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1753
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v2, "video-stabilization-supported"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1754
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1755
    const-string v2, "Effects"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Setting video stabilization to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1756
    const-string v3, "video-stabilization"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1757
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1758
    const/4 v2, 0x1

    .line 1761
    :goto_1
    return v2

    .line 1756
    :cond_0
    const-string v2, "false"

    goto :goto_0

    .line 1760
    :cond_1
    const-string v2, "Effects"

    const-string v3, "Video stabilization not supported"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    const/4 v2, 0x0

    goto :goto_1
.end method
