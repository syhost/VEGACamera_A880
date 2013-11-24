.class public Lcom/pantech/app/vegacamera/aot/AOTCamera;
.super Ljava/lang/Object;
.source "AOTCamera.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;
.implements Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;,
        Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;,
        Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;,
        Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;,
        Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;,
        Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;,
        Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;,
        Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;,
        Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;
    }
.end annotation


# static fields
.field private static final CURRENT_CAMERA_FRONT:I = 0x1

.field private static final CURRENT_CAMERA_MAIN:I = 0x0

.field private static final FOCUSING:I = 0x1

.field private static final FOCUSING_SNAP_ON_FINISH:I = 0x4

.field private static final FOCUS_FAIL:I = 0x3

.field private static final FOCUS_NOT_STARTED:I = 0x0

.field private static final FOCUS_SUCCESS:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final LOWBATTERY_VALUE_5:I = 0x5

.field private static final OBSERVE_CAMERA_DEVICE:I = 0x65

.field private static final RESTART_PREVIEW:I = 0x64

.field private static final SNAPSHOT_IN_PROGRESS:I = 0x2

.field private static TAG:Ljava/lang/String; = null

.field private static final VISIBLE_REVIEW:I = 0x66


# instance fields
.field private alVolatileData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/preference/VolatileData;",
            ">;"
        }
    .end annotation
.end field

.field private comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

.field private lastFilePath:Ljava/lang/String;

.field private mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAutoFocusCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;

.field protected mCameraDevice:Landroid/hardware/Camera;

.field private mCameraID:I

.field private mCameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDevAllowedObserver:Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;

.field private mDidRegister:Z

.field private mDisplayRotation:I

.field private final mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

.field private mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private mFlashMode:Ljava/lang/String;

.field private mFlashModeIndex:I

.field private mFlashModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFocusState:I

.field private mHandler:Landroid/os/Handler;

.field private mImageHeight:I

.field private mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

.field private mImageWidth:I

.field private final mJpepPictureCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;

.field private mOrientation:I

.field private mOrientationCompensation:I

.field private mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPausing:Z

.field private mPicturesRemaining:J

.field private final mPreviewCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;

.field private mPreviewing:Z

.field private final mRawPictureCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReviewBitmap:Landroid/graphics/Bitmap;

.field private mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

.field private mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

.field private mScannerConnection:Landroid/media/MediaScannerConnection;

.field private mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

.field private final mShutterCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;

.field private mShuttericon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private mStatus:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private mTexture:Landroid/view/TextureView;

.field private pictureSize:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "AOTCamera"

    sput-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/aot/AOTCameraService;Lcom/pantech/app/vegacamera/aot/AOTLayout;)V
    .locals 3
    .parameter "context"
    .parameter "Service"
    .parameter "rootview"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    .line 93
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 102
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    .line 105
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 107
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;

    .line 108
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRawPictureCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;

    .line 109
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mJpepPictureCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;

    .line 112
    new-instance v0, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    .line 113
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;

    .line 114
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;

    .line 116
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;

    .line 118
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientation:I

    .line 126
    iput v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationCompensation:I

    .line 127
    iput v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDisplayRotation:I

    .line 131
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    .line 133
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z

    .line 136
    iput v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    .line 139
    iput v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageWidth:I

    .line 140
    iput v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageHeight:I

    .line 144
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    .line 145
    iput v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeIndex:I

    .line 149
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->lastFilePath:Ljava/lang/String;

    .line 151
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDidRegister:Z

    .line 152
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 1273
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera$1;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]AOTCamera"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    .line 190
    iput-object p3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    .line 191
    return-void
.end method

.method private CheckDeviceAllowed()I
    .locals 4

    .prologue
    .line 469
    const/4 v0, 0x1

    .line 472
    .local v0, devEnabled:I
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "camera_on"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 476
    :goto_0
    return v0

    .line 473
    :catch_0
    move-exception v1

    .line 474
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private MediaScannerConnect()V
    .locals 2

    .prologue
    .line 1305
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->MediaScannerDisConnect()V

    .line 1307
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    if-nez v0, :cond_0

    .line 1308
    new-instance v0, Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    .line 1310
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 1311
    return-void
