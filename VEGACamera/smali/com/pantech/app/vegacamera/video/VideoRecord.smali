.class public abstract Lcom/pantech/app/vegacamera/video/VideoRecord;
.super Lcom/pantech/app/vegacamera/video/VideoHashMap;
.source "VideoRecord.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/IOperInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;,
        Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;,
        Lcom/pantech/app/vegacamera/video/VideoRecord$Listener;,
        Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;,
        Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;,
        Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;,
        Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;,
        Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;
    }
.end annotation


# static fields
.field protected static final CAPTURE_BUTTON_TIMEOUT_LONG:J = 0xbb8L

.field protected static final CAPTURE_BUTTON_TIMEOUT_SHORT:J = 0x898L

.field private static final FIXED_VIDEO_FPS:I = 0x7530

.field private static final MAX_RECORDING_FILESIZE:J = 0xffc00000L

.field private static final MAX_VIDEO_DURATION_MSEC:I = 0x36ee80

.field protected static final MIN_RECORDING_TIMEOUT:J = 0x514L

.field private static final QVGA_BITRATE:J = 0x7d000L

.field private static final QVGA_WIDTH:I = 0x140

.field private static final RECORDING_ADJUST_PERCENT:I = 0x3b6

.field public static final RECORD_CANCEL:I = 0x0

.field private static final RECORD_SHORT_TO_SAVE:I = 0x1

.field private static final REC_SIZE_UPDATE_PERIOD_BIG:I = 0x23

.field private static final REC_SIZE_UPDATE_PERIOD_SMALL:I = 0x7

.field private static final REC_SIZE_UPDATE_SMALL_SIZE:I = 0x800


# instance fields
.field public RecordingCanceled:Z

.field private TAG:Ljava/lang/String;

.field private bAeLockSupported:Z

.field private bAwbLockSupported:Z

.field private bFocusAreaSupported:Z

.field private bMeteringAreaSupported:Z

.field private flashEntryValue:Ljava/lang/String;

.field private iJpegRotation:I

.field protected iPreviewHeight:I

.field protected iPreviewWidth:I

.field private isflashChanged:Z

.field private location:Landroid/location/Location;

.field protected mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

.field protected mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field private final mAutoFocusCallback:Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;

.field private mCaptureTimeLapse:Z

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mContentValues:Landroid/content/ContentValues;

.field private mCurrentUri:Landroid/net/Uri;

.field protected final mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

.field protected final mHandler:Landroid/os/Handler;

.field protected mMediaRecorder:Landroid/media/MediaRecorder;

.field protected final mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;

.field protected mOrientationCompensation:I

.field protected mOrientationHint:I

.field protected mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

.field protected mProfile:Landroid/media/CamcorderProfile;

.field public mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

.field protected mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field protected mRootView:Landroid/view/View;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mTakingPicture:Z

.field private mTimeBetweenTimeLapseFrameCaptureMs:I

.field private mTimeLapseEffect:I

.field protected mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field protected mVideoHashMap:Lcom/pantech/app/vegacamera/video/VideoHashMap;

.field public mVideoOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

.field protected maxFileSize:J

.field protected maxVideoDuration_Ms:I

.field private max_mms_recording_size:J

.field private mediaScannerConn:Landroid/media/MediaScannerConnection;

.field protected recSizeUpdateCount:I

.field private recordStartdone:Z

.field protected recordSync:Ljava/lang/Object;

.field protected recordingSizePrev:I

.field private recordingTimeMs:J

.field protected requestedSizeLimit:J

.field protected sCurrentFileName:Ljava/lang/String;

.field protected sFileName:Ljava/lang/String;

.field private tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;

.field private tStartRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;

.field private tStopRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;

.field protected updateRecordTimeCount:I

.field private videoRecordViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoHashMap;-><init>()V

    .line 67
    const-string v0, "VideoRecord"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 71
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRootView:Landroid/view/View;

    .line 72
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 73
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    .line 74
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentResolver:Landroid/content/ContentResolver;

    .line 75
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentValues:Landroid/content/ContentValues;

    .line 76
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 77
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 78
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 79
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCurrentUri:Landroid/net/Uri;

    .line 81
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    .line 82
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;

    .line 83
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;

    .line 84
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStopRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;

    .line 85
    iput v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    .line 86
    iput v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    .line 87
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->sFileName:Ljava/lang/String;

    .line 88
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;

    .line 89
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    .line 93
    iput v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    .line 94
    iput v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationCompensation:I

    .line 95
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingTimeMs:J

    .line 97
    new-instance v0, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    .line 98
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;

    .line 99
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoHashMap:Lcom/pantech/app/vegacamera/video/VideoHashMap;

    .line 100
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingStartTime:J

    .line 101
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingTimeCountsDown:Z

    .line 103
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->max_mms_recording_size:J

    .line 104
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordSync:Ljava/lang/Object;

    .line 107
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    .line 108
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    .line 109
    iput v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeLapseEffect:I

    .line 110
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 111
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTakingPicture:Z

    .line 113
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->requestedSizeLimit:J

    .line 114
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->RecordingCanceled:Z

    .line 115
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    .line 116
    iput v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iJpegRotation:I

    .line 117
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 118
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;

    .line 120
    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->flashEntryValue:Ljava/lang/String;

    .line 121
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->isflashChanged:Z

    .line 122
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordStartdone:Z

    .line 123
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bAeLockSupported:Z

    .line 124
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bAwbLockSupported:Z

    .line 125
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bFocusAreaSupported:Z

    .line 126
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bMeteringAreaSupported:Z

    .line 66
    return-void
.end method

.method private _CreateName(J)Ljava/lang/String;
    .locals 5
    .parameter "dateTaken"

    .prologue
    .line 1803
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v3, "[VideoRecord] _CreateName()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1805
    .local v0, date:Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->video_file_name_format:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1806
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

.method private _GetLocation()V
    .locals 1

    .prologue
    .line 2214
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    .line 2215
    return-void
.end method

.method private _GotoQuickview()V
    .locals 5

    .prologue
    .line 325
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_goto_viewer"

    .line 326
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_goto_viewer_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 325
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, mSaveAfterView:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoRecord] _GotoQuickview is skipped when IsGallerySecretMode"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->GotoQuickView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _IgnoreWB(Landroid/hardware/Camera$Parameters;)Z
    .locals 6
    .parameter "param"

    .prologue
    .line 1122
    const/4 v1, 0x0

    .line 1123
    .local v1, ret:Z
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_mode_hdr"

    .line 1124
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_mode_hdr_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1123
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    .local v0, hdr:Ljava/lang/String;
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1126
    const/4 v1, 0x1

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[VideoRecord] _IgnoreWB , HDR : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    return v1
.end method

.method private _InitVideoRecordFlash()V
    .locals 3

    .prologue
    .line 1889
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v1

    const-string v2, "pref_flash_mode_camera"

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    .line 1890
    .local v0, flashpreference:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->flashEntryValue:Ljava/lang/String;

    .line 1891
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1892
    const-string v1, "off"

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 1896
    :goto_0
    return-void

    .line 1894
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->flashEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _InitializeAfterDeviceOpen()V
    .locals 3

    .prologue
    .line 1955
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoRecord] _InitializeAfterDeviceOpen mRecordLayoutControl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1957
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->Start()V

    .line 1958
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->OnOrientationChanged(I)V

    .line 1959
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->InitFocusParm(Landroid/hardware/Camera$Parameters;)V

    .line 1960
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetRecordingOrientation()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->SetFocusPreview(Landroid/view/View;I)V

    .line 1962
    :cond_0
    return-void
.end method

.method private _InitializeCapabilities()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _InitializeCapabilities"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bFocusAreaSupported:Z

    .line 603
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bMeteringAreaSupported:Z

    .line 604
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsAELockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bAeLockSupported:Z

    .line 605
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsAWBLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bAwbLockSupported:Z

    .line 607
    return-void
.end method

.method private _LayoutOpen()V
    .locals 2

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->Start()V

    .line 1951
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->OnOrientationChanged(I)V

    .line 1952
    return-void
.end method

.method private _MediaRecorderStop()V
    .locals 3

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _MediaRecorderStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1812
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1814
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1815
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 1811
    :cond_0
    monitor-exit v1

    .line 1818
    return-void

    .line 1811
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private _MediaScannerConnect()V
    .locals 4

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_MediaScannerDisconnect()V

    .line 937
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MediaScannerConnection.scanFile : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x0

    .line 940
    new-instance v3, Lcom/pantech/app/vegacamera/video/VideoRecord$2;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/video/VideoRecord$2;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    .line 939
    invoke-static {v0, v1, v2, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 948
    return-void
.end method

.method private _ReleaseHandler()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 402
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 403
    return-void
.end method

.method private _ReleaseMediaRecorder()V
    .locals 2

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _ReleaseMediaRecorder()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1823
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1824
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1825
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1822
    :cond_0
    monitor-exit v1

    .line 1829
    return-void

    .line 1822
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private _SetAutoExposureLockIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1034
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoRecord] _SetAutoExposureLockIfSupported(), bAeLockSupported == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bAeLockSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_0
    return-void
.end method

.method private _SetAutoWhiteBalanceLockIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoRecord] _SetAutoExposureLockIfSupported(), bAwbLockSupported == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bAwbLockSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    return-void
.end method