.end method

.method private MediaScannerDisConnect()V
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1316
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    .line 1318
    :cond_0
    return-void
.end method

.method private static ThrowIfCameraDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 505
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    if-eqz v1, :cond_0

    .line 506
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 507
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    new-instance v1, Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;

    invoke-direct {v1}, Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;-><init>()V

    throw v1

    .line 511
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    return-void
.end method

.method private _CreateConfiguration()V
    .locals 5

    .prologue
    .line 312
    sget-object v1, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v2, "[AOTCamera] _CreateConfiguration()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->_CreateVolatileData()V

    .line 316
    new-instance v1, Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    .line 317
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 320
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_setting_storage_location_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, storageLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->setLocationPref(Ljava/lang/String;)V

    .line 324
    sget-object v1, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "createConfiguration storageLocation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v0           #storageLocation:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    .line 329
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetLocalId(Landroid/content/Context;I)V

    .line 330
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->_GetVolatilData()Ljava/util/ArrayList;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetVolatileDataIdx(Ljava/util/ArrayList;I)V

    .line 333
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredPictureSize(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->pictureSize:Ljava/lang/String;

    .line 336
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->createFlashModeList()V

    .line 338
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    const-string v2, "pref_flash_mode_camera"

    .line 340
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_flash_mode_camera_default:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 339
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    .line 345
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->getFlashModeListIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeIndex:I

    .line 346
    return-void

    .line 342
    :cond_1
    const-string v1, "auto"

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    goto :goto_0
.end method

.method private _CreateVolatileData()V
    .locals 4

    .prologue
    .line 290
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 292
    .local v1, iNumberOfCameras:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->alVolatileData:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 293
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->alVolatileData:Ljava/util/ArrayList;

    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 298
    .end local v0           #i:I
    :cond_0
    return-void

    .line 295
    .restart local v0       #i:I
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->alVolatileData:Ljava/util/ArrayList;

    new-instance v3, Lcom/pantech/app/vegacamera/preference/VolatileData;

    invoke-direct {v3}, Lcom/pantech/app/vegacamera/preference/VolatileData;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _DestroyVolatileData()V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->alVolatileData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->alVolatileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->alVolatileData:Ljava/util/ArrayList;

    .line 309
    :cond_0
    return-void
.end method

.method private _GetVolatilData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/preference/VolatileData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 301
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->alVolatileData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1344
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->checkStorage()V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    return-void
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 147
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I

    return v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Z
    .locals 1
    .parameter

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPausing:Z

    return v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 706
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->autoFocus()V

    return-void
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->invisibleMainLayout()V

    return-void
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCameraService;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    return-object v0
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    return v0
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    return-void
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 849
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->pauseAudioPlay()V

    return-void
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    return-object v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 136
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    return v0
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 125
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientation:I

    return v0
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageWidth:I

    return-void
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageHeight:I

    return-void
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 139
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageWidth:I

    return v0
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 140
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageHeight:I

    return v0
.end method

.method static synthetic access$26(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;
    .locals 1
    .parameter

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRawPictureCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mJpepPictureCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$JpepPictureCallback;

    return-object v0
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/aot/AOTCamera;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 760
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->startCamera()V

    return-void
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/aot/AOTCamera;J)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 973
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->createName(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$31(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/content/ContentResolver;
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$32(Lcom/pantech/app/vegacamera/aot/AOTCamera;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->lastFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1304
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->MediaScannerConnect()V

    return-void
.end method

.method static synthetic access$34(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$35(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Z
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z

    return v0
.end method

.method static synthetic access$36(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I

    return-void
.end method

.method static synthetic access$37(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTLayout;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    return-object v0
.end method

.method static synthetic access$38(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 125
    iput p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientation:I

    return-void
.end method

.method static synthetic access$39(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 127
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 127
    iput p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDisplayRotation:I

    return-void
.end method

.method static synthetic access$41(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I
    .locals 1
    .parameter

    .prologue
    .line 126
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationCompensation:I

    return v0
.end method

.method static synthetic access$42(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationCompensation:I

    return-void
.end method

.method static synthetic access$43(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->setOrientationIcon(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->visibleReviewImage()V

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->checkFotaDevLocked()V

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->invisibleReviewImage()V

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1078
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->visibleMainLayout()V

    return-void
.end method

.method private autoFocus()V
    .locals 2

    .prologue
    .line 707
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]dosnap"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    if-nez v0, :cond_0

    .line 709
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    .line 710
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->cancelAutoFocus()V

    .line 711
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 713
    :cond_0
    return-void
.end method

.method private calculatePicturesRemaining()J
    .locals 6

    .prologue
    const-wide/32 v4, 0x1e00000

    const-wide/16 v2, 0x0

    .line 1228
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->GetAvailableStorage(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPicturesRemaining:J

    .line 1230
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPicturesRemaining:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 1231
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPicturesRemaining:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPicturesRemaining:J

    .line 1237
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPicturesRemaining:J

    return-wide v0

    .line 1233
    :cond_1
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPicturesRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1234
    iput-wide v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPicturesRemaining:J

    goto :goto_0
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1241
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPicturesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelAutoFocus()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 716
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]cancelAutoFocus"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I

    if-eq v0, v2, :cond_1

    .line 718
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 722
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->clearFocusState()V

    .line 723
    return-void
.end method

.method private checkFotaDevLocked()V
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->CheckDeviceAllowed()I

    move-result v0

    if-nez v0, :cond_0

    .line 463
    const/16 v0, 0x66

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    .line 466
    :cond_0
    return-void
.end method

.method private checkStorage()V
    .locals 0

    .prologue
    .line 1345
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->updateStorageHint()V

    .line 1346
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->calculatePicturesRemaining()J

    .line 1347
    return-void
.end method

.method private clearFocusState()V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    .line 727
    return-void
.end method

.method private createFlashModeList()V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    .line 1044
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1047
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    :cond_0
    return-void
.end method

.method private createIntentFilter()V
    .locals 6

    .prologue
    .line 351
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, batteryIntent:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_0

    .line 353
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 357
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v4, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 362
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_1

    .line 363
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 366
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 367
    .local v0, audioIntentFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_2

    .line 368
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 370
    :cond_2
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 371
    .local v3, screenOffFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 373
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_3

    .line 374
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDidRegister:Z

    .line 377
    return-void
.end method

.method private createName(J)Ljava/lang/String;
    .locals 5
    .parameter "dateTaken"

    .prologue
    .line 974
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 975
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->image_file_name_format:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 976
    .local v1, dateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private doFocus(Z)V
    .locals 2
    .parameter "focus"

    .prologue
    .line 698
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]doFocus"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    if-eqz p1, :cond_0

    .line 700
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->autoFocus()V

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private doSnap()V
    .locals 3

    .prologue
    .line 730
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doSnap : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->onSnap()V

    .line 738
    :cond_1
    :goto_0
    return-void

    .line 733
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 734
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    goto :goto_0

    .line 735
    :cond_3
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    if-nez v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->onSnap()V

    goto :goto_0
.end method

.method private getFlashModeListIndex(Ljava/lang/String;)I
    .locals 2
    .parameter "key"

    .prologue
    .line 1052
    const/4 v0, 0x0

    .line 1054
    .local v0, index:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1055
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1057
    :cond_0
    return v0
.end method

.method private getInitialOrientation(I)I
    .locals 1
    .parameter "windowOrientation"

    .prologue
    .line 1123
    const/4 v0, 0x0

    .line 1125
    .local v0, initailOrient:I
    packed-switch p1, :pswitch_data_0

    .line 1140
    :goto_0
    return v0

    .line 1127
    :pswitch_0
    const/16 v0, 0x5a

    .line 1128
    goto :goto_0

    .line 1130
    :pswitch_1
    const/4 v0, 0x0

    .line 1131
    goto :goto_0

    .line 1133
    :pswitch_2
    const/16 v0, 0x10e

    .line 1134
    goto :goto_0

    .line 1136
    :pswitch_3
    const/16 v0, 0xb4

    goto :goto_0

    .line 1125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter "contentUri"

    .prologue
    const/4 v3, 0x0

    .line 1210
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 1212
    .local v2, proj:[Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1217
    .local v7, cursor:Landroid/database/Cursor;
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 1219
    .local v6, column_index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1221
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1222
    .local v8, index:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1224
    return-object v8
.end method

.method private initializeReviewImageBitmap()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1106
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[CameraWidget] initializeReviewImageBitmap() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    .line 1109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1111
    :cond_0
    return-void
.end method

.method private invisibleMainLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1094
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->mainLayout:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1096
    .local v0, mainLayout:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1097
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    invoke-virtual {v1, v3}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->setOnAOTShutterButtonListener(Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;)V

    .line 1100
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1101
    return-void
.end method

.method private invisibleReviewImage()V
    .locals 2

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setVisibility(I)V

    .line 1115
    return-void
.end method

.method private openCamera()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;,
            Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;,
            Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
        }
    .end annotation

    .prologue
    .line 514
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->ThrowIfCameraDisabled(Landroid/content/Context;)V

    .line 516
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 518
    :try_start_0
    iget v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    invoke-static {v1}, Landroid/hardware/Camera;->openAOT(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 519
    sget-object v1, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v2, "Camera.openAOT"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 526
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 527
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 536
    :goto_1
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, e:Ljava/lang/NoSuchMethodError;
    iget v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 522
    sget-object v1, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v2, "Camera.open"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 523
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 524
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v1, Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 530
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 531
    :catch_2
    move-exception v0

    .line 532
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v2, "reconnect failed."

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    new-instance v1, Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private pauseAudioPlay()V
    .locals 4

    .prologue
    .line 850
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAudioManager:Landroid/media/AudioManager;

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 854
    return-void
.end method

.method private registerFotaDevObserver()V
    .locals 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;

    .line 483
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "camera_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    .line 484
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;

    .line 483
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 486
    :cond_0
    return-void
.end method

.method private resizePreview()V
    .locals 10

    .prologue
    .line 665
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v7, "[AOTCamera]resizePreview"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v6, :cond_0

    .line 695
    :goto_0
    return-void

    .line 670
    :cond_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v4

    .line 671
    .local v4, size:Landroid/hardware/Camera$Size;
    iget v6, v4, Landroid/hardware/Camera$Size;->width:I

    int-to-double v6, v6

    iget v8, v4, Landroid/hardware/Camera$Size;->height:I

    int-to-double v8, v8

    div-double v0, v6, v8

    .line 673
    .local v0, mAspectRatio:D
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    .line 674
    .local v5, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getHeight()I

    move-result v6

    invoke-static {v6, v5, v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->getOptimalPreviewSize(ILjava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 676
    .local v2, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_2

    .line 677
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 678
    .local v3, original:Landroid/hardware/Camera$Size;
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[Camera] mParameters.getPreviewSize() = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string v9, "preview-size"

    invoke-virtual {v8, v9}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v3, v2}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 680
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[Camera] setPreviewSize() : width = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " height = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget v7, v2, Landroid/hardware/Camera$Size;->width:I

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 685
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 686
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 691
    :cond_1
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[Camera] Preview size is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .end local v3           #original:Landroid/hardware/Camera$Size;
    :cond_2
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v6, v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setAspectRatio(D)V

    goto/16 :goto_0
.end method

.method private resumeAudioPlay()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 857
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 861
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAudioManager:Landroid/media/AudioManager;

    goto :goto_0
.end method

.method private setCameraFlashChangeResource(Ljava/lang/String;)V
    .locals 4
    .parameter "flashmode"

    .prologue
    .line 380
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    .line 382
    .local v0, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] CameraFlshChangeResource() :: flashMode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    sget-object v1, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] CameraFlshChangeResource() :: supportedFlash = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-nez v1, :cond_0

    .line 386
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->aot_flashBtn:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 388
    :cond_0
    invoke-static {p1, v0}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    .line 389
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->aot_flash_auto_btn:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    .line 403
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    .line 409
    :cond_2
    :goto_1
    return-void

    .line 392
    :cond_3
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v1, :cond_1

    .line 394
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->aot_flash_on_btn:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 395
    :cond_4
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 396
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->aot_flash_off_btn:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 398
    :cond_5
    const-string v1, "torch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->aot_flash_torch_btn:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 406
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v1, :cond_2

    .line 407
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private setFlashMode()V
    .locals 3

    .prologue
    .line 1061
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera] setFlashMode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeIndex:I

    .line 1064
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeIndex:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1065
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeIndex:I

    .line 1068
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashModeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    .line 1070
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    const-string v1, "pref_flash_mode_camera"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/CameraSettings;->SetPreference(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1074
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->setCameraFlashChangeResource(Ljava/lang/String;)V

    .line 1075
    return-void
.end method

.method private setOrientationIcon(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShuttericon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShuttericon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setDegree(I)V

    .line 1032
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setDegree(I)V

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 1036
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setDegree(I)V

    .line 1038
    :cond_2
    return-void
.end method

.method private setParameters()V
    .locals 3

    .prologue
    .line 634
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 637
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->setPictureSize(Landroid/hardware/Camera$Parameters;)V

    .line 640
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 643
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTCamera]setFlashMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 647
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashMode:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->setCameraFlashChangeResource(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method private setPictureSize(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "mparameters"

    .prologue
    .line 651
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    const-string v3, "pref_setting_picture_size"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, pictureSize:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 654
    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/pantech/app/vegacamera/CameraSettings;->InitialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 661
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->resizePreview()V

    .line 662
    return-void

    .line 656
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    .line 657
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-object v2, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[AOTCamera]setPictureSize pictureSize supported = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "picture-size-values"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    sget-object v2, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[AOTCamera]setPictureSize pictureSize : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-static {v0, v1, p1}, Lcom/pantech/app/vegacamera/CameraSettings;->SetCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method private showCameraErrorAndFinish(I)V
    .locals 1
    .parameter "stateID"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->showAOTErrorNFinish(I)V

    .line 203
    return-void
.end method

.method private startCamera()V
    .locals 2

    .prologue
    const/16 v1, 0x65

    .line 762
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->openCamera()V
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_2

    .line 773
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->startPreview()V

    .line 774
    return-void

    .line 763
    :catch_0
    move-exception v0

    .line 764
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;->printStackTrace()V

    .line 765
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    goto :goto_0

    .line 766
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 767
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;->printStackTrace()V

    .line 768
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    goto :goto_0

    .line 769
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    :catch_2
    move-exception v0

    .line 770
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;->printStackTrace()V

    .line 771
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    goto :goto_0
.end method

.method private switchCameraID()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 741
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    if-nez v0, :cond_1

    .line 742
    iput v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    .line 747
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->closeCamera()V

    .line 749
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    iget v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 750
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetLocalId(Landroid/content/Context;I)V

    .line 751
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetLocal()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 752
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraSettings;->SetCameraId(I)V

    .line 754
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredPictureSize(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->pictureSize:Ljava/lang/String;

    .line 755
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CameraID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "prefered pictureSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->pictureSize:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->startCamera()V

    .line 758
    return-void

    .line 743
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    if-ne v0, v1, :cond_0

    .line 744
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    goto :goto_0
.end method

.method private unregisterFotaDevObserver()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;

    if-nez v0, :cond_1

    .line 496
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContentResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 494
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDevAllowedObserver:Lcom/pantech/app/vegacamera/aot/AOTCamera$DeviceAllowedObserver;

    goto :goto_0
.end method

.method private updateStorageHint()V
    .locals 4

    .prologue
    const/16 v3, 0x7d0

    .line 1245
    sget-object v1, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v2, "[AOTCamera]updateStorageHint()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->comboPreference:Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/Storage;->GetStorageStatusANDChLoc(Landroid/content/Context;Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I

    move-result v0

    .line 1247
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 1271
    :cond_0
    :goto_0
    return-void

    .line 1249
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->setVisibility(I)V

    goto :goto_0

    .line 1253
    :pswitch_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Storage;->Is2ndExternalSaveLocation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1254
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->spaceIsLow_content_ext:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1258
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    if-eqz v1, :cond_0

    .line 1259
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->setVisibility(I)V

    goto :goto_0

    .line 1256
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->spaceIsLow_content_int:I

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1262
    :pswitch_2
    const/16 v1, 0x6b

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    goto :goto_0

    .line 1265
    :pswitch_3
    const/16 v1, 0x6a

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    goto :goto_0

    .line 1268
    :pswitch_4
    const/16 v1, 0x6c

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    goto :goto_0

    .line 1247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private visibleMainLayout()V
    .locals 3

    .prologue
    .line 1079
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->mainLayout:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1081
    .local v0, mainLayout:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v1, :cond_0

    .line 1082
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1083
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setClickable(Z)V

    .line 1085
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v1, :cond_1

    .line 1086
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1087
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    if-eqz v1, :cond_2

    .line 1088
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->setOnAOTShutterButtonListener(Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;)V

    .line 1090
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1091
    return-void
.end method

.method private visibleReviewImage()V
    .locals 11

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x1

    .line 1144
    const/4 v4, 0x0

    .line 1145
    .local v4, srcRotaion:I
    const/4 v2, 0x0

    .line 1146
    .local v2, mReviewWidth:I
    const/4 v1, 0x0

    .line 1147
    .local v1, mReviewHeight:I
    const/4 v3, 0x0

    .line 1149
    .local v3, reviewRotation:I
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->getWindowOrientation()I

    move-result v5

    .line 1150
    .local v5, windowOrientation:I
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getWindowOrientation :  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    const/4 v0, 0x0

    .line 1154
    .local v0, isMirrorEffect:Z
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->initializeReviewImageBitmap()V

    .line 1156
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->mStartOrientation:I
    invoke-static {v6}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->access$2(Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;)I

    move-result v4

    .line 1158
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mTexture:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    .line 1159
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mTexture:Landroid/view/TextureView;

    invoke-virtual {v6}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    .line 1161
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setting size mReviewWidth : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "setting size mReviewHeight :  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "srcRotation :  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->getInitialOrientation(I)I

    move-result v6

    sub-int v3, v4, v6

    .line 1167
    if-gez v3, :cond_0

    .line 1168
    add-int/lit16 v6, v3, 0x168

    rem-int/lit16 v3, v6, 0x168

    .line 1171
    :cond_0
    iget v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    if-nez v6, :cond_3

    .line 1172
    const/4 v0, 0x0

    .line 1174
    rem-int/lit16 v6, v3, 0xb4

    if-eqz v6, :cond_1

    .line 1175
    add-int/lit16 v6, v3, 0xb4

    rem-int/lit16 v3, v6, 0x168

    .line 1186
    :cond_1
    :goto_0
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reviewRotation :  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->getLastCaptureUri()Landroid/net/Uri;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->getRealPathFromURI(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v1, v3, v0}, Lcom/pantech/app/vegacamera/util/Util;->MakeBitmap(Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    .line 1191
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    .line 1192
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mReviewBitmap.getWidth() :  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    sget-object v6, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mReviewBitmap.getHeight() :  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int v7, v2, v7

    div-int/lit8 v7, v7, 0x2

    .line 1196
    iget-object v8, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sub-int v8, v1, v8

    div-int/lit8 v8, v8, 0x2

    .line 1195
    invoke-virtual {v6, v7, v8}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setPosition(II)V

    .line 1197
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1198
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    invoke-virtual {v6, v9}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setAnimationEffect(Z)V

    .line 1199
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setVisibility(I)V

    .line 1202
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->resumeAudioPlay()V

    .line 1204
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1205
    iget-object v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v10, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1206
    return-void

    .line 1178
    :cond_3
    iget v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    if-ne v6, v9, :cond_1

    .line 1179
    const/4 v0, 0x1

    .line 1181
    rem-int/lit8 v6, v5, 0x2

    if-nez v6, :cond_1

    .line 1182
    add-int/lit16 v6, v3, 0xb4

    rem-int/lit16 v3, v6, 0x168

    goto/16 :goto_0
.end method


# virtual methods
.method public CameraErrorCbNotify(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 1409
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    .line 1410
    return-void
.end method

.method public closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 539
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->removeMessages()V

    .line 541
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->stopPreview()V

    .line 543
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 545
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;->setCbListener(Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;)V

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->releaseAOT()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    iput-object v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    .line 552
    const/4 v1, 0x0

    sput-boolean v1, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->CameraStarted:Z

    .line 554
    :cond_0
    return-void

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, e:Ljava/lang/NoSuchMethodError;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    goto :goto_0
.end method

.method public createContentView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 228
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]createContentView"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->aot_camera_preview:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mTexture:Landroid/view/TextureView;

    .line 230
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mTexture:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 232
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 233
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    .line 235
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->aot_switchBtn:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 236
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setFocusable(Z)V

    .line 238
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setFocusableInTouchMode(Z)V

    .line 240
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->aot_flashBtn:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 241
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setFocusable(Z)V

    .line 243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setFocusableInTouchMode(Z)V

    .line 245
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->aot_shutterIcon:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShuttericon:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 247
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->aot_shutterBtn:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    .line 248
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->setOnAOTShutterButtonListener(Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;)V

    .line 249
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->setFocusable(Z)V

    .line 250
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->setFocusableInTouchMode(Z)V

    .line 252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->camera_review_image:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setFocusable(Z)V

    .line 254
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReviewImageView:Lcom/pantech/app/vegacamera/aot/BitmapImageView;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setFocusableInTouchMode(Z)V

    .line 255
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->initializeReviewImageBitmap()V

    .line 257
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->enable()V

    .line 260
    return-void
.end method

.method public destoryAllView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mTexture:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mTexture:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 265
    :cond_0
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mTexture:Landroid/view/TextureView;

    .line 267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    :cond_1
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSwitchBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 271
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_2
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFlashBtn:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    if-eqz v0, :cond_3

    .line 276
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTShutterButton;->setOnAOTShutterButtonListener(Lcom/pantech/app/vegacamera/aot/AOTShutterButton$OnAOTShutterButtonListener;)V

    .line 277
    :cond_3
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mShutterBtn:Lcom/pantech/app/vegacamera/aot/AOTShutterButton;

    .line 279
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContentResolver:Landroid/content/ContentResolver;

    .line 280
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    .line 282
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->initializeReviewImageBitmap()V

    .line 284
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    if-eqz v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->disable()V

    .line 286
    :cond_4
    iput-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationListener:Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;

    .line 287
    return-void
.end method

.method public getAOTCameraView()Landroid/view/View;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    return-object v0
.end method

.method public onAOTShutterButtonClick(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;)V
    .locals 4
    .parameter "b"

    .prologue
    .line 1390
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]onAOTShutterButtonClick"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPausing:Z

    if-eqz v0, :cond_1

    .line 1405
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->canTakePicture()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1396
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[AOTCamera] Not enough space or storage not ready. remaining = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPicturesRemaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1399
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-nez v0, :cond_0

    .line 1402
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->onTopButtonClick(Z)V

    .line 1403
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1404
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->doSnap()V

    goto :goto_0
.end method

.method public onAOTShutterButtonFocus(Lcom/pantech/app/vegacamera/aot/AOTShutterButton;Z)V
    .locals 3
    .parameter "b"
    .parameter "pressed"

    .prologue
    const/4 v2, 0x2

    .line 1377
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]onAOTShutterButtonFocus"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPausing:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I

    if-ne v0, v2, :cond_1

    .line 1386
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    if-nez v0, :cond_0

    .line 1384
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I

    if-eq v0, v2, :cond_0

    .line 1385
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->doFocus(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 981
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mFocusState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-void

    .line 984
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->aot_switchBtn:I

    if-ne v0, v1, :cond_2

    .line 985
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 986
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->switchCameraID()V

    goto :goto_0

    .line 987
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->aot_flashBtn:I

    if-ne v0, v1, :cond_0

    .line 988
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->setFlashMode()V

    goto :goto_0
.end method

.method public onCreateCamera()V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]OnCreateCamera()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetBatteryLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 211
    const/16 v0, 0x68

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V

    .line 225
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->createContentView()V

    .line 216
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->_CreateConfiguration()V

    .line 218
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraFeatures;->Initialize(Landroid/content/Context;)V

    .line 219
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->checkStorage()V

    .line 220
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->createIntentFilter()V

    .line 223
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->checkFotaDevLocked()V

    .line 224
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->registerFotaDevObserver()V

    goto :goto_0
.end method

.method public onDestroyCamera()V
    .locals 2

    .prologue
    .line 435
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera] OnDestroyCamera()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->removeMessages()V

    .line 437
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->closeCamera()V

    .line 438
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->_DestroyVolatileData()V

    .line 439
    return-void
.end method

.method public onMediaScannerConnected()V
    .locals 3

    .prologue
    .line 1322
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera] onMediaScannerConnected"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->lastFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    :cond_0
    return-void
.end method

.method public onPauseCamera()V
    .locals 2

    .prologue
    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPausing:Z

    .line 423
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDidRegister:Z

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 426
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDidRegister:Z

    .line 428
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->resumeAudioPlay()V

    .line 429
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->unregisterFotaDevObserver()V

    .line 431
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->destoryAllView()V

    .line 432
    return-void
.end method

.method public onResumeCamera()V
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]OnResumeCamera()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPausing:Z

    .line 418
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter "path"
    .parameter "uri"

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mScannerConnection:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 1337
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mImageSaver:Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/aot/AOTCamera$ImageSaver;->setLastCaptureUri(Landroid/net/Uri;)V

    .line 1338
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.pantech.app.vegacamera.NEW_PICTURE"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1340
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1342
    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1352
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]onSurfaceTextureAvailable"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1354
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->startCamera()V

    .line 1355
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .parameter "surface"

    .prologue
    .line 1359
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]onSurfaceTextureDestroyed"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1360
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1361
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1366
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "[AOTCamera]onSurfaceTextureSizeChanged"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1368
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "surface"

    .prologue
    .line 1372
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1373
    return-void
.end method

.method public removeMessages()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 443
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 444
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 445
    return-void
.end method

.method public restartPreview()V
    .locals 2

    .prologue
    .line 609
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "restartPreview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->stopPreview()V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 615
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    :cond_1
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAOTCameraView(Lcom/pantech/app/vegacamera/aot/AOTLayout;)V
    .locals 0
    .parameter "rootview"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    .line 199
    return-void
.end method

.method public startPreview()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 557
    sget-object v4, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v5, "[AOTCamera]startPreview"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPausing:Z

    if-eqz v4, :cond_1

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v4, :cond_0

    .line 565
    iget v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraID:I

    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 566
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getDisplayRotation()I

    move-result v0

    .line 570
    .local v0, degree:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v4, v6, :cond_3

    .line 571
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v3, v4, 0x168

    .line 572
    .local v3, result:I
    rsub-int v4, v3, 0x168

    rem-int/lit16 v3, v4, 0x168

    .line 577
    :goto_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewCallback:Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 578
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 579
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-virtual {v4, p0}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;->setCbListener(Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;)V

    .line 581
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 583
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->setParameters()V

    .line 586
    :try_start_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_2
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z

    if-eqz v4, :cond_2

    .line 592
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->stopPreview()V

    .line 596
    :cond_2
    :try_start_1
    sget-object v4, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v5, "[AOTCamera]mCameraDevice.startPreview()"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 603
    :goto_3
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z

    .line 604
    iput v6, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I

    .line 605
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mRootView:Lcom/pantech/app/vegacamera/aot/AOTLayout;

    invoke-virtual {v4, v6}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setTouchEnabled(Z)V

    goto :goto_0

    .line 574
    .end local v3           #result:I
    :cond_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v3, v4, 0x168

    .restart local v3       #result:I
    goto :goto_1

    .line 587
    :catch_0
    move-exception v1

    .line 588
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 598
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 599
    .local v2, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->closeCamera()V

    .line 600
    sget-object v4, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v5, "[AOTCamera]startPreview fail"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 623
    sget-object v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 625
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->clearFocusState()V

    .line 627
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPreviewing:Z

    .line 630
    :cond_0
    return-void
.end method