.method private _SetFocusAreasIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoRecord] _SetFocusAreasIfSupported(), bFocusAreaSupported ==  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bFocusAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1056
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusArea()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

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
    .line 1068
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoRecord] _SetMeteringAreasIfSupported(), bMeteringAreaSupported ==  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bMeteringAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->bMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1072
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getMeteringArea()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getMeteringArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getMeteringArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method private _SetTimeLapse()V
    .locals 12

    .prologue
    const/16 v11, 0x3e8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 639
    const/4 v1, 0x0

    .line 640
    .local v1, quality:I
    const/4 v4, 0x0

    .line 641
    .local v4, timeLapseFrameCaptureMs:I
    const/4 v3, 0x0

    .line 644
    .local v3, timeLapseEffect:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v5

    const-string v6, "pref_mode_video_timelapse"

    .line 645
    iget-object v7, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v8, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_extraction_default:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 644
    invoke-virtual {v5, v6, v7}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, timeLapse:Ljava/lang/String;
    const-string v0, "none"

    .line 648
    .local v0, effect:Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v5, :cond_0

    .line 649
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v5, Landroid/media/CamcorderProfile;->quality:I

    .line 651
    :cond_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "_SetTimeLapse()timeLapse "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    const-string v5, "300"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 653
    const/16 v4, 0x12c

    .line 666
    :goto_0
    const-string v5, "tiltshift"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 667
    const/4 v3, 0x1

    .line 672
    :cond_1
    :goto_1
    iget v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeLapseEffect:I

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_b

    .line 673
    if-nez v3, :cond_9

    .line 674
    iput v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 675
    iput v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeLapseEffect:I

    .line 705
    :goto_2
    iget v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v5, :cond_d

    .line 706
    iput-boolean v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    .line 713
    :goto_3
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_e

    if-ge v1, v11, :cond_e

    .line 714
    add-int/lit16 v1, v1, 0x3e8

    .line 715
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[VideoRecord] setTimeLapse()"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_2
    :goto_4
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v5

    invoke-static {v5, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    .line 720
    return-void

    .line 654
    :cond_3
    const-string v5, "500"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 655
    const/16 v4, 0x1f4

    .line 656
    goto :goto_0

    :cond_4
    const-string v5, "1000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 657
    const/16 v4, 0x3e8

    .line 658
    goto :goto_0

    :cond_5
    const-string v5, "3000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 659
    const/16 v4, 0xbb8

    .line 660
    goto :goto_0

    :cond_6
    const-string v5, "5000"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 661
    const/16 v4, 0x1388

    .line 662
    goto :goto_0

    .line 663
    :cond_7
    const/4 v4, 0x0

    goto :goto_0

    .line 668
    :cond_8
    const-string v5, "none"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 669
    const/4 v3, 0x0

    goto :goto_1

    .line 681
    :cond_9
    if-nez v4, :cond_a

    .line 682
    iput v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 683
    iput v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeLapseEffect:I

    goto :goto_2

    .line 690
    :cond_a
    iput v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 691
    iput v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeLapseEffect:I

    goto :goto_2

    .line 693
    :cond_b
    iget v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeLapseEffect:I

    if-nez v5, :cond_c

    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    if-nez v5, :cond_c

    if-ne v3, v10, :cond_c

    .line 694
    const/16 v5, 0x12c

    iput v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 695
    iput v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeLapseEffect:I

    goto/16 :goto_2

    .line 701
    :cond_c
    iput v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeBetweenTimeLapseFrameCaptureMs:I

    .line 702
    iput v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeLapseEffect:I

    goto/16 :goto_2

    .line 708
    :cond_d
    iput-boolean v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    goto/16 :goto_3

    .line 716
    :cond_e
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    if-nez v5, :cond_2

    if-le v1, v11, :cond_2

    .line 717
    add-int/lit16 v1, v1, -0x3e8

    goto :goto_4
.end method

.method private _SetVideoAppData()V
    .locals 5

    .prologue
    const/16 v4, 0x7530

    .line 1254
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoRecord] _SetVideoAppData()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    iget v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1258
    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1259
    .local v0, videoSize:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "video-size"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_SetVideoAppData video-size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 1264
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    iget v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1265
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_SetVideoAppData setPictureSize:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 1269
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    .line 1270
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "_SetVideoAppData setZSLMode OFF"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1273
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "_SetVideoAppData setPreviewFpsRange FIXED_VIDEO_FPS 30"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "_SetVideoAppData pantech-ipl-mode pantech-ipl-off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1278
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "video-flip"

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetVideoFlip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_SetVideoAppData video-flip "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetVideoFlip()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    return-void
.end method

.method private _ShowErrorAndFinish(II)V
    .locals 4
    .parameter "stateId"
    .parameter "dispTime"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] ShowErrorAndFinish() :: stateId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 408
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 411
    :cond_0
    return-void
.end method

.method private _StartPreview()Z
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 763
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[VideoRecord] _StartPreview mOneShotPreviewCallback: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v5

    if-eqz v5, :cond_0

    .line 766
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopPreview()V

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetDesiredPreviewSize()V

    .line 771
    invoke-virtual {p0, v8, v9}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetVideoParameters(J)V

    .line 772
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    const-string v6, "continuous-video"

    invoke-virtual {p0, v5, v6}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 774
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, v5, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    .line 776
    .local v2, screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v5, :cond_1

    .line 777
    iget v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    iget v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    invoke-virtual {v2, v5, v6}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    .line 778
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->NotifyScreenNailChanged()V

    .line 779
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->acquireSurfaceTexture()V

    .line 780
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 784
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v5

    const/16 v6, 0x5a

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 785
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 786
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startPreview()V

    .line 787
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/video/VideoRecord$OneShotPreviewCallback;

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 804
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v5, "[VideoRecord] after startPreview"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p0, v8, v9}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetVideoParameters(J)V

    .line 807
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 808
    :goto_0
    return v3

    .line 788
    :catch_0
    move-exception v0

    .line 790
    .local v0, e:Ljava/io/IOException;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[VideoRecord] setPreviewTexture IOException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "[VideoRecord] set preview texture failed"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 792
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 793
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[VideoRecord] startPreview RuntimeException : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_CloseCamera()V

    .line 795
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    move v3, v4

    .line 796
    goto :goto_0

    .line 797
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v1

    .line 798
    .local v1, ex:Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[VideoRecord] startPreview Throwable : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_CloseCamera()V

    .line 800
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    move v3, v4

    .line 801
    goto :goto_0
.end method

.method private _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 1184
    const-string v0, "pantech-hdr-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[Video] is not supported hdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    :goto_0
    return-void

    .line 1187
    :cond_0
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersPreference()V
    .locals 0

    .prologue
    .line 1083
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetAutoExposureLockIfSupported()V

    .line 1084
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetAutoWhiteBalanceLockIfSupported()V

    .line 1085
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetFocusAreasIfSupported()V

    .line 1087
    return-void
.end method

.method private _UpdateVideoParametersBrightness()V
    .locals 5

    .prologue
    .line 1096
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_ev"

    .line 1097
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_ev_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1096
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1099
    .local v0, mEV:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "luma-adaptation"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    return-void
.end method

.method private _UpdateVideoParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 1142
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_group"

    .line 1143
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_group_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1142
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1144
    .local v1, mEffectGroup:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_tone"

    .line 1145
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1144
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, colorEffect:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "pref_effect_color_mono"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1148
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_mono"

    .line 1149
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1148
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1158
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1159
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1160
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[VideoRecord] _UpdateVideoParametersColorEffect color effect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1163
    :cond_1
    return-void

    .line 1150
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "pref_effect_color_sepia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1151
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_sepia"

    .line 1152
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1151
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    const-string v2, "pref_effect_color_aqua"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1154
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_aqua"

    .line 1155
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1154
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private _UpdateVideoParametersColorEffectOff(Landroid/hardware/Camera$Parameters;)V
    .locals 4
    .parameter "param"

    .prologue
    .line 1132
    const-string v0, "none"

    .line 1133
    .local v0, colorEffect:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1135
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] _UpdateVideoParametersColorEffectOff color effect = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1137
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "before startPreview set colorEffect none"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_0
    return-void
.end method

.method private _UpdateVideoParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1192
    const-string v0, "video-hdr-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[Video] is not supported hdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    :goto_0
    return-void

    .line 1195
    :cond_0
    const-string v0, "recording-hint"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string v0, "video-hdr"

    .line 1198
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_mode_hdr"

    .line 1199
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_mode_hdr_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1198
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1196
    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateVideoParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 1103
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_wb"

    .line 1104
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_setting_wb_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1103
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1106
    .local v1, whiteBalance:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_IgnoreWB(Landroid/hardware/Camera$Parameters;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    const-string v1, "auto"

    .line 1110
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1111
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1112
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[VideoRecord]  _UpdateVideoParametersWhiteBalance mWhiteBalance = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    :cond_1
    :goto_0
    return-void

    .line 1114
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1115
    .local v0, mWhiteBalance:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1116
    const-string v2, "auto"

    goto :goto_0
.end method

.method private _UpdateVideoParametersZoom()V
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 1093
    :cond_0
    return-void
.end method

.method private _WaitPreviewStartUpThread()V
    .locals 2

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _WaitPreviewStartUpThread()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->cancel()V

    .line 1836
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->join()V

    .line 1837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1842
    :cond_0
    :goto_0
    return-void

    .line 1839
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 1954
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_InitializeAfterDeviceOpen()V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/video/VideoRecord;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 1707
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/video/VideoRecord;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 405
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_ShowErrorAndFinish(II)V

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_InitializeCapabilities()V

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/video/VideoRecord;)Z
    .locals 1
    .parameter

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StartPreview()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 1809
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_MediaRecorderStop()V

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 1820
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_ReleaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GotoQuickview()V

    return-void
.end method

.method private getAvailableFileSize()J
    .locals 8

    .prologue
    const-wide/32 v6, 0x1e00000

    const/4 v5, 0x1

    .line 1547
    invoke-static {v5}, Lcom/pantech/app/vegacamera/util/Storage;->GetAvailableStorage(Z)J

    move-result-wide v2

    sub-long v0, v2, v6

    .line 1548
    .local v0, fileSize:J
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[VideoRecord] getAvailableStorage "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/pantech/app/vegacamera/util/Storage;->GetAvailableStorage(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1549
    const-string v4, " - LOW_STORAGE_THRESHOLD "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = maxFileSize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1548
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1550
    return-wide v0
.end method

.method private updateRecordingTime()V
    .locals 30

    .prologue
    .line 1710
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 1764
    :goto_0
    return-void

    .line 1713
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 1714
    .local v15, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingStartTime:J

    move-wide/from16 v25, v0

    sub-long v5, v15, v25

    .line 1718
    .local v5, delta:J
    const-wide/32 v25, 0x360420

    cmp-long v25, v5, v25

    if-ltz v25, :cond_6

    const/4 v4, 0x1

    .line 1720
    .local v4, countdownRemainingTime:Z
    :goto_1
    const-wide/16 v25, 0x3e8

    const-wide/16 v27, 0x3e8

    rem-long v27, v5, v27

    sub-long v13, v25, v27

    .line 1722
    .local v13, next_update_delay:J
    if-eqz v4, :cond_7

    .line 1723
    const-wide/16 v25, 0x0

    const-wide/32 v27, 0x36ee80

    sub-long v27, v27, v5

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1724
    const-wide/16 v25, 0x3e7

    add-long v25, v25, v5

    const-wide/16 v27, 0x3e8

    div-long v21, v25, v27

    .line 1729
    .local v21, seconds:J
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    move-object/from16 v25, v0

    new-instance v26, Ljava/lang/StringBuilder;

    const-string v27, "updateRecordingTime : "

    invoke-direct/range {v26 .. v27}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    const-wide/16 v25, 0x3c

    div-long v10, v21, v25

    .line 1731
    .local v10, minutes:J
    const-wide/16 v25, 0x3c

    div-long v7, v10, v25

    .line 1732
    .local v7, hours:J
    const-wide/16 v25, 0x3c

    mul-long v25, v25, v7

    sub-long v17, v10, v25

    .line 1733
    .local v17, remainderMinutes:J
    const-wide/16 v25, 0x3c

    mul-long v25, v25, v10

    sub-long v19, v21, v25

    .line 1735
    .local v19, remainderSeconds:J
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    .line 1736
    .local v23, secondsString:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 1737
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1739
    :cond_1
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 1740
    .local v12, minutesString:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    .line 1741
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1743
    :cond_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1745
    .local v24, text:Ljava/lang/String;
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    .line 1746
    .local v9, hoursString:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_3

    .line 1747
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "0"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1749
    :cond_3
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1752
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingStartTime:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-eqz v25, :cond_5

    .line 1753
    sget v3, Lcom/pantech/app/vegacamera/R$color;->recording_size_normal_text:I

    .line 1754
    .local v3, color:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingTimeCountsDown:Z

    move/from16 v25, v0

    move/from16 v0, v25

    if-eq v0, v4, :cond_4

    .line 1757
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingTimeCountsDown:Z

    .line 1758
    if-eqz v4, :cond_8

    sget v3, Lcom/pantech/app/vegacamera/R$color;->recording_time_remaining_text:I

    .line 1760
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 1761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v3}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->UpdateRecordingTime(Ljava/lang/String;I)V

    .line 1763
    .end local v3           #color:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x16

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1718
    .end local v4           #countdownRemainingTime:Z
    .end local v7           #hours:J
    .end local v9           #hoursString:Ljava/lang/String;
    .end local v10           #minutes:J
    .end local v12           #minutesString:Ljava/lang/String;
    .end local v13           #next_update_delay:J
    .end local v17           #remainderMinutes:J
    .end local v19           #remainderSeconds:J
    .end local v21           #seconds:J
    .end local v23           #secondsString:Ljava/lang/String;
    .end local v24           #text:Ljava/lang/String;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1726
    .restart local v4       #countdownRemainingTime:Z
    .restart local v13       #next_update_delay:J
    :cond_7
    const-wide/16 v25, 0x3e8

    div-long v21, v5, v25

    .restart local v21       #seconds:J
    goto/16 :goto_2

    .line 1758
    .restart local v3       #color:I
    .restart local v7       #hours:J
    .restart local v9       #hoursString:Ljava/lang/String;
    .restart local v10       #minutes:J
    .restart local v12       #minutesString:Ljava/lang/String;
    .restart local v17       #remainderMinutes:J
    .restart local v19       #remainderSeconds:J
    .restart local v23       #secondsString:Ljava/lang/String;
    .restart local v24       #text:Ljava/lang/String;
    :cond_8
    sget v3, Lcom/pantech/app/vegacamera/R$color;->recording_time_elapsed_text:I

    goto :goto_3
.end method


# virtual methods
.method public abstract AbsInflateParentLayout()V
.end method

.method public abstract AbsRecordingStopComplete()V
.end method

.method public ChangeVideoRecordToCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] ChangeVideoRecordToCamera()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 360
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 362
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->Stop()V

    .line 364
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_DestroyLayoutInstance()V

    .line 366
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->AbsInflateParentLayout()V

    .line 368
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopPreview()V

    .line 378
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto :goto_0
.end method

.method public CheckFileSize(Lcom/pantech/app/vegacamera/ActivityBase;)Z
    .locals 10
    .parameter "activity"

    .prologue
    .line 1498
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1499
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1500
    .local v2, myExtras:Landroid/os/Bundle;
    const/4 v6, 0x0

    iput v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxVideoDuration_Ms:I

    .line 1501
    if-eqz v2, :cond_4

    const-string v6, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1502
    const-string v6, "android.intent.extra.durationLimit"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    iput v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxVideoDuration_Ms:I

    .line 1509
    :goto_0
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->requestedSizeLimit:J

    .line 1511
    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    .line 1512
    :cond_0
    if-eqz v2, :cond_2

    .line 1513
    const-string v6, "output"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 1514
    .local v3, saveUri:Landroid/net/Uri;
    if-eqz v3, :cond_1

    .line 1516
    :try_start_0
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentResolver:Landroid/content/ContentResolver;

    .line 1517
    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "rw"

    invoke-virtual {v6, v3, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1518
    iput-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCurrentUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    :cond_1
    :goto_1
    const-string v6, "size_from_composer"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1525
    .local v4, sizeFromComposer:J
    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[VideoRecord] initializeRecorder() sizeFromComposer : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 1527
    iput-wide v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->requestedSizeLimit:J

    .line 1528
    sget v6, Lcom/pantech/app/vegacamera/R$string;->mms_duration:I

    invoke-virtual {p1, v6}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxVideoDuration_Ms:I

    .line 1533
    .end local v3           #saveUri:Landroid/net/Uri;
    .end local v4           #sizeFromComposer:J
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->getAvailableFileSize()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxFileSize:J

    .line 1535
    iget-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->requestedSizeLimit:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    iget-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->requestedSizeLimit:J

    iget-wide v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxFileSize:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_6

    .line 1536
    iget-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->requestedSizeLimit:J

    iput-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxFileSize:J

    .line 1540
    :cond_3
    :goto_3
    iget-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxFileSize:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_7

    .line 1541
    const/4 v6, 0x0

    .line 1543
    :goto_4
    return v6

    .line 1504
    :cond_4
    const v6, 0x36ee80

    iput v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxVideoDuration_Ms:I

    goto/16 :goto_0

    .line 1519
    .restart local v3       #saveUri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 1521
    .local v0, ex:Ljava/io/FileNotFoundException;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1530
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    .restart local v4       #sizeFromComposer:J
    :cond_5
    const-string v6, "android.intent.extra.sizeLimit"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->requestedSizeLimit:J

    goto :goto_2

    .line 1537
    .end local v3           #saveUri:Landroid/net/Uri;
    .end local v4           #sizeFromComposer:J
    :cond_6
    iget-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxFileSize:J

    const-wide v8, 0xffc00000L

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 1538
    const-wide v6, 0xffc00000L

    iput-wide v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxFileSize:J

    goto :goto_3

    .line 1543
    :cond_7
    const/4 v6, 0x1

    goto :goto_4
.end method

.method public CloseVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 1554
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 1556
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1562
    :cond_0
    return-void

    .line 1557
    :catch_0
    move-exception v0

    .line 1558
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected Device_StartRecording()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->unlock()V

    .line 622
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->recordingStart()V

    .line 623
    return-void
.end method

.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    return-object v0
.end method

.method public Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 3
    .parameter "activity"
    .parameter "parent"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[Video] Init()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 269
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iput-object p2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRootView:Landroid/view/View;

    .line 270
    iput-object p3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 271
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordSync:Ljava/lang/Object;

    .line 272
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->RecordingCanceled:Z

    .line 273
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTakingPicture:Z

    .line 274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetSwipingEnabled(Z)V

    .line 276
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    new-instance v1, Lcom/pantech/app/vegacamera/video/VideoRecord$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/video/VideoRecord$1;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setRecordingListener(Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;)V

    .line 303
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_InitVideoRecordFlash()V

    .line 304
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->record:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->setVideoRecordViewGroup(Landroid/view/ViewGroup;)V

    .line 305
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_CreateLayoutInstance()V

    .line 306
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->EnterLightsOutMode(Landroid/view/Window;)V

    .line 307
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->InitializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 308
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view group count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->getVideoRecordViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->VideoRecordingOper()V

    .line 310
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_InitializeMiscControls()V

    .line 311
    return-void
.end method

.method public MetaDataCbNotify(ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "type"
    .parameter "rect"

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "MetaDataCbNotify"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFocusRelease()V

    .line 2347
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusData(ILandroid/graphics/Rect;)V

    .line 2348
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStart(I)V

    .line 2349
    return-void
.end method

.method public OnBackPressed()Z
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] OnBackPressed()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->isRecordStartdone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    const/4 v0, 0x1

    .line 417
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->OnBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public OnPause()V
    .locals 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 384
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopVideoRecording(Z)V

    .line 393
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_ReleaseHandler()V

    .line 394
    return-void
.end method

.method public OnSingleTapUp(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoRecord] OnSingleTapUp x:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2333
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2334
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnSingleTapUp(Landroid/view/View;II)V

    .line 2336
    :cond_0
    return-void
.end method

.method public OperFocus(I)V
    .locals 4
    .parameter "what"

    .prologue
    .line 2260
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2304
    :cond_0
    :goto_0
    return-void

    .line 2264
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 2300
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] OperFocus what:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2266
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoRecord] OperFocus AUTO_FOCUS"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "auto"

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z

    .line 2268
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/video/VideoRecord$AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_0

    .line 2272
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoRecord] OperFocus CANCEL_AUTO_FOCUS"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2275
    :catch_0
    move-exception v0

    .line 2276
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] OperFocus cancelAutoFocus failed() , RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2282
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoRecord] OperFocus START_FACE_DETECTION"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v1

    if-nez v1, :cond_0

    .line 2286
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 2291
    :pswitch_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoRecord] OperFocus STOP_FACE_DETECTION"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2292
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v1

    if-nez v1, :cond_0

    .line 2294
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2295
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopFaceDetection()V

    goto/16 :goto_0

    .line 2264
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
    .locals 2
    .parameter "what"

    .prologue
    .line 2133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] SetFocusOperHandler"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->OperFocus(I)V

    .line 2135
    return-void
.end method

.method public SetOperHandler(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 2009
    packed-switch p1, :pswitch_data_0

    .line 2023
    :goto_0
    return-void

    .line 2011
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopVideoRecording(Z)V

    goto :goto_0

    .line 2015
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopVideoRecording(Z)V

    goto :goto_0

    .line 2019
    :pswitch_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_TakeLiveSnapshot()V

    goto :goto_0

    .line 2009
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public SetOperHandler(II)V
    .locals 0
    .parameter "what"
    .parameter "count"

    .prologue
    .line 2005
    return-void
.end method

.method public SetOrientationChanged(I)V
    .locals 0
    .parameter "orientationCompensation"

    .prologue
    .line 2164
    iput p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationCompensation:I

    .line 2166
    return-void
.end method

.method public SetParameter(J)V
    .locals 3
    .parameter "what"

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetParameter( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetVideoParameters(J)V

    .line 1994
    return-void
.end method

.method public SetParameter(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1987
    return-void
.end method

.method public SetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1982
    return-void
.end method

.method public SetUpdateParameter(J)V
    .locals 3
    .parameter "what"

    .prologue
    .line 1998
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SetUpdateParameter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetVideoParameters(J)V

    .line 2000
    return-void
.end method

.method protected StartRecording()V
    .locals 5

    .prologue
    .line 611
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoRecord] mMediaRecorder.start()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoCamera] Could not start media recorder. "

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1c

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected UpdateRecordingFileSize(J)V
    .locals 27
    .parameter "recordingSize"

    .prologue
    .line 1601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v21

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1

    .line 1705
    :cond_0
    :goto_0
    return-void

    .line 1604
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 1607
    const-wide/16 v21, 0x0

    cmp-long v21, p1, v21

    if-lez v21, :cond_0

    .line 1608
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingStartTime:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-nez v21, :cond_2

    .line 1609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordingStartTime:J

    .line 1613
    :cond_2
    const/16 v21, 0xa

    shr-long v21, p1, v21

    move-wide/from16 v0, v21

    long-to-int v10, v0

    .line 1614
    .local v10, recordingSizeKB:I
    shr-int/lit8 v11, v10, 0xa

    .line 1616
    .local v11, recordingSizeMB:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/32 v23, 0x7d000

    cmp-long v21, v21, v23

    if-gtz v21, :cond_9

    const/16 v21, 0x800

    move/from16 v0, v21

    if-ge v10, v0, :cond_9

    .line 1617
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 1620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recSizeUpdateCount:I

    move/from16 v21, v0

    add-int/lit8 v22, v21, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->recSizeUpdateCount:I

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 1621
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->recSizeUpdateCount:I

    .line 1627
    :cond_3
    const-string v21, "%,7d KB"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 1650
    .local v19, sizeString:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "UpdateRecordingFileSize sizeString : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1652
    sget v9, Lcom/pantech/app/vegacamera/R$color;->recording_size_normal_text:I

    .line 1653
    .local v9, recordingSizeColor:I
    const/4 v8, 0x4

    .line 1654
    .local v8, mmsIconVisibility:I
    sget v7, Lcom/pantech/app/vegacamera/R$drawable;->camera_mms_icon:I

    .line 1656
    .local v7, mmsIconKind:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->max_mms_recording_size:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x0

    cmp-long v21, v21, v23

    if-lez v21, :cond_4

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "recordingSize ="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " , max_mms_recording_size :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->max_mms_recording_size:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v21, v0

    const/16 v22, 0x140

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_e

    .line 1659
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->max_mms_recording_size:J

    move-wide/from16 v21, v0

    cmp-long v21, p1, v21

    if-lez v21, :cond_c

    .line 1660
    sget v9, Lcom/pantech/app/vegacamera/R$color;->recording_size_normal_text:I

    .line 1661
    const/4 v8, 0x4

    .line 1676
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 1677
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingTimeMs:J

    move-wide/from16 v21, v0

    const/16 v23, 0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v24, v0

    div-int v23, v23, v24

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingTimeMs:J

    .line 1679
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingTimeMs:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3e8

    div-long v16, v21, v23

    .line 1680
    .local v16, seconds:J
    const-wide/16 v21, 0x3c

    div-long v4, v16, v21

    .line 1681
    .local v4, minutes:J
    const-wide/16 v21, 0x3c

    mul-long v21, v21, v4

    sub-long v14, v16, v21

    .line 1682
    .local v14, remainderSeconds:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingTimeMs:J

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3e8

    mul-long v23, v23, v16

    sub-long v21, v21, v23

    const-wide/16 v23, 0xa

    div-long v12, v21, v23

    .line 1684
    .local v12, remainderMilliseconds:J
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 1685
    .local v3, millisecondsString:Ljava/lang/String;
    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v18

    .line 1686
    .local v18, secondsString:Ljava/lang/String;
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 1688
    .local v6, minutesString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 1689
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "0"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1691
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 1692
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "0"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1694
    :cond_6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 1695
    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "0"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1698
    :cond_7
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1699
    .local v20, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    move-object/from16 v21, v0

    sget v22, Lcom/pantech/app/vegacamera/R$color;->recording_size_normal_text:I

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->UpdateRecordingTime(Ljava/lang/String;I)V

    .line 1702
    .end local v3           #millisecondsString:Ljava/lang/String;
    .end local v4           #minutes:J
    .end local v6           #minutesString:Ljava/lang/String;
    .end local v12           #remainderMilliseconds:J
    .end local v14           #remainderSeconds:J
    .end local v16           #seconds:J
    .end local v18           #secondsString:Ljava/lang/String;
    .end local v20           #text:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->UpdateRecordingSize(Ljava/lang/String;I)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v8, v7}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->UpdateRecordingMmsIcon(II)V

    goto/16 :goto_0

    .line 1629
    .end local v7           #mmsIconKind:I
    .end local v8           #mmsIconVisibility:I
    .end local v9           #recordingSizeColor:I
    .end local v19           #sizeString:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    move/from16 v21, v0

    if-nez v21, :cond_a

    .line 1632
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recSizeUpdateCount:I

    move/from16 v21, v0

    add-int/lit8 v22, v21, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->recSizeUpdateCount:I

    const/16 v22, 0x23

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 1633
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/video/VideoRecord;->recSizeUpdateCount:I

    .line 1640
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingSizePrev:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-le v11, v0, :cond_b

    .line 1641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "updateRecordingSize [Size] not skipped : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingSizePrev:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    iput v11, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingSizePrev:I

    .line 1648
    :cond_a
    const-string v21, "%,7d MB"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .restart local v19       #sizeString:Ljava/lang/String;
    goto/16 :goto_1

    .line 1644
    .end local v19           #sizeString:Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "updateRecordingSize [Size] skipped : "

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ","

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingSizePrev:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1662
    .restart local v7       #mmsIconKind:I
    .restart local v8       #mmsIconVisibility:I
    .restart local v9       #recordingSizeColor:I
    .restart local v19       #sizeString:Ljava/lang/String;
    :cond_c
    move-wide/from16 v0, p1

    long-to-double v0, v0

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->max_mms_recording_size:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fe999999999999aL

    mul-double v23, v23, v25

    cmpl-double v21, v21, v23

    if-lez v21, :cond_d

    .line 1663
    sget v7, Lcom/pantech/app/vegacamera/R$drawable;->camera_mms_icon_full:I

    .line 1664
    sget v9, Lcom/pantech/app/vegacamera/R$color;->recording_size_boundary_text:I

    .line 1665
    const/4 v8, 0x0

    .line 1666
    goto/16 :goto_2

    .line 1667
    :cond_d
    sget v9, Lcom/pantech/app/vegacamera/R$color;->recording_size_normal_text:I

    .line 1668
    const/4 v8, 0x0

    .line 1670
    goto/16 :goto_2

    .line 1671
    :cond_e
    sget v9, Lcom/pantech/app/vegacamera/R$color;->recording_size_normal_text:I

    .line 1672
    const/4 v8, 0x4

    goto/16 :goto_2
.end method

.method public VideoRecordingOper()V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_ReadVideoProfile()V

    .line 341
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;

    .line 342
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartPreviewThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartPreviewThread;->start()V

    .line 343
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetDesiredPreviewSize()V

    .line 344
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 345
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_OTHERS:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetVideoParameters(J)V

    .line 346
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "VideoRecordingOper width:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentResolver:Landroid/content/ContentResolver;

    .line 350
    :cond_0
    return-void
.end method

.method protected _CheckMMSRecordingSize()V
    .locals 3

    .prologue
    .line 1565
    const/4 v0, 0x0

    .line 1567
    .local v0, isMMSRec:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 1568
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->mms_size:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->max_mms_recording_size:J

    .line 1570
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1571
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->mms_duration:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxVideoDuration_Ms:I

    .line 1577
    const/4 v0, 0x1

    .line 1581
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_1

    .line 1582
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->quality:I

    sparse-switch v1, :sswitch_data_0

    .line 1594
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 1596
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->max_mms_recording_size:J

    .line 1598
    :cond_2
    return-void

    .line 1587
    :sswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->mms_size:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->max_mms_recording_size:J

    .line 1588
    const/4 v0, 0x1

    goto :goto_0

    .line 1582
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3ef -> :sswitch_0
    .end sparse-switch
.end method

.method protected _CloseCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 826
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _CloseCamera()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 829
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 830
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 832
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->release()V

    .line 834
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V

    .line 835
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 837
    :cond_0
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1941
    new-instance v0, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    .line 1943
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1944
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 1946
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 1947
    return-void
.end method

.method protected _CreateVideoPath()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x3e8

    .line 1771
    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v10, "[VideoRecord] _CreateVideoPath()"

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    .line 1773
    .local v0, dateTaken:J
    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_CreateName(J)Ljava/lang/String;

    move-result-object v7

    .line 1774
    .local v7, title:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".3gp"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1775
    .local v5, filename:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v2

    .line 1776
    .local v2, dirPath:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1777
    .local v4, filePath:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1779
    .local v6, resolution:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1780
    .local v3, directory:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1781
    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "make directory : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1783
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0xa

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1784
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1785
    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    const-string v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1787
    const-string v9, "date_added"

    div-long v10, v0, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1788
    const-string v9, "date_modified"

    div-long v10, v0, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1789
    const-string v9, "mime_type"

    const-string v10, "video/3gpp"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1790
    const-string v9, "_data"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    const-string v9, "resolution"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetLocation()V

    .line 1793
    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    if-eqz v9, :cond_1

    .line 1794
    const-string v9, "latitude"

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1795
    const-string v9, "longitude"

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1798
    :cond_1
    iput-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->sFileName:Ljava/lang/String;

    .line 1799
    iput-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentValues:Landroid/content/ContentValues;

    .line 1800
    return-void
.end method

.method _DeleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .parameter "fileName"

    .prologue
    .line 631
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] Deleting video "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 633
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] Could not delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_1
    return-void
.end method

.method protected _DestroyLayoutInstance()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1965
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _DestroyLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 1969
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1970
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->Release()V

    .line 1971
    iput-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    .line 1973
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view group count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->getVideoRecordViewGroup()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->getVideoRecordViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 1975
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->getVideoRecordViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1977
    :cond_2
    return-void
.end method

.method protected _DoReturnToCaller(Z)V
    .locals 5
    .parameter "valid"

    .prologue
    .line 1919
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1921
    .local v1, resultIntent:Landroid/content/Intent;
    if-eqz p1, :cond_1

    .line 1922
    const/4 v0, -0x1

    .line 1923
    .local v0, resultCode:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->getVideoRecordUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1928
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Video] _DoReturnToCaller resultCode:"

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

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2, v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(ILandroid/content/Intent;)V

    .line 1930
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1931
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    .line 1932
    :cond_0
    return-void

    .line 1925
    .end local v0           #resultCode:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #resultCode:I
    goto :goto_0
.end method

.method protected _FinishVideoRecord(Z)V
    .locals 2
    .parameter "bReturn"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "_FinishVideoRecord"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->CloseVideoFileDescriptor()V

    .line 316
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->Stop()V

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_DestroyLayoutInstance()V

    .line 319
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_StopPreview()V

    .line 320
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_ReleaseThreads()V

    .line 321
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_VideoRecordEnded(Z)V

    .line 322
    return-void
.end method

.method protected _GetAdjustedFileSize(JJ)J
    .locals 8
    .parameter "fileSize"
    .parameter "requestedFileSize"

    .prologue
    .line 1474
    sget-object v4, Lcom/pantech/app/vegacamera/video/VideoRecord;->VIDEOQUALITY_BITRATE_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x8

    int-to-long v2, v4

    .line 1477
    .local v2, fileSizeOf3Second:J
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_0

    .line 1481
    :cond_0
    const-wide/32 v4, 0x200000

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 1483
    const-wide/16 v4, 0x3b6

    mul-long/2addr v4, p1

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 1484
    .local v0, adjustedFileSize:J
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[VideoRecord] _GetAdjustedFileSize fileSize("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") / "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x5f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1485
    const-string v6, "% = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1484
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    :goto_0
    return-wide v0

    .line 1487
    .end local v0           #adjustedFileSize:J
    :cond_1
    add-long v0, p1, v2

    .line 1488
    .restart local v0       #adjustedFileSize:J
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[VideoRecord] _GetAdjustedFileSize fileSize("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") + 3 sec fileSize("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1489
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1488
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _GetDesiredPreviewSize()V
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _GetDesiredPreviewSize()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 760
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 730
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_1

    .line 731
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    .line 733
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    .line 734
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    .line 759
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoRecord] iPreviewWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iPreviewHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _GetRecordingOrientation()I
    .locals 4

    .prologue
    .line 1463
    const/4 v0, 0x0

    .line 1464
    .local v0, rotation:I
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1465
    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    rsub-int v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    .line 1469
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_GetRecordingOrientation rotation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    return v0

    .line 1467
    :cond_0
    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0
.end method

.method protected _GetVideoFlip()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1283
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    if-nez v1, :cond_0

    .line 1284
    const-string v1, "off"

    .line 1296
    :goto_0
    return-object v1

    .line 1286
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_mirror"

    .line 1287
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_mirror_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1286
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, str:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1290
    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    .line 1291
    :cond_1
    const-string v1, "flip-v"

    goto :goto_0

    .line 1293
    :cond_2
    const-string v1, "flip-h"

    goto :goto_0

    .line 1296
    :cond_3
    const-string v1, "off"

    goto :goto_0
.end method

.method protected _InitRecorder()Z
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1301
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v9, "[VideoRecord] _InitRecorder()"

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v8

    const-string v9, "pref_setting_voice_record"

    .line 1303
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v11, Lcom/pantech/app/vegacamera/R$string;->pref_setting_voice_record_default:I

    invoke-virtual {v10, v11}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1302
    invoke-virtual {v8, v9, v10}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1304
    .local v7, voiceRecord:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/temp.tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1324
    .local v6, tempFilePath:Ljava/lang/String;
    iput v12, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recSizeUpdateCount:I

    .line 1325
    iput v12, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingSizePrev:I

    .line 1326
    iput v12, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->updateRecordTimeCount:I

    .line 1328
    new-instance v8, Landroid/media/MediaRecorder;

    invoke-direct {v8}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1330
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "InitRecorder() GetDeviceState : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1333
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v13}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1335
    iget-boolean v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    if-eqz v8, :cond_1

    .line 1336
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1337
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setProfile:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const-wide v8, 0x408f400000000000L

    iget v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTimeBetweenTimeLapseFrameCaptureMs:I

    int-to-double v10, v10

    div-double v1, v8, v10

    .line 1340
    .local v1, setCaptureRate:D
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v1, v2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1341
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setCaptureRate:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    .end local v1           #setCaptureRate:D
    :goto_0
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v8, :cond_4

    .line 1381
    :try_start_0
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v9}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1382
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setOutputFile:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v10}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1393
    :goto_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxVideoDuration_Ms:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1394
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setMaxDuration:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxVideoDuration_Ms:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    iget-wide v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->maxFileSize:J

    iget-wide v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->requestedSizeLimit:J

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetAdjustedFileSize(JJ)J

    move-result-wide v3

    .line 1397
    .local v3, setMaxFileSize:J
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1398
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setMaxFileSize:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetRecordingOrientation()I

    move-result v5

    .line 1401
    .local v5, setOrientationHint:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v5}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1402
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setOrientationHint:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetLocation()V

    .line 1405
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    if-eqz v8, :cond_5

    .line 1406
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    invoke-virtual {v9}, Landroid/location/Location;->getLatitude()D

    move-result-wide v9

    double-to-float v9, v9

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1407
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    .line 1408
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setLocation: Latitude "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " , Longitude "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1407
    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :goto_2
    :try_start_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1425
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    new-instance v9, Lcom/pantech/app/vegacamera/video/VideoRecord$3;

    invoke-direct {v9, p0}, Lcom/pantech/app/vegacamera/video/VideoRecord$3;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;)V

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1453
    iget-boolean v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    if-nez v8, :cond_0

    .line 1457
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x16

    invoke-virtual {v9, v10, v12, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1459
    :cond_0
    return v13

    .line 1343
    .end local v3           #setMaxFileSize:J
    .end local v5           #setOrientationHint:I
    :cond_1
    const-string v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1344
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1345
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v9, "_InitRecorder setAudioSource:MediaRecorder.AudioSource.CAMCORDER 5"

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 1349
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setAudioEncodingBitRate:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1352
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setAudioChannels "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 1355
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setAudioSamplingRate "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :cond_2
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v13}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1359
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v9, "_InitRecorder setOutputFormat:MediaRecorder.OutputFormat.THREE_GPP 1"

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    const-string v8, "on"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1363
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 1364
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setAudioEncoder:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :cond_3
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1367
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setVideoFrameRate:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1370
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setVideoSize:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1373
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setVideoEncodingBitRate:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1376
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setVideoEncoder:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    .local v0, e:Ljava/lang/RuntimeException;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v9, "[VideoRecord] runtime exception Fail to close fd"

    invoke-static {v8, v9, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1387
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_CreateVideoPath()V

    .line 1388
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/temp.tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1389
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v6}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 1390
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_InitRecorder setOutputFile:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1410
    .restart local v3       #setMaxFileSize:J
    .restart local v5       #setOrientationHint:I
    :cond_5
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v9, "_InitRecorder setLocation: null"

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1415
    :catch_1
    move-exception v0

    .line 1416
    .local v0, e:Ljava/io/IOException;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v9, "mMediaRecorder.prepare IOException:"

    invoke-static {v8, v9, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1417
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_ReleaseMediaRecorder()V

    .line 1418
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 1419
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 1420
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v9, "mMediaRecorder.prepare IllegalStateException:"

    invoke-static {v8, v9, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1421
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_ReleaseMediaRecorder()V

    .line 1422
    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method protected _InitializeMiscControls()V
    .locals 5

    .prologue
    .line 2253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " _InitializeMiscControls()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->frame:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 2255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewWidth:I

    int-to-double v1, v1

    iget v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iPreviewHeight:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 2256
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    .line 2257
    return-void
.end method

.method public _MediaScannerDisconnect()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 953
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mediaScannerConn:Landroid/media/MediaScannerConnection;

    .line 954
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] MediaScannerDisconnect() : disconnect()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    :cond_0
    return-void
.end method

.method public _OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2169
    .line 2179
    const/4 v0, 0x1

    return v0
.end method

.method public _OnKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2183
    const/4 v0, 0x0

    .line 2184
    .local v0, ret:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2185
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    move v1, v0

    .line 2210
    :goto_1
    return v1

    .line 2189
    :sswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "OnKeyUp event.getSource() ? "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 2191
    const/4 v1, 0x1

    goto :goto_1

    .line 2193
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_TakeLiveSnapshot()V

    .line 2194
    const/4 v0, 0x1

    .line 2195
    goto :goto_0

    .line 2198
    :sswitch_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->OnBackPressed()Z

    .line 2199
    const/4 v0, 0x1

    .line 2200
    goto :goto_0

    .line 2202
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->_IsVTouchEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2203
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_TakeLiveSnapshot()V

    .line 2205
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2185
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xff -> :sswitch_2
    .end sparse-switch
.end method

.method protected _ReadVideoProfile()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 565
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v7, "[VideoRecord] _ReadVideoProfile()"

    invoke-static {v5, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/4 v2, 0x0

    .line 569
    .local v2, quality:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "android.intent.extra.videoQuality"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 570
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "android.intent.extra.videoQuality"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 571
    .local v1, extraVideoQuality:I
    if-ltz v1, :cond_0

    const/4 v5, 0x7

    if-gt v1, v5, :cond_0

    .line 572
    move v2, v1

    .line 585
    .end local v1           #extraVideoQuality:I
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v5, Landroid/media/CamcorderProfile;->quality:I

    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_5

    const/16 v5, 0x3e8

    :goto_1
    add-int/2addr v5, v2

    if-eq v7, v5, :cond_2

    .line 589
    :cond_1
    :try_start_0
    invoke-static {v2}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetTimeLapse()V

    .line 598
    return-void

    .line 574
    :cond_3
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v5}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v5

    const/4 v7, 0x6

    if-ne v5, v7, :cond_4

    .line 575
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v7, Lcom/pantech/app/vegacamera/R$string;->mms_resolution:I

    invoke-virtual {v5, v7}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 576
    .local v3, videoQuality:Ljava/lang/String;
    sget-object v5, Lcom/pantech/app/vegacamera/video/VideoRecord;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-virtual {v5, v3}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 577
    goto :goto_0

    .line 580
    .end local v3           #videoQuality:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v5

    const-string v7, "pref_setting_record_size"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, videoSize:Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[VideoRecord] _ReadVideoProfile videoSize:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    sget-object v5, Lcom/pantech/app/vegacamera/video/VideoRecord;->VIDEORESOLUTION_QUALITY_TABLE:Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;

    invoke-virtual {v5, v4}, Lcom/pantech/app/vegacamera/video/VideoHashMap$DefaultHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .end local v4           #videoSize:Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 585
    goto :goto_1

    .line 590
    :catch_0
    move-exception v0

    .line 592
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method

.method _RegisterVideo()Z
    .locals 14

    .prologue
    .line 863
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->RecordingCanceled:Z

    .line 864
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/temp.tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    .local v8, tempFile:Ljava/io/File;
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 866
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 867
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x17

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 868
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentValues:Landroid/content/ContentValues;

    .line 869
    const/4 v10, 0x1

    .line 931
    :goto_0
    return v10

    .line 872
    :cond_0
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v10, :cond_5

    .line 873
    new-instance v1, Ljava/io/File;

    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    .local v1, VideoFile:Ljava/io/File;
    const/4 v0, 0x4

    .line 876
    .local v0, ITERATION_COUNT:I
    const/4 v6, 0x0

    .line 877
    .local v6, iteration:I
    :goto_1
    invoke-virtual {v8, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 891
    const-string v10, "content://media/external/video/media"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 892
    .local v9, videoTable:Landroid/net/Uri;
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentValues:Landroid/content/ContentValues;

    const-string v11, "_size"

    new-instance v12, Ljava/io/File;

    iget-object v13, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 894
    :try_start_0
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentValues:Landroid/content/ContentValues;

    invoke-virtual {v10, v9, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCurrentUri:Landroid/net/Uri;

    .line 895
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.hardware.action.NEW_VIDEO"

    iget-object v13, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCurrentUri:Landroid/net/Uri;

    invoke-direct {v11, v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v10, v11}, Lcom/pantech/app/vegacamera/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 900
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[VideoRecord] _RegisterVideo() Current video URI: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :goto_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_MediaScannerConnect()V

    .line 903
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 905
    const/4 v4, 0x0

    .line 907
    .local v4, inputStream:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 908
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .local v5, inputStream:Ljava/io/FileInputStream;
    if-eqz v5, :cond_1

    .line 909
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/SyncFailedException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 918
    :cond_1
    if-eqz v5, :cond_2

    .line 920
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 930
    .end local v0           #ITERATION_COUNT:I
    .end local v1           #VideoFile:Ljava/io/File;
    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .end local v6           #iteration:I
    .end local v9           #videoTable:Landroid/net/Uri;
    :cond_2
    :goto_3
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentValues:Landroid/content/ContentValues;

    .line 931
    const/4 v10, 0x1

    goto :goto_0

    .line 879
    .restart local v0       #ITERATION_COUNT:I
    .restart local v1       #VideoFile:Ljava/io/File;
    .restart local v6       #iteration:I
    :cond_3
    const-wide/16 v10, 0x3e8

    :try_start_4
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 884
    :goto_4
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v11, "[VideoRecord] rename to fail"

    invoke-static {v10, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    add-int/lit8 v7, v6, 0x1

    .end local v6           #iteration:I
    .local v7, iteration:I
    const/4 v10, 0x4

    if-le v6, v10, :cond_6

    .line 886
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v11, "[VideoRecord] iteration count over"

    invoke-static {v10, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 880
    .end local v7           #iteration:I
    .restart local v6       #iteration:I
    :catch_0
    move-exception v2

    .line 882
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 896
    .end local v2           #e:Ljava/lang/InterruptedException;
    .restart local v9       #videoTable:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 897
    .local v2, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    :try_start_5
    iput-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCurrentUri:Landroid/net/Uri;

    .line 898
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->sCurrentFileName:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 900
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "[VideoRecord] _RegisterVideo() Current video URI: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 899
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 900
    iget-object v11, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "[VideoRecord] _RegisterVideo() Current video URI: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCurrentUri:Landroid/net/Uri;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    throw v10

    .line 911
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .line 912
    .local v3, e1:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 918
    if-eqz v4, :cond_2

    .line 920
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    .line 921
    :catch_3
    move-exception v2

    .line 922
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 913
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #e1:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 914
    .local v2, e:Ljava/io/SyncFailedException;
    :goto_6
    :try_start_8
    invoke-virtual {v2}, Ljava/io/SyncFailedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 918
    if-eqz v4, :cond_2

    .line 920
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_3

    .line 921
    :catch_5
    move-exception v2

    .line 922
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 915
    .end local v2           #e:Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 916
    .restart local v2       #e:Ljava/io/IOException;
    :goto_7
    :try_start_a
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 918
    if-eqz v4, :cond_2

    .line 920
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_3

    .line 921
    :catch_7
    move-exception v2

    .line 922
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 917
    .end local v2           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 918
    :goto_8
    if-eqz v4, :cond_4

    .line 920
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 925
    :cond_4
    :goto_9
    throw v10

    .line 921
    :catch_8
    move-exception v2

    .line 922
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 921
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v5       #inputStream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    .line 922
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 927
    .end local v0           #ITERATION_COUNT:I
    .end local v1           #VideoFile:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .end local v6           #iteration:I
    .end local v9           #videoTable:Landroid/net/Uri;
    :cond_5
    iget-object v10, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x17

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3

    .line 917
    .restart local v0       #ITERATION_COUNT:I
    .restart local v1       #VideoFile:Ljava/io/File;
    .restart local v5       #inputStream:Ljava/io/FileInputStream;
    .restart local v6       #iteration:I
    .restart local v9       #videoTable:Landroid/net/Uri;
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    goto :goto_8

    .line 915
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v5       #inputStream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 913
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v5       #inputStream:Ljava/io/FileInputStream;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 911
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .restart local v5       #inputStream:Ljava/io/FileInputStream;
    :catch_c
    move-exception v3

    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/FileInputStream;
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    goto :goto_5

    .end local v4           #inputStream:Ljava/io/FileInputStream;
    .end local v6           #iteration:I
    .end local v9           #videoTable:Landroid/net/Uri;
    .restart local v7       #iteration:I
    :cond_6
    move v6, v7

    .end local v7           #iteration:I
    .restart local v6       #iteration:I
    goto/16 :goto_1
.end method

.method protected _ReleaseThreads()V
    .locals 2

    .prologue
    .line 1869
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _ReleaseThreads()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1870
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_WaitPreviewStartUpThread()V

    .line 1871
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_WaitRecordingStartThread()V

    .line 1872
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_WaitRecordingStopThread()V

    .line 1873
    return-void
.end method

.method protected _SetFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Z
    .locals 4
    .parameter "param"
    .parameter "focusMode"

    .prologue
    const/4 v0, 0x1

    .line 1242
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _SetFocusMode skipped on CAMERA_FACING_FRONT"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const/4 v0, 0x0

    .line 1250
    :goto_0
    return v0

    .line 1247
    :cond_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 1248
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] _SetFocusMode setFocusMode :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method protected _SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 1935
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mVideoOperInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 1936
    return-void
.end method

.method protected _SetVideoParameters(J)V
    .locals 6
    .parameter "updateSet"

    .prologue
    const-wide/16 v4, 0x0

    .line 959
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] _SetVideoParameters():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 964
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_1

    .line 965
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 968
    :cond_1
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PREFERENCE:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_2

    .line 969
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateCameraParametersPreference()V

    .line 972
    :cond_2
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_3

    .line 973
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateVideoParametersZoom()V

    .line 976
    :cond_3
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BRIGHTNESS:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_4

    .line 977
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateVideoParametersBrightness()V

    .line 980
    :cond_4
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_WHITE_BALANCE:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_5

    .line 981
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateVideoParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V

    .line 984
    :cond_5
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EFFECT:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_6

    .line 985
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateVideoParametersColorEffectOff(Landroid/hardware/Camera$Parameters;)V

    .line 986
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateVideoParametersColorEffect(Landroid/hardware/Camera$Parameters;)V

    .line 989
    :cond_6
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_HDR:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_7

    .line 990
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V

    .line 991
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateVideoParametersHDR(Landroid/hardware/Camera$Parameters;)V

    .line 994
    :cond_7
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_IPL_EFFECT:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_8

    .line 995
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V

    .line 998
    :cond_8
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BURST_SHOT:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_9

    .line 999
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V

    .line 1002
    :cond_9
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FLASH:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_b

    .line 1003
    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-eqz v1, :cond_a

    .line 1004
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->isflashChanged:Z

    .line 1006
    :cond_a
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V

    .line 1009
    :cond_b
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_OTHERS:J

    and-long/2addr v1, p1

    cmp-long v1, v1, v4

    if-eqz v1, :cond_c

    .line 1010
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_SetVideoAppData()V

    .line 1013
    :cond_c
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] set parameters :: mParameters.toString() = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1016
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1017
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoRecord] set video parameters"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1026
    :cond_d
    :goto_1
    const-wide/16 v1, 0x5

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1027
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 1018
    :catch_1
    move-exception v0

    .line 1019
    .local v0, e:Ljava/lang/Exception;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[VideoRecord] set video parameters("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected _StartRecording()V
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 841
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;

    .line 842
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->start()V

    .line 845
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCaptureTimeLapse:Z

    if-eqz v0, :cond_2

    .line 846
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordingTimeMs:J

    .line 848
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 849
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_LayoutOpen()V

    .line 850
    return-void
.end method

.method protected _StopPreview()V
    .locals 3

    .prologue
    .line 812
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[VideoRecord] _StopPreview() , DeviceState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopPreview()V

    .line 820
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] mAppData.GetDevice().stopPreview()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 823
    return-void
.end method

.method protected _StopVideoRecording(Z)V
    .locals 2
    .parameter "stop"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _StopVideoRecording()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStopRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStopRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 855
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Z)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStopRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;

    .line 856
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStopRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->start()V

    .line 857
    if-eqz p1, :cond_1

    .line 858
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    add-int/lit16 v1, v1, 0x10e

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->animateSlide(I)V

    .line 860
    :cond_1
    return-void
.end method

.method protected _StoreImage([BLandroid/location/Location;)Z
    .locals 17
    .parameter "data"
    .parameter "loc"

    .prologue
    .line 2087
    if-eqz p2, :cond_1

    .line 2088
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "[VideoRecord] storeImage() Latitude is "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2089
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "[VideoRecord] storeImage() Longitude is "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2095
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2096
    .local v3, dateTaken:J
    const-string v14, ".jpg"

    .line 2098
    .local v14, ext:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v6

    .line 2100
    .local v6, store_location:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->CreateJpegName(J)Ljava/lang/String;

    move-result-object v2

    .line 2101
    .local v2, title:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2102
    .local v7, filename:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 2104
    .local v10, degreeArray:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v16

    .line 2105
    .local v16, s:Landroid/hardware/Camera$Size;
    invoke-static/range {p1 .. p1}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v15

    .line 2107
    .local v15, orientation:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iJpegRotation:I

    add-int/2addr v1, v15

    rem-int/lit16 v1, v1, 0xb4

    if-nez v1, :cond_2

    .line 2108
    move-object/from16 v0, v16

    iget v11, v0, Landroid/hardware/Camera$Size;->width:I

    .line 2109
    .local v11, width:I
    move-object/from16 v0, v16

    iget v12, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2115
    .local v12, height:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v1, :cond_0

    .line 2116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    move-object/from16 v5, p2

    move-object/from16 v9, p1

    invoke-static/range {v1 .. v12}, Lcom/pantech/app/vegacamera/util/Storage;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[III)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2122
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #dateTaken:J
    .end local v6           #store_location:Ljava/lang/String;
    .end local v7           #filename:Ljava/lang/String;
    .end local v10           #degreeArray:[I
    .end local v11           #width:I
    .end local v12           #height:I
    .end local v14           #ext:Ljava/lang/String;
    .end local v15           #orientation:I
    .end local v16           #s:Landroid/hardware/Camera$Size;
    :cond_0
    :goto_2
    const/4 v1, 0x1

    return v1

    .line 2091
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v5, "[VideoRecord] storeImage() has not location information "

    invoke-static {v1, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2111
    .restart local v2       #title:Ljava/lang/String;
    .restart local v3       #dateTaken:J
    .restart local v6       #store_location:Ljava/lang/String;
    .restart local v7       #filename:Ljava/lang/String;
    .restart local v10       #degreeArray:[I
    .restart local v14       #ext:Ljava/lang/String;
    .restart local v15       #orientation:I
    .restart local v16       #s:Landroid/hardware/Camera$Size;
    :cond_2
    :try_start_1
    move-object/from16 v0, v16

    iget v11, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2112
    .restart local v11       #width:I
    move-object/from16 v0, v16

    iget v12, v0, Landroid/hardware/Camera$Size;->width:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v12       #height:I
    goto :goto_1

    .line 2119
    .end local v2           #title:Ljava/lang/String;
    .end local v3           #dateTaken:J
    .end local v6           #store_location:Ljava/lang/String;
    .end local v7           #filename:Ljava/lang/String;
    .end local v10           #degreeArray:[I
    .end local v11           #width:I
    .end local v12           #height:I
    .end local v14           #ext:Ljava/lang/String;
    .end local v15           #orientation:I
    .end local v16           #s:Landroid/hardware/Camera$Size;
    :catch_0
    move-exception v13

    .line 2120
    .local v13, ex:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v5, "[VideoRecord] Exception while compressing image."

    invoke-static {v1, v5, v13}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected _TakeLiveSnapshot()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2026
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTakingPicture:Z

    if-eqz v1, :cond_1

    .line 2060
    :cond_0
    :goto_0
    return-void

    .line 2030
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[VideoRecord] takeLiveSnapshot"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2032
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v2

    .line 2033
    iget v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationCompensation:I

    add-int/lit16 v3, v3, 0x10e

    rem-int/lit16 v3, v3, 0x168

    .line 2032
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->iJpegRotation:I

    .line 2034
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_GetLocation()V

    .line 2036
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_mirror"

    .line 2037
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_mirror_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2036
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2039
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 2040
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 2041
    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationCompensation:I

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationCompensation:I

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_4

    .line 2042
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "snapshot-picture-flip"

    const-string v3, "flip-h"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "takeLiveSnapshot snapshot-picture-flip flip-h"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2054
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 2055
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "takeLiveSnapshot video-size : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "video-size"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , rotation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2056
    iget v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationCompensation:I

    add-int/lit16 v3, v3, 0x10e

    rem-int/lit16 v3, v3, 0x168

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2055
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2057
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2058
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    new-instance v2, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->location:Landroid/location/Location;

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/vegacamera/video/VideoRecord$JpegPictureCallback;-><init>(Lcom/pantech/app/vegacamera/video/VideoRecord;Landroid/location/Location;)V

    invoke-virtual {v1, v5, v5, v5, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 2059
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mTakingPicture:Z

    goto/16 :goto_0

    .line 2045
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "snapshot-picture-flip"

    const-string v3, "flip-v"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2046
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "takeLiveSnapshot snapshot-picture-flip flip-v"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2049
    :cond_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "snapshot-picture-flip"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2050
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "takeLiveSnapshot snapshot-picture-flip off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "_UpdateCameraParametersBurst"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const-string v0, "snapshot-burst-num"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1239
    return-void
.end method

.method protected _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 1166
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_flash_mode_camera"

    .line 1167
    iget-object v4, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_flash_mode_video_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1166
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    .local v0, flashMode:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[VideoRecord] flashMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1173
    .local v1, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1174
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1175
    const-string v0, "torch"

    .line 1176
    :cond_0
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1177
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[VideoRecord] _UpdateCameraParametersFLASH flashMode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    :goto_0
    return-void

    .line 1179
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v3, "[VideoRecord] _UpdateCameraParametersFLASH flashMode:null"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1204
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_effect_group"

    .line 1205
    iget-object v3, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_effect_group_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1204
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1207
    .local v0, mEffectGroup:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->IsIPLEffectSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1208
    if-eqz v0, :cond_1

    const-string v1, "pref_effect_water_color_pencil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1209
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-sketch-c"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[_UpdateCameraParametersIPLEffects] set pantech-ipl-mode pantech-ipl-sketch-c"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "pref_effect_poster_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1212
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-poster-cartoon-c"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[_UpdateCameraParametersIPLEffects] set pantech-ipl-mode pantech-ipl-poster-cartoon-c"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1214
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "pref_effect_poster_b_n_w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1215
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-poster-cartoon-m"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[_UpdateCameraParametersIPLEffects] set pantech-ipl-mode pantech-ipl-poster-cartoon-m"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1217
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "pref_effect_neon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1218
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-neon"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[_UpdateCameraParametersIPLEffects] set pantech-ipl-mode pantech-ipl-neon"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1220
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "pref_effect_embossing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1221
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-emboss"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[_UpdateCameraParametersIPLEffects] set pantech-ipl-mode pantech-ipl-emboss"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1223
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "pref_effect_dot_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1224
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-color-dot-wht"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[_UpdateCameraParametersIPLEffects] set pantech-ipl-mode pantech-ipl-color-dot-wht"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1226
    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "pref_effect_dot_b_n_w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1227
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-mono-dot"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[_UpdateCameraParametersIPLEffects] set pantech-ipl-mode pantech-ipl-mono-dot"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1229
    :cond_7
    if-eqz v0, :cond_0

    const-string v1, "pref_effect_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v2, "[_UpdateCameraParametersIPLEffects] set pantech-ipl-mode pantech-ipl-off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected _UpdateThumbNail()V
    .locals 2

    .prologue
    .line 626
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    .line 627
    .local v0, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 628
    return-void
.end method

.method protected _VideoRecordEnded(Z)V
    .locals 3
    .parameter "bReturn"

    .prologue
    .line 1899
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->AbsInflateParentLayout()V

    .line 1900
    if-eqz p1, :cond_0

    .line 1901
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1909
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_CloseCamera()V

    .line 1911
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v1

    const-string v2, "pref_flash_mode_camera"

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/preference/PreferenceGroup;->FindPreference(Ljava/lang/String;)Lcom/pantech/app/vegacamera/preference/ListPreference;

    move-result-object v0

    .line 1912
    .local v0, flashpreference:Lcom/pantech/app/vegacamera/preference/ListPreference;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ListPreference;->GetValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->isflashChanged:Z

    if-nez v1, :cond_1

    .line 1913
    iget-object v1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->flashEntryValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/preference/ListPreference;->SetValue(Ljava/lang/String;)V

    .line 1915
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->AbsRecordingStopComplete()V

    .line 1916
    return-void

    .line 1905
    .end local v0           #flashpreference:Lcom/pantech/app/vegacamera/preference/ListPreference;
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_DoReturnToCaller(Z)V

    goto :goto_0

    .line 1901
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected _WaitRecordingStartThread()V
    .locals 2

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _WaitRecordingStartThread()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;

    if-eqz v0, :cond_0

    .line 1848
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;->join()V

    .line 1849
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStartRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StartRecordingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1854
    :cond_0
    :goto_0
    return-void

    .line 1851
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected _WaitRecordingStopThread()V
    .locals 2

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    const-string v1, "[VideoRecord] _WaitRecordingStopThread()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStopRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStopRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;->join()V

    .line 1861
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->tStopRecordingThread:Lcom/pantech/app/vegacamera/video/VideoRecord$StopRecordingThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1866
    :cond_0
    :goto_0
    return-void

    .line 1863
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getVideoRecordUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mCurrentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getVideoRecordViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->videoRecordViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isRecordStartdone()Z
    .locals 1

    .prologue
    .line 2359
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordStartdone:Z

    return v0
.end method

.method public onBatteryStateChanged(I)V
    .locals 3
    .parameter "batteryState"

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBatteryStateEvent() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2353
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 2354
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2356
    :cond_0
    return-void
.end method

.method public setFocusCallback(Z)V
    .locals 3
    .parameter "focused"

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setFocusCallback focused:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusResult(Z)V

    .line 2323
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mRecordLayoutControl:Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/RecordLayoutControl;->FocusStop(I)V

    .line 2324
    return-void
.end method

.method public setRecordStartdone(Z)V
    .locals 0
    .parameter "recordStartdone"

    .prologue
    .line 2363
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->recordStartdone:Z

    .line 2364
    return-void
.end method

.method public setRecordingOrientation(I)V
    .locals 3
    .parameter "parentOrientation"

    .prologue
    .line 2158
    iput p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    .line 2159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setRecordingOrientation mOrientationHint:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->mOrientationHint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2160
    return-void
.end method

.method public setVideoRecordViewGroup(Landroid/view/ViewGroup;)V
    .locals 0
    .parameter "viewGroup"

    .prologue
    .line 2142
    iput-object p1, p0, Lcom/pantech/app/vegacamera/video/VideoRecord;->videoRecordViewGroup:Landroid/view/ViewGroup;

    .line 2143
    return-void
.end method

.method protected unsigned32(I)J
    .locals 4
    .parameter "extra"

    .prologue
    .line 1767
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method
