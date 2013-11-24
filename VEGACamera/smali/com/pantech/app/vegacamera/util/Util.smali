.class public Lcom/pantech/app/vegacamera/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.pantech.apps.SkySetting.SkySettingsOracle"

.field private static final AUTO_FOCUS_SOUND_VOLUME:F = 0.4f

.field public static final ERROR_STATE_CANNOT_CONNECT:I = 0x65

.field public static final ERROR_STATE_CANNOT_CONNECT_APP_CRASH:I = 0x70

.field public static final ERROR_STATE_CANNOT_CONNECT_DISABLED_CAMERA:I = 0x6f

.field public static final ERROR_STATE_CANNOT_FOTA_LOCK:I = 0x75

.field public static final ERROR_STATE_CANNOT_LAUNCH_AOT_CAMERA_GAZE_RECOGNITION:I = 0x74

.field public static final ERROR_STATE_CANNOT_LAUNCH_AOT_CAMERA_MEDIA:I = 0x73

.field public static final ERROR_STATE_CANNOT_LAUNCH_AOT_CAMERA_OTHER_CAMERA:I = 0x72

.field public static final ERROR_STATE_FAIL_TO_SAVE_JPEG_DATA:I = 0x6e

.field public static final ERROR_STATE_FINISH_AOT_CAMERA:I = 0x71

.field public static final ERROR_STATE_FOTA_PREVIEW:I = 0x66

.field public static final ERROR_STATE_GO_OVER_SIZE_LIMIT_OF_ATTACH:I = 0x6d

.field public static final ERROR_STATE_LOWBAT_AFTER_PREVIEW:I = 0x69

.field public static final ERROR_STATE_LOWBAT_BEFORE_PREVIEW:I = 0x68

.field public static final ERROR_STATE_MEM_FAIL:I = 0x6c

.field public static final ERROR_STATE_MEM_NO:I = 0x6a

.field public static final ERROR_STATE_MEM_USB:I = 0x6b

.field public static final ERROR_STATE_NEED_RESET:I = 0x64

.field public static final ERROR_STATE_TELEPHONY:I = 0x67

.field private static final KEY_ISPROP:Ljava/lang/String; = "_isPro"

.field private static final KEY_NAME:Ljava/lang/String; = "_name"

.field private static final KEY_VALUE:Ljava/lang/String; = "_value"

.field public static final NOTI_STATE_ANTISHAKE_FRONT:I = 0x7a

.field public static final NOTI_STATE_ANTISHAKE_SCENE:I = 0x7b

.field public static final NOTI_STATE_BEST_FACESHOT_CHANGE_RESOLUTION:I = 0x89

.field public static final NOTI_STATE_BEST_FACESHOT_NOTI_NO_FACE:I = 0x8b

.field public static final NOTI_STATE_BEST_FACESHOT_NOT_FOUND_5IMAGE:I = 0x88

.field public static final NOTI_STATE_BEST_FACESHOT_SAVE_SUCCESS:I = 0x8d

.field public static final NOTI_STATE_BURSTSHOT_CHANGE_RESOLUTION:I = 0x8a

.field public static final NOTI_STATE_CALL_STATE_NOT_IDLE:I = 0x80

.field public static final NOTI_STATE_CANCEL_RECORD:I = 0x7c

.field public static final NOTI_STATE_CANCEL_RECORD_TRY_LATER:I = 0x8c

.field public static final NOTI_STATE_CANNOT_RECORDING_UNSUPPORTED:I = 0x86

.field public static final NOTI_STATE_CAPTURE_LIVESHOT:I = 0x7d

.field public static final NOTI_STATE_ERROR_LIVESHOT:I = 0x7e

.field public static final NOTI_STATE_FAIL_BESTFACE_SHOT:I = 0x84

.field public static final NOTI_STATE_FAIL_RECORD:I = 0x83

.field public static final NOTI_STATE_LIVE_EFFECT_RESOLUTION:I = 0x85

.field public static final NOTI_STATE_MEM_LOW_EXT:I = 0x79

.field public static final NOTI_STATE_MEM_LOW_INT:I = 0x78

.field public static final NOTI_STATE_SHORT_TO_SAVE:I = 0x7f

.field public static final NOTI_STATE_TIME_LAPSE_EFFECT_RELEASE:I = 0x81

.field public static final NOTI_STATE_TIME_LAPSE_RELEASE:I = 0x82

.field public static final NOTI_STATE_UNDOBAR_DELETED:I = 0x87

.field public static final STATE_OFF:Ljava/lang/String; = "0"

.field public static final STATE_ON:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String; = "Util"

.field private static final TOAST_TEXT_DEFAULT_SIZE:F = 14.0f

.field private static bPopupState:Z = false

.field private static bRoop:Z = false

.field public static mAutoFocusTime:J = 0x0L

.field public static mCameraOnResumeTime:J = 0x0L

.field public static mCameraOpenTime:J = 0x0L

.field public static mCameraToCamcorderTime:J = 0x0L

.field public static mFullOpenTime:J = 0x0L

.field public static mLayoutInflateTime:J = 0x0L

.field public static mLayoutStartTime:J = 0x0L

.field public static mMainThreadTime:J = 0x0L

.field private static mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener; = null

.field public static mSetContentViewTime:J = 0x0L

.field private static mSoundPool:Landroid/media/SoundPool; = null

.field public static mStartPreviewTime:J = 0x0L

.field public static mStoreTime:J = 0x0L

.field public static mTakePictureTime:J = 0x0L

.field private static final proj:[Ljava/lang/String; = null

.field private static sImageFileNamer:Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer; = null

.field private static final sLVOnOff:Ljava/lang/String; = "LocalVoiceOnOff"

.field private static soundID:I

.field private static streamID:I

.field private static toast:Landroid/widget/Toast;

.field private static toastDegree:I

.field private static toastLayout:Landroid/view/View;

.field private static toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private static toastText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 115
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_name"

    aput-object v1, v0, v6

    const/4 v1, 0x1

    const-string v2, "_value"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/vegacamera/util/Util;->proj:[Ljava/lang/String;

    .line 121
    sput-object v5, Lcom/pantech/app/vegacamera/util/Util;->sImageFileNamer:Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;

    .line 123
    sput-object v5, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    .line 125
    sput-object v5, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    .line 126
    sput-object v5, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 127
    sput-object v5, Lcom/pantech/app/vegacamera/util/Util;->toastText:Landroid/widget/TextView;

    .line 128
    sput-object v5, Lcom/pantech/app/vegacamera/util/Util;->toastLayout:Landroid/view/View;

    .line 130
    sput-boolean v6, Lcom/pantech/app/vegacamera/util/Util;->bPopupState:Z

    .line 131
    sput-boolean v6, Lcom/pantech/app/vegacamera/util/Util;->bRoop:Z

    .line 133
    sput v7, Lcom/pantech/app/vegacamera/util/Util;->soundID:I

    .line 134
    sput v7, Lcom/pantech/app/vegacamera/util/Util;->streamID:I

    .line 135
    sput v6, Lcom/pantech/app/vegacamera/util/Util;->toastDegree:I

    .line 137
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mSetContentViewTime:J

    .line 138
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mLayoutInflateTime:J

    .line 139
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mLayoutStartTime:J

    .line 140
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mCameraOnResumeTime:J

    .line 141
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mCameraOpenTime:J

    .line 142
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mStartPreviewTime:J

    .line 143
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mTakePictureTime:J

    .line 144
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mStoreTime:J

    .line 145
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mCameraToCamcorderTime:J

    .line 146
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    .line 147
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mMainThreadTime:J

    .line 148
    sput-wide v3, Lcom/pantech/app/vegacamera/util/Util;->mAutoFocusTime:J

    .line 1156
    new-instance v0, Lcom/pantech/app/vegacamera/util/Util$1;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/util/Util$1;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/util/Util;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 1162
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static Assert(Z)V
    .locals 1
    .parameter "cond"

    .prologue
    .line 264
    if-nez p0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 267
    :cond_0
    return-void
.end method

.method public static BmRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "b"
    .parameter "degrees"

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/pantech/app/vegacamera/util/Util;->_RotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static BroadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 1023
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.action.NEW_PICTURE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1026
    return-void
.end method

.method public static CheckTelephonyState(Landroid/app/Activity;)I
    .locals 5
    .parameter "activity"

    .prologue
    .line 1429
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1430
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 1431
    .local v0, callState:I
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1442
    :goto_0
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CheckTelephonyState callState:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1443
    return v0

    .line 1433
    :pswitch_0
    const/4 v0, 0x2

    .line 1434
    goto :goto_0

    .line 1436
    :pswitch_1
    const/4 v0, 0x0

    .line 1437
    goto :goto_0

    .line 1439
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static CreateJpegName(J)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"

    .prologue
    .line 1350
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->sImageFileNamer:Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;

    monitor-enter v1

    .line 1351
    :try_start_0
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->sImageFileNamer:Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;

    invoke-virtual {v0, p0, p1}, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;->GenerateName(J)Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1350
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static CurrentTimeMillis()J
    .locals 2

    .prologue
    .line 1136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static DestoryCustomToast()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 587
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 588
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 589
    sput-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    .line 591
    :cond_0
    sput-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastLayout:Landroid/view/View;

    .line 592
    sput-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 593
    sput-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastText:Landroid/widget/TextView;

    .line 594
    return-void
.end method

.method public static EnterLightsOutMode(Landroid/view/Window;)V
    .locals 2
    .parameter "window"

    .prologue
    .line 1083
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1084
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1085
    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1086
    return-void
.end method

.method public static GetBatteryLevel(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 1222
    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 1223
    .local v0, battery:Landroid/content/Intent;
    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static GetCameraFacingIntentExtras(Landroid/app/Activity;)I
    .locals 8
    .parameter "currentActivity"

    .prologue
    const/4 v7, -0x1

    .line 959
    const-string v0, "android.intent.extras.CAMERA_FACING"

    .line 960
    .local v0, EXTRAS_CAMERA_FACING:Ljava/lang/String;
    const/4 v2, -0x1

    .line 961
    .local v2, cameraId:I
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extras.CAMERA_FACING"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 963
    .local v4, intentCameraId:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->_IsFrontCameraIntent(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 965
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/CameraHolder;->getFrontCameraId()I

    move-result v3

    .line 966
    .local v3, frontCameraId:I
    if-eq v3, v7, :cond_0

    .line 967
    move v2, v3

    .line 976
    .end local v3           #frontCameraId:I
    :cond_0
    :goto_0
    return v2

    .line 969
    :cond_1
    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->_IsBackCameraIntent(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 971
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/CameraHolder;->getBackCameraId()I

    move-result v1

    .line 972
    .local v1, backCameraId:I
    if-eq v1, v7, :cond_0

    .line 973
    move v2, v1

    goto :goto_0
.end method

.method public static GetCaptureIntent(Landroid/app/Activity;)I
    .locals 5
    .parameter "activity"

    .prologue
    .line 1387
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1388
    .local v0, action:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1390
    .local v1, ret:I
    if-eqz v0, :cond_0

    .line 1391
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1392
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCaptureIntent activity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , intent:INTENT_IMAGE_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    const/4 v1, 0x1

    .line 1414
    :cond_0
    :goto_0
    return v1

    .line 1394
    :cond_1
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1395
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCaptureIntent activity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , intent:INTENT_STILL_IMAGE_CAMERA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    const/4 v1, 0x2

    .line 1397
    goto :goto_0

    :cond_2
    const-string v2, "pantech.SKYCamera.action.ATTACH_CONTENTS_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1398
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCaptureIntent activity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , intent:INTENT_ATTACH_CONTENTS_CAMERA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/4 v1, 0x3

    .line 1400
    goto :goto_0

    :cond_3
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1401
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCaptureIntent activity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , intent:INTENT_VIDEO_CAPTURE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    const/4 v1, 0x4

    .line 1403
    goto :goto_0

    :cond_4
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1404
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCaptureIntent activity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , intent:INTENT_VIDEO_CAMERA"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1405
    const/4 v1, 0x5

    .line 1406
    goto/16 :goto_0

    :cond_5
    const-string v2, "pantech.SKYCamera.action.ATTACH_CONTENTS_CAMCORDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1407
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCaptureIntent activity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , intent:INTENT_ATTACH_CONTENTS_CAMCORDER"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    const/4 v1, 0x6

    .line 1409
    goto/16 :goto_0

    .line 1410
    :cond_6
    const-string v2, "Util"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetCaptureIntent activity:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , intent:INTENT_NONE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public static GetDeviceHeight(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 1290
    const/4 v1, 0x0

    .line 1291
    .local v1, mHeight:I
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1292
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1293
    .local v2, p:Landroid/graphics/Point;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-le v3, v4, :cond_0

    .line 1294
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1295
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 1296
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "After SDK_13 getWindowManager returns default display height is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :goto_0
    return v1

    .line 1299
    :cond_0
    const-string v3, "Util"

    const-string v4, "Before SDK_12 getWindowManager returns default display height"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GetDeviceOrientation(I)I
    .locals 2
    .parameter "cameraId"

    .prologue
    .line 665
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 666
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p0, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 667
    iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    return v1
.end method

.method public static GetDeviceWidth(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    .line 1275
    const/4 v1, 0x0

    .line 1276
    .local v1, mWidth:I
    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1277
    .local v0, display:Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1278
    .local v2, p:Landroid/graphics/Point;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-le v3, v4, :cond_0

    .line 1279
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1280
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 1281
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "After SDK_13 getWindowManager returns default display width is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    :goto_0
    return v1

    .line 1284
    :cond_0
    const-string v3, "Util"

    const-string v4, "Before SDK_12 getWindowManager returns default display width"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GetDisplayOrientation(II)I
    .locals 4
    .parameter "degrees"
    .parameter "cameraId"

    .prologue
    .line 652
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 653
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 655
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 656
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p0

    rem-int/lit16 v1, v2, 0x168

    .line 657
    .local v1, result:I
    rsub-int v2, v1, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 661
    :goto_0
    return v1

    .line 659
    .end local v1           #result:I
    :cond_0
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p0

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .restart local v1       #result:I
    goto :goto_0
.end method

.method public static GetDisplayRotation(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 635
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 636
    .local v0, actRotation:I
    packed-switch v0, :pswitch_data_0

    .line 646
    :goto_0
    :pswitch_0
    return v1

    .line 640
    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    .line 642
    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    .line 644
    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static GetFatalPopupState()Z
    .locals 1

    .prologue
    .line 1152
    sget-boolean v0, Lcom/pantech/app/vegacamera/util/Util;->bPopupState:Z

    return v0
.end method

.method public static GetLocalVoice(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, 0x0

    .line 1447
    const/4 v9, 0x0

    .line 1448
    .local v9, value:Ljava/lang/String;
    const-string v3, "_name= \'LocalVoiceOnOff\'"

    .line 1449
    .local v3, where:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1451
    .local v8, fOnoffState:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1452
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1454
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "content://com.pantech.apps.SkySetting.SkySettingsOracle"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/vegacamera/util/Util;->proj:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1455
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1456
    const-string v1, "_value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1465
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 1466
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1469
    :cond_1
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GetLocalVoice LocalVoiceOnOff = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    :try_start_1
    const-string v1, "0"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    move v8, v10

    .line 1477
    :goto_1
    return v8

    .line 1457
    :catch_0
    move-exception v7

    .line 1458
    .local v7, e:Ljava/lang/Exception;
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GetLocalVoice Exception:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v1, "LocalVoiceOnOff"

    const-string v2, "1"

    invoke-static {p0, v1, v2, v10}, Lcom/pantech/app/vegacamera/util/Util;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1460
    if-eqz v6, :cond_0

    .line 1461
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1472
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    const/4 v8, 0x1

    goto :goto_1

    .line 1473
    :catch_1
    move-exception v7

    .line 1474
    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public static GetMemInfo(Ljava/lang/String;)V
    .locals 6
    .parameter "str"

    .prologue
    const-wide/16 v4, 0x400

    .line 1140
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    const-string v0, "memory~~~~ max"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "max~"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    const-string v0, "memory~~~~ free"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "free~"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    const-string v0, "memory~~~~ total"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "total~"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "kb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    const-string v0, "Util"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    return-void
.end method

.method public static GetOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 22
    .parameter "currentActivity"
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3f50624dd2f1a9fcL

    .line 751
    .local v2, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 752
    const/4 v11, 0x0

    .line 818
    :cond_0
    :goto_0
    return-object v11

    .line 754
    :cond_1
    const/4 v11, 0x0

    .line 755
    .local v11, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v9, 0x7fefffffffffffffL

    .line 762
    .local v9, minDiff:D
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 763
    .local v12, p:Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    .line 764
    .local v6, display:Landroid/view/Display;
    invoke-virtual {v6, v12}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 766
    iget v0, v12, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 768
    .local v16, targetHeight:I
    if-gtz v16, :cond_2

    .line 770
    iget v0, v12, Landroid/graphics/Point;->y:I

    move/from16 v16, v0

    .line 774
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_6

    .line 805
    if-nez v11, :cond_5

    .line 806
    const-string v17, "Util"

    const-string v18, "No preview size match the aspect ratio"

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-wide v9, 0x7fefffffffffffffL

    .line 808
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_4
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-nez v18, :cond_9

    .line 815
    :cond_5
    if-eqz v11, :cond_0

    .line 816
    const-string v17, "Util"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "optimalSize.width = "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " optimalSize.height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 775
    .local v15, size:Landroid/hardware/Camera$Size;
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v13, v18, v20

    .line 776
    .local v13, ratio:D
    const-wide v7, 0x3ff5555555555555L

    .line 777
    .local v7, exceptRatio:D
    const-wide v4, 0x3f9eb851eb851eb8L

    .line 779
    .local v4, RATIO_ANGLE_TOLERANCE:D
    sub-double v18, v13, p2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3f50624dd2f1a9fcL

    cmpl-double v18, v18, v20

    if-lez v18, :cond_7

    .line 783
    const-wide v18, 0x3ff5555555555555L

    cmpl-double v18, v13, v18

    if-nez v18, :cond_8

    const-wide v18, 0x3ff5555555555555L

    sub-double v18, v18, p2

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3f9eb851eb851eb8L

    cmpg-double v18, v18, v20

    if-gez v18, :cond_8

    .line 784
    const-string v18, "Util"

    const-string v19, "optimalSize is not continue"

    invoke-static/range {v18 .. v19}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    :cond_7
    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v18, v9

    if-gez v18, :cond_3

    .line 798
    move-object v11, v15

    .line 799
    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v9, v0

    goto/16 :goto_1

    .line 786
    :cond_8
    const-string v18, "Util"

    const-string v19, "optimalSize is continue"

    invoke-static/range {v18 .. v19}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 808
    .end local v4           #RATIO_ANGLE_TOLERANCE:D
    .end local v7           #exceptRatio:D
    .end local v13           #ratio:D
    .end local v15           #size:Landroid/hardware/Camera$Size;
    :cond_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 809
    .restart local v15       #size:Landroid/hardware/Camera$Size;
    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v18, v18, v9

    if-gez v18, :cond_4

    .line 810
    move-object v11, v15

    .line 811
    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    sub-int v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-double v9, v0

    goto/16 :goto_2
.end method

.method public static GetOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;Landroid/hardware/Camera$Size;Z)Landroid/hardware/Camera$Size;
    .locals 44
    .parameter "currentActivity"
    .parameter
    .parameter "targetSize"
    .parameter "isLowMagnification"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Size;",
            "Z)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 824
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v2, 0x3f50624dd2f1a9fcL

    .line 826
    .local v2, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 827
    const/16 v22, 0x0

    .line 953
    :cond_0
    :goto_0
    return-object v22

    .line 830
    :cond_1
    const/16 v22, 0x0

    .line 831
    .local v22, optimalSize:Landroid/hardware/Camera$Size;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v39, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v41, v0

    div-double v36, v39, v41

    .line 832
    .local v36, targetRatio:D
    const-wide v20, 0x7fefffffffffffffL

    .line 839
    .local v20, minDiff:D
    new-instance v23, Landroid/graphics/Point;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Point;-><init>()V

    .line 840
    .local v23, p:Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v39

    invoke-interface/range {v39 .. v39}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    .line 841
    .local v16, display:Landroid/view/Display;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 842
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v39, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v35

    .line 843
    .local v35, targetHeight:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v39, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v40, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 845
    .local v38, targetWidth:I
    mul-int v9, v35, v38

    .line 847
    .local v9, MARGIN_HIGH_PICTURE_RESOLUTION:I
    if-gtz v35, :cond_2

    .line 849
    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v35, v0

    .line 853
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_3
    :goto_1
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-nez v40, :cond_7

    .line 922
    :goto_2
    if-nez v22, :cond_6

    .line 923
    const-string v39, "Util"

    const-string v40, "No preview size match the aspect ratio"

    invoke-static/range {v39 .. v40}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-wide v30, 0x3ff38e38e38e38e4L

    .line 926
    .local v30, ratio_s:D
    const-wide v32, 0x3ffaaaaaaaaaaaabL

    .line 927
    .local v32, ratio_w:D
    const-wide v28, 0x3ffc71c71c71c71cL

    .line 929
    .local v28, ratio_hd:D
    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-double v0, v0

    move-wide/from16 v39, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v41, v0

    move/from16 v0, v41

    int-to-double v0, v0

    move-wide/from16 v41, v0

    div-double v24, v39, v41

    .line 931
    .local v24, pictureRatio:D
    const/16 v19, 0x280

    .line 932
    .local v19, iWidth:I
    const-wide v20, 0x7fefffffffffffffL

    .line 934
    const-wide v39, 0x3ffaaaaaaaaaaaabL

    cmpl-double v39, v39, v24

    if-nez v39, :cond_11

    .line 935
    const-string v39, "Util"

    const-string v40, "No preview size match the aspect ratio 1"

    invoke-static/range {v39 .. v40}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    const/16 v19, 0x320

    .line 943
    :cond_4
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_5
    :goto_4
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v40

    if-nez v40, :cond_13

    .line 950
    .end local v19           #iWidth:I
    .end local v24           #pictureRatio:D
    .end local v28           #ratio_hd:D
    .end local v30           #ratio_s:D
    .end local v32           #ratio_w:D
    :cond_6
    if-eqz v22, :cond_0

    .line 951
    const-string v39, "Util"

    new-instance v40, Ljava/lang/StringBuilder;

    const-string v41, "[Util] optimalSize.width = "

    invoke-direct/range {v40 .. v41}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " optimalSize.height = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 853
    :cond_7
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/hardware/Camera$Size;

    .line 854
    .local v34, size:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v26, v40, v42

    .line 855
    .local v26, ratio:D
    const-wide v17, 0x3ff5555555555555L

    .line 856
    .local v17, exceptRatio:D
    const-wide v12, 0x3f9eb851eb851eb8L

    .line 857
    .local v12, RATIO_ANGLE_TOLERANCE:D
    const/16 v8, 0x780

    .line 858
    .local v8, FHD_WIDTH_1920:I
    const/16 v5, 0x5a0

    .line 859
    .local v5, FHD_HEIGHT_1440:I
    const/16 v4, 0x438

    .line 860
    .local v4, FHD_HEIGHT_1080:I
    const/16 v11, 0x500

    .line 861
    .local v11, MEGA_WIDTH_1280:I
    const/16 v10, 0x3c0

    .line 862
    .local v10, MEGA_HEIGHT_960:I
    const/16 v7, 0x500

    .line 863
    .local v7, FHD_WIDTH_1280:I
    const/16 v6, 0x2d0

    .line 865
    .local v6, FHD_HEIGHT_720:I
    sub-double v40, v26, v36

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    const-wide v42, 0x3f50624dd2f1a9fcL

    cmpl-double v40, v40, v42

    if-lez v40, :cond_8

    .line 869
    const-wide v40, 0x3ff5555555555555L

    cmpl-double v40, v26, v40

    if-nez v40, :cond_e

    const-wide v40, 0x3ff5555555555555L

    sub-double v40, v40, v36

    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v40

    const-wide v42, 0x3f9eb851eb851eb8L

    cmpg-double v40, v40, v42

    if-gez v40, :cond_e

    .line 870
    const-string v40, "Util"

    const-string v41, "optimalSize is not continue"

    invoke-static/range {v40 .. v41}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    :cond_8
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    const/16 v41, 0x780

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_9

    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    const/16 v41, 0x5a0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_9

    .line 879
    if-nez p3, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v41, v0

    mul-int v40, v40, v41

    move/from16 v0, v40

    if-le v0, v9, :cond_3

    .line 883
    :cond_9
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    const/16 v41, 0x780

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_a

    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    const/16 v41, 0x438

    move/from16 v0, v40

    move/from16 v1, v41

    if-eq v0, v1, :cond_3

    .line 889
    :cond_a
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    const/16 v41, 0x500

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_b

    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    const/16 v41, 0x3c0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_b

    .line 890
    if-nez p3, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v41, v0

    mul-int v40, v40, v41

    move/from16 v0, v40

    if-le v0, v9, :cond_3

    .line 894
    :cond_b
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    const/16 v41, 0x500

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_c

    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    const/16 v41, 0x2d0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_c

    .line 895
    if-nez p3, :cond_3

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v41, v0

    mul-int v40, v40, v41

    move/from16 v0, v40

    if-le v0, v9, :cond_3

    .line 901
    :cond_c
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-gt v0, v1, :cond_d

    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-le v0, v1, :cond_f

    .line 902
    :cond_d
    const-string v40, "Util"

    const-string v41, "[Util] preview size larger than picture size"

    invoke-static/range {v40 .. v41}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 872
    :cond_e
    const-string v40, "Util"

    const-string v41, "optimalSize is continue"

    invoke-static/range {v40 .. v41}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 906
    :cond_f
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    move/from16 v0, v40

    move/from16 v1, v35

    if-le v0, v1, :cond_10

    .line 907
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v42, v0

    move/from16 v0, v42

    int-to-double v0, v0

    move-wide/from16 v42, v0

    div-double v14, v40, v42

    .line 908
    .local v14, SizeRatio:D
    cmpl-double v40, v14, v36

    if-nez v40, :cond_3

    .line 909
    move-object/from16 v22, v34

    .line 910
    goto/16 :goto_2

    .line 913
    .end local v14           #SizeRatio:D
    :cond_10
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    sub-int v40, v40, v35

    invoke-static/range {v40 .. v40}, Ljava/lang/Math;->abs(I)I

    move-result v40

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    cmpg-double v40, v40, v20

    if-gez v40, :cond_3

    .line 914
    move-object/from16 v22, v34

    .line 915
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v40, v0

    sub-int v40, v40, v35

    invoke-static/range {v40 .. v40}, Ljava/lang/Math;->abs(I)I

    move-result v40

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v20, v0

    goto/16 :goto_1

    .line 937
    .end local v4           #FHD_HEIGHT_1080:I
    .end local v5           #FHD_HEIGHT_1440:I
    .end local v6           #FHD_HEIGHT_720:I
    .end local v7           #FHD_WIDTH_1280:I
    .end local v8           #FHD_WIDTH_1920:I
    .end local v10           #MEGA_HEIGHT_960:I
    .end local v11           #MEGA_WIDTH_1280:I
    .end local v12           #RATIO_ANGLE_TOLERANCE:D
    .end local v17           #exceptRatio:D
    .end local v26           #ratio:D
    .end local v34           #size:Landroid/hardware/Camera$Size;
    .restart local v19       #iWidth:I
    .restart local v24       #pictureRatio:D
    .restart local v28       #ratio_hd:D
    .restart local v30       #ratio_s:D
    .restart local v32       #ratio_w:D
    :cond_11
    const-wide v39, 0x3ffc71c71c71c71cL

    cmpl-double v39, v39, v24

    if-nez v39, :cond_12

    .line 938
    const/16 v19, 0x300

    .line 939
    goto/16 :goto_3

    :cond_12
    const-wide v39, 0x3ff38e38e38e38e4L

    cmpl-double v39, v39, v24

    if-nez v39, :cond_4

    .line 940
    const/16 v19, 0x160

    goto/16 :goto_3

    .line 943
    :cond_13
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/hardware/Camera$Size;

    .line 944
    .restart local v34       #size:Landroid/hardware/Camera$Size;
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    sub-int v40, v40, v19

    invoke-static/range {v40 .. v40}, Ljava/lang/Math;->abs(I)I

    move-result v40

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    cmpg-double v40, v40, v20

    if-gez v40, :cond_5

    .line 945
    move-object/from16 v22, v34

    .line 946
    move-object/from16 v0, v34

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v40, v0

    sub-int v40, v40, v19

    invoke-static/range {v40 .. v40}, Ljava/lang/Math;->abs(I)I

    move-result v40

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v20, v0

    goto/16 :goto_4
.end method

.method public static GetOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 11
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 1229
    .local p0, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 1230
    .local v0, ASPECT_TOLERANCE:D
    if-nez p0, :cond_1

    .line 1231
    const/4 v2, 0x0

    .line 1255
    :cond_0
    return-object v2

    .line 1233
    :cond_1
    const/4 v2, 0x0

    .line 1236
    .local v2, optimalSize:Landroid/hardware/Camera$Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 1247
    if-nez v2, :cond_0

    .line 1248
    const-string v6, "Util"

    const-string v7, "No picture size match the aspect ratio"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 1250
    .local v5, size:Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_4

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_3

    .line 1251
    :cond_4
    move-object v2, v5

    goto :goto_1

    .line 1236
    .end local v5           #size:Landroid/hardware/Camera$Size;
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 1237
    .restart local v5       #size:Landroid/hardware/Camera$Size;
    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double v3, v7, v9

    .line 1238
    .local v3, ratio:D
    sub-double v7, v3, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f50624dd2f1a9fcL

    cmpl-double v7, v7, v9

    if-gtz v7, :cond_2

    .line 1240
    if-eqz v2, :cond_6

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    if-le v7, v8, :cond_2

    .line 1241
    :cond_6
    move-object v2, v5

    goto :goto_0
.end method

.method public static GetPerformTestIntent(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 1418
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1419
    .local v0, i:Landroid/content/Intent;
    const-string v2, "perform-test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "open-test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1420
    const-string v2, "picture-test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "af-test"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1419
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static GetSharpnessTestIntent(Landroid/app/Activity;)Z
    .locals 3
    .parameter "activity"

    .prologue
    .line 1424
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1425
    .local v0, i:Landroid/content/Intent;
    const-string v1, "sharpness-test"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static InitializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V
    .locals 5
    .parameter "win"
    .parameter "resolver"

    .prologue
    .line 1092
    const v0, 0x3f333333

    .line 1095
    .local v0, DEFAULT_CAMERA_BRIGHTNESS:F
    const-string v3, "screen_brightness_mode"

    .line 1096
    const/4 v4, 0x0

    .line 1095
    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1097
    .local v1, mode:I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1098
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1099
    .local v2, winParams:Landroid/view/WindowManager$LayoutParams;
    const v3, 0x3f333333

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1100
    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1102
    .end local v2           #winParams:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method public static IsAELockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "params"

    .prologue
    .line 1313
    const-string v1, "true"

    .line 1314
    .local v1, TRUE:Ljava/lang/String;
    const-string v0, "auto-exposure-lock-supported"

    .line 1315
    .local v0, AUTO_EXPOSURE_LOCK_SUPPORTED:Ljava/lang/String;
    const-string v2, "true"

    const-string v3, "auto-exposure-lock-supported"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static IsAWBLockSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 4
    .parameter "params"

    .prologue
    .line 1319
    const-string v1, "true"

    .line 1320
    .local v1, TRUE:Ljava/lang/String;
    const-string v0, "auto-whitebalance-lock-supported"

    .line 1321
    .local v0, AUTO_WHITE_BALANCE_LOCK_SUPPORTED:Ljava/lang/String;
    const-string v2, "true"

    const-string v3, "auto-whitebalance-lock-supported"

    invoke-virtual {p0, v3}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static IsEngMode()Z
    .locals 2

    .prologue
    .line 1271
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .parameter "params"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1339
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_CAMERA_FOCUS_AREA:Z

    if-eqz v1, :cond_0

    .line 1340
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "auto"

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1342
    :cond_0
    return v0
.end method

.method public static IsGallerySecretMode(Landroid/content/Context;)Z
    .locals 1
    .parameter "mContext"

    .prologue
    .line 1564
    const/4 v0, 0x0

    return v0
.end method

.method public static IsMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 2
    .parameter "params"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1331
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_CAMERA_METERING_AREA:Z

    if-eqz v1, :cond_0

    .line 1332
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1334
    :cond_0
    return v0
.end method

.method public static IsOJTSupported(Landroid/hardware/Camera$Parameters;)Z
    .locals 3
    .parameter "params"

    .prologue
    .line 1325
    const-string v0, "true"

    .line 1326
    .local v0, TRUE:Ljava/lang/String;
    const-string v1, "true"

    const-string v2, "pantech-ojt-values"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static IsSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "value"
    .parameter "supported"

    .prologue
    const/4 v0, 0x0

    .line 1309
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static IsSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1305
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static IsUriValid(Landroid/net/Uri;Landroid/content/ContentResolver;)Z
    .locals 6
    .parameter "uri"
    .parameter "resolver"

    .prologue
    const/4 v2, 0x0

    .line 988
    if-nez p0, :cond_0

    .line 1001
    :goto_0
    return v2

    .line 992
    :cond_0
    :try_start_0
    const-string v3, "r"

    invoke-virtual {p1, p0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 993
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 994
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fail to open URI. URI="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 998
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 999
    .local v0, ex:Ljava/io/IOException;
    goto :goto_0

    .line 997
    .end local v0           #ex:Ljava/io/IOException;
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static MakeBitmap(Ljava/lang/String;IIIZ)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "path"
    .parameter "w"
    .parameter "h"
    .parameter "degrees"
    .parameter "isMirrorEffect"

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 1114
    const/4 v0, 0x0

    .line 1115
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1117
    .local v3, rotatedbmp:Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1118
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1119
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1120
    iget-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v5, :cond_0

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v5, v6, :cond_0

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v5, v6, :cond_1

    .line 1131
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v4

    .line 1123
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1124
    const/4 v5, 0x1

    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1125
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1126
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1127
    invoke-static {v0, p3, p4}, Lcom/pantech/app/vegacamera/util/Util;->_RotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1128
    invoke-static {v3, p1, p2}, Lcom/pantech/app/vegacamera/util/Util;->_ResizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1129
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v1

    .line 1130
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    const-string v5, "Util"

    const-string v6, "Got oom exception "

    invoke-static {v5, v6, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static MakeBitmap([BI)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "jpegData"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 246
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 247
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 248
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 249
    iget-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v3, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v3, v5, :cond_0

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v3, v5, :cond_1

    .line 259
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v2

    .line 252
    .restart local v1       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_1
    const/4 v3, -0x1

    invoke-static {v1, v3, p1}, Lcom/pantech/app/vegacamera/util/Util;->_ComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 253
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 254
    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 255
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 256
    const/4 v3, 0x0

    array-length v4, p0

    invoke-static {p0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 257
    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v0

    .line 258
    .local v0, ex:Ljava/lang/OutOfMemoryError;
    const-string v3, "Util"

    const-string v4, "Got oom exception "

    invoke-static {v3, v4, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static OpenCamera(Landroid/content/Context;I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    .locals 3
    .parameter "context"
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;,
            Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;,
            Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
        }
    .end annotation

    .prologue
    .line 282
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->_ThrowIfCameraDisabled(Landroid/content/Context;)V

    .line 285
    :try_start_0
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/CameraHolder;->open(I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 286
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->IsEngMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const-string v1, "Util"

    const-string v2, "open camera device failed"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    throw v0

    .line 294
    :cond_0
    throw v0

    .line 296
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 297
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    throw v0
.end method

.method public static PrepareMatrix(Landroid/graphics/Matrix;ZIII)V
    .locals 4
    .parameter "matrix"
    .parameter "mirror"
    .parameter "displayOrientation"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/high16 v3, 0x44fa

    const/high16 v2, 0x4000

    .line 1013
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 1015
    int-to-float v0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1018
    int-to-float v0, p3

    div-float/2addr v0, v3

    int-to-float v1, p4

    div-float/2addr v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1019
    int-to-float v0, p3

    div-float/2addr v0, v2

    int-to-float v1, p4

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1020
    return-void

    .line 1013
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static RectFToRect(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rectF"
    .parameter "rect"

    .prologue
    .line 1005
    iget v0, p0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1006
    iget v0, p0, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1007
    iget v0, p0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1008
    iget v0, p0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1009
    return-void
.end method

.method public static RoundOrientation(II)I
    .locals 4
    .parameter "orientation"
    .parameter "orientationHistory"

    .prologue
    .line 672
    const/4 v0, 0x5

    .line 673
    .local v0, ORIENTATION_HYSTERESIS:I
    const/4 v1, 0x0

    .line 675
    .local v1, changeOrientation:Z
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 676
    const/4 v1, 0x1

    .line 682
    :goto_0
    if-eqz v1, :cond_0

    .line 683
    add-int/lit8 v3, p0, 0x2d

    div-int/lit8 v3, v3, 0x5a

    mul-int/lit8 v3, v3, 0x5a

    rem-int/lit16 p1, v3, 0x168

    .line 685
    .end local p1
    :cond_0
    return p1

    .line 678
    .restart local p1
    :cond_1
    sub-int v3, p0, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 679
    .local v2, dist:I
    rsub-int v3, v2, 0x168

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 680
    const/16 v3, 0x32

    if-lt v2, v3, :cond_2

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static SetFatalPopupState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1148
    sput-boolean p0, Lcom/pantech/app/vegacamera/util/Util;->bPopupState:Z

    .line 1149
    return-void
.end method

.method public static SetGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V
    .locals 13
    .parameter "parameters"
    .parameter "loc"

    .prologue
    const-wide/16 v11, 0x3e8

    const-wide/16 v9, 0x0

    .line 1046
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 1049
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v11

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1052
    if-eqz p1, :cond_0

    .line 1053
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 1054
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 1055
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_1

    cmpl-double v7, v3, v9

    if-nez v7, :cond_1

    const/4 v0, 0x0

    .line 1057
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 1058
    const-string v7, "Util"

    const-string v8, "Set gps location"

    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-virtual {p0, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 1060
    invoke-virtual {p0, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 1061
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1063
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v7

    invoke-virtual {p0, v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 1070
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_0

    .line 1073
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    div-long v5, v7, v11

    .line 1074
    .local v5, utcTimeSeconds:J
    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 1080
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    .end local v5           #utcTimeSeconds:J
    :cond_0
    :goto_2
    return-void

    .line 1055
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1068
    .restart local v0       #hasLatLon:Z
    :cond_2
    invoke-virtual {p0, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 1077
    :cond_3
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public static SetImageFlileNamer(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1346
    new-instance v0, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;

    sget v1, Lcom/pantech/app/vegacamera/R$string;->image_file_name_format:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/pantech/app/vegacamera/util/Util;->sImageFileNamer:Lcom/pantech/app/vegacamera/util/Util$ImageFileNamer;

    .line 1347
    return-void
.end method

.method public static SetLocalVoice(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "set"

    .prologue
    const/4 v4, 0x0

    .line 1481
    new-instance v0, Landroid/content/Intent;

    const-string v1, "kr.hcilab.sttproduct.IDRService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1482
    .local v0, i:Landroid/content/Intent;
    const-string v1, "package"

    const-string v2, "vegacamera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1484
    if-nez p0, :cond_0

    .line 1498
    :goto_0
    return-void

    .line 1488
    :cond_0
    if-eqz p1, :cond_1

    .line 1489
    const-string v1, "LocalVoiceOnOff"

    const-string v2, "1"

    invoke-static {p0, v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1490
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 1492
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1493
    const-string v1, "LocalVoiceOnOff"

    const-string v2, "0"

    invoke-static {p0, v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, p0

    .line 1494
    check-cast v1, Landroid/app/Activity;

    .line 1495
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->local_voice_recognition_unavailable_on_recording:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1494
    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static SetOrientation(Landroid/app/Activity;I)V
    .locals 1
    .parameter "activity"
    .parameter "degree"

    .prologue
    .line 1263
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 1264
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 1266
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    .line 1267
    sput p1, Lcom/pantech/app/vegacamera/util/Util;->toastDegree:I

    .line 1268
    return-void
.end method

.method public static SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I
    .locals 4
    .parameter "parameters"
    .parameter "cameraId"
    .parameter "orientation"

    .prologue
    .line 1031
    const/4 v1, 0x0

    .line 1032
    .local v1, rotation:I
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    .line 1033
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraHolder;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v2

    aget-object v0, v2, p1

    .line 1034
    .local v0, info:Landroid/hardware/Camera$CameraInfo;
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1035
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v2, p2

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    .line 1040
    .end local v0           #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 1041
    return v1

    .line 1037
    .restart local v0       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_1
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v2, p2

    rem-int/lit16 v1, v2, 0x168

    goto :goto_0
.end method

.method public static SetToastDegree(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 1259
    sput p0, Lcom/pantech/app/vegacamera/util/Util;->toastDegree:I

    .line 1260
    return-void
.end method

.method public static ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 6
    .parameter "activity"
    .parameter "message"
    .parameter "duration"

    .prologue
    const/16 v5, 0xc8

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 420
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->_MakeCustomToast(Landroid/app/Activity;)V

    .line 421
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastText:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 423
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    sget v1, Lcom/pantech/app/vegacamera/util/Util;->toastDegree:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 424
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 425
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->pt_toast_frame_holo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 427
    :cond_0
    sget v0, Lcom/pantech/app/vegacamera/util/Util;->toastDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 441
    :goto_0
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 442
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 443
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 444
    return-void

    .line 429
    :sswitch_0
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 432
    :sswitch_1
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 435
    :sswitch_2
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 438
    :sswitch_3
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0

    .line 427
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
        0x168 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;IZ)V
    .locals 6
    .parameter "activity"
    .parameter "message"
    .parameter "duration"
    .parameter "modifyBg"

    .prologue
    const/16 v5, 0xc8

    const/16 v4, 0x64

    const/4 v3, 0x0

    .line 449
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->_MakeCustomToast(Landroid/app/Activity;)V

    .line 450
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastText:Landroid/widget/TextView;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 452
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    sget v1, Lcom/pantech/app/vegacamera/util/Util;->toastDegree:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 453
    if-eqz p3, :cond_0

    .line 454
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :goto_0
    sget v0, Lcom/pantech/app/vegacamera/util/Util;->toastDegree:I

    sparse-switch v0, :sswitch_data_0

    .line 472
    :goto_1
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 473
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 474
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 475
    return-void

    .line 456
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->pt_toast_frame_holo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 460
    :sswitch_0
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 463
    :sswitch_1
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 466
    :sswitch_2
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/16 v1, 0x30

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 469
    :sswitch_3
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v5, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 458
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
        0x168 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ShowDisableCustomToast(Landroid/app/Activity;I)V
    .locals 7
    .parameter "activity"
    .parameter "stateId"

    .prologue
    const/16 v6, 0xc8

    const/16 v5, 0x64

    const/4 v4, 0x0

    .line 478
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showDisableCustomToast() stateId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, -0x1

    .line 481
    .local v0, resMessage:I
    packed-switch p1, :pswitch_data_0

    .line 550
    :goto_0
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->_MakeCustomToast(Landroid/app/Activity;)V

    .line 552
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 553
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastText:Landroid/widget/TextView;

    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 554
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    sget v2, Lcom/pantech/app/vegacamera/util/Util;->toastDegree:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 555
    sget v1, Lcom/pantech/app/vegacamera/util/Util;->toastDegree:I

    sparse-switch v1, :sswitch_data_0

    .line 569
    :goto_1
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 570
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    sget-object v2, Lcom/pantech/app/vegacamera/util/Util;->toastLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 571
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 572
    return-void

    .line 483
    :pswitch_0
    sget v0, Lcom/pantech/app/vegacamera/R$string;->spaceIsLow_content_int:I

    .line 484
    goto :goto_0

    .line 486
    :pswitch_1
    sget v0, Lcom/pantech/app/vegacamera/R$string;->spaceIsLow_content_ext:I

    .line 487
    goto :goto_0

    .line 489
    :pswitch_2
    sget v0, Lcom/pantech/app/vegacamera/R$string;->set_disable_front:I

    .line 490
    goto :goto_0

    .line 492
    :pswitch_3
    sget v0, Lcom/pantech/app/vegacamera/R$string;->set_disable:I

    .line 493
    goto :goto_0

    .line 495
    :pswitch_4
    sget v0, Lcom/pantech/app/vegacamera/R$string;->recoder_cancel:I

    .line 496
    goto :goto_0

    .line 498
    :pswitch_5
    sget v0, Lcom/pantech/app/vegacamera/R$string;->recoder_cancel_do_later:I

    .line 499
    goto :goto_0

    .line 501
    :pswitch_6
    sget v0, Lcom/pantech/app/vegacamera/R$string;->capture_liveshot:I

    .line 502
    goto :goto_0

    .line 504
    :pswitch_7
    sget v0, Lcom/pantech/app/vegacamera/R$string;->error_liveshot:I

    .line 505
    goto :goto_0

    .line 507
    :pswitch_8
    sget v0, Lcom/pantech/app/vegacamera/R$string;->short_to_save:I

    .line 508
    goto :goto_0

    .line 510
    :pswitch_9
    sget v0, Lcom/pantech/app/vegacamera/R$string;->cannot_exec_recording_during_phonecall:I

    .line 511
    goto :goto_0

    .line 513
    :pswitch_a
    sget v0, Lcom/pantech/app/vegacamera/R$string;->timelapseeffect_cancel:I

    .line 514
    goto :goto_0

    .line 516
    :pswitch_b
    sget v0, Lcom/pantech/app/vegacamera/R$string;->timelapse_cancel:I

    .line 517
    goto :goto_0

    .line 519
    :pswitch_c
    sget v0, Lcom/pantech/app/vegacamera/R$string;->effects_resolution:I

    .line 520
    goto :goto_0

    .line 522
    :pswitch_d
    sget v0, Lcom/pantech/app/vegacamera/R$string;->cannot_set_effectRecordng:I

    .line 523
    goto :goto_0

    .line 525
    :pswitch_e
    sget v0, Lcom/pantech/app/vegacamera/R$string;->recoder_fail:I

    .line 526
    goto :goto_0

    .line 528
    :pswitch_f
    sget v0, Lcom/pantech/app/vegacamera/R$string;->bestshot_change_orientation:I

    .line 529
    goto :goto_0

    .line 531
    :pswitch_10
    sget v0, Lcom/pantech/app/vegacamera/R$string;->bestshot_change_orientation:I

    .line 532
    goto :goto_0

    .line 534
    :pswitch_11
    sget v0, Lcom/pantech/app/vegacamera/R$string;->bestshot_change_resolution:I

    .line 535
    goto :goto_0

    .line 537
    :pswitch_12
    sget v0, Lcom/pantech/app/vegacamera/R$string;->burstshot_change_resolution:I

    .line 538
    goto :goto_0

    .line 540
    :pswitch_13
    sget v0, Lcom/pantech/app/vegacamera/R$string;->burstshot_noti_no_face:I

    .line 541
    goto :goto_0

    .line 543
    :pswitch_14
    sget v0, Lcom/pantech/app/vegacamera/R$string;->picbest_save_successed:I

    .line 544
    goto :goto_0

    .line 546
    :pswitch_15
    sget v0, Lcom/pantech/app/vegacamera/R$string;->deleted:I

    goto :goto_0

    .line 557
    :sswitch_0
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 560
    :sswitch_1
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v6, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 563
    :sswitch_2
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 566
    :sswitch_3
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v6, v4}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    .line 481
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_f
        :pswitch_c
        :pswitch_d
        :pswitch_15
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_5
        :pswitch_14
    .end packed-switch

    .line 555
    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
        0x168 -> :sswitch_0
    .end sparse-switch
.end method

.method public static ShowDisableToast(Landroid/app/Activity;I)V
    .locals 4
    .parameter "activity"
    .parameter "stateId"

    .prologue
    .line 369
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ShowDisableToast() stateId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/4 v0, -0x1

    .line 372
    .local v0, resMessage:I
    packed-switch p1, :pswitch_data_0

    .line 416
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 417
    return-void

    .line 374
    :pswitch_1
    sget v0, Lcom/pantech/app/vegacamera/R$string;->spaceIsLow_content_int:I

    .line 375
    goto :goto_0

    .line 377
    :pswitch_2
    sget v0, Lcom/pantech/app/vegacamera/R$string;->spaceIsLow_content_ext:I

    .line 378
    goto :goto_0

    .line 380
    :pswitch_3
    sget v0, Lcom/pantech/app/vegacamera/R$string;->set_disable_front:I

    .line 381
    goto :goto_0

    .line 383
    :pswitch_4
    sget v0, Lcom/pantech/app/vegacamera/R$string;->set_disable:I

    .line 384
    goto :goto_0

    .line 386
    :pswitch_5
    sget v0, Lcom/pantech/app/vegacamera/R$string;->recoder_cancel:I

    .line 387
    goto :goto_0

    .line 389
    :pswitch_6
    sget v0, Lcom/pantech/app/vegacamera/R$string;->recoder_cancel_do_later:I

    .line 390
    goto :goto_0

    .line 392
    :pswitch_7
    sget v0, Lcom/pantech/app/vegacamera/R$string;->capture_liveshot:I

    .line 393
    goto :goto_0

    .line 395
    :pswitch_8
    sget v0, Lcom/pantech/app/vegacamera/R$string;->error_liveshot:I

    .line 396
    goto :goto_0

    .line 398
    :pswitch_9
    sget v0, Lcom/pantech/app/vegacamera/R$string;->short_to_save:I

    .line 399
    goto :goto_0

    .line 401
    :pswitch_a
    sget v0, Lcom/pantech/app/vegacamera/R$string;->cannot_exec_recording_during_phonecall:I

    .line 402
    goto :goto_0

    .line 404
    :pswitch_b
    sget v0, Lcom/pantech/app/vegacamera/R$string;->timelapseeffect_cancel:I

    .line 405
    goto :goto_0

    .line 407
    :pswitch_c
    sget v0, Lcom/pantech/app/vegacamera/R$string;->timelapse_cancel:I

    .line 408
    goto :goto_0

    .line 410
    :pswitch_d
    sget v0, Lcom/pantech/app/vegacamera/R$string;->recoder_fail:I

    .line 411
    goto :goto_0

    .line 413
    :pswitch_e
    sget v0, Lcom/pantech/app/vegacamera/R$string;->bestshot_change_orientation:I

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x78
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static ShowFatalErrorAndFinish(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "messageId"
    .parameter "dispTime"

    .prologue
    .line 302
    const/4 v0, -0x1

    .line 304
    .local v0, resMessage:I
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    :goto_0
    return-void

    .line 308
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 310
    packed-switch p1, :pswitch_data_0

    .line 364
    :goto_1
    const-string v1, "Util"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showFatalErrorAndFinish() messageId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {p0, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 313
    :pswitch_0
    sget v0, Lcom/pantech/app/vegacamera/R$string;->cannot_connect_camera:I

    .line 314
    goto :goto_1

    .line 316
    :pswitch_1
    sget v0, Lcom/pantech/app/vegacamera/R$string;->cannot_exec_camera_here:I

    .line 317
    goto :goto_1

    .line 319
    :pswitch_2
    sget v0, Lcom/pantech/app/vegacamera/R$string;->cannot_exec_camera_during_phonecall:I

    .line 320
    goto :goto_1

    .line 322
    :pswitch_3
    sget v0, Lcom/pantech/app/vegacamera/R$string;->battery_low_before_preview:I

    .line 323
    goto :goto_1

    .line 325
    :pswitch_4
    sget v0, Lcom/pantech/app/vegacamera/R$string;->battery_low:I

    .line 326
    goto :goto_1

    .line 329
    :pswitch_5
    sget v0, Lcom/pantech/app/vegacamera/R$string;->access_sd_fail:I

    .line 330
    goto :goto_1

    .line 332
    :pswitch_6
    sget v0, Lcom/pantech/app/vegacamera/R$string;->usb_connected:I

    .line 333
    goto :goto_1

    .line 335
    :pswitch_7
    sget v0, Lcom/pantech/app/vegacamera/R$string;->go_over_size_limit:I

    .line 336
    goto :goto_1

    .line 338
    :pswitch_8
    sget v0, Lcom/pantech/app/vegacamera/R$string;->fail_to_save_jpeg:I

    .line 339
    goto :goto_1

    .line 341
    :pswitch_9
    sget v0, Lcom/pantech/app/vegacamera/R$string;->cannot_exec_camera_disabled_camera:I

    .line 342
    goto :goto_1

    .line 344
    :pswitch_a
    sget v0, Lcom/pantech/app/vegacamera/R$string;->cannot_exec_camera_app_crash:I

    .line 345
    goto :goto_1

    .line 347
    :pswitch_b
    sget v0, Lcom/pantech/app/vegacamera/R$string;->aot_finish_aotcamera:I

    .line 348
    goto :goto_1

    .line 350
    :pswitch_c
    sget v0, Lcom/pantech/app/vegacamera/R$string;->aot_unavailable_aotcamera_while_other_camera:I

    .line 351
    goto :goto_1

    .line 353
    :pswitch_d
    sget v0, Lcom/pantech/app/vegacamera/R$string;->aot_unavailable_aotcamera_while_media:I

    .line 354
    goto :goto_1

    .line 356
    :pswitch_e
    sget v0, Lcom/pantech/app/vegacamera/R$string;->aot_unavailable_aotcamera_while_gaze_recognition:I

    .line 357
    goto :goto_1

    .line 359
    :pswitch_f
    sget v0, Lcom/pantech/app/vegacamera/R$string;->cannot_exec_camera_here:I

    .line 360
    goto :goto_1

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static SoundPlay(Landroid/app/Activity;ILandroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .parameter "activity"
    .parameter "resource"
    .parameter "completionListener"

    .prologue
    .line 1198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/vegacamera/util/Util;->bRoop:Z

    .line 1199
    invoke-static {p0, p1}, Lcom/pantech/app/vegacamera/util/Util;->_SoundPoolLoad(Landroid/app/Activity;I)V

    .line 1200
    return-void
.end method

.method public static SoundPoolRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1189
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1190
    const-string v0, "Util"

    const-string v1, "SoundPoolRelease()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 1192
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1193
    sput-object v2, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    .line 1195
    :cond_0
    return-void
.end method

.method public static SoundRoopPlay(Landroid/app/Activity;IZ)V
    .locals 4
    .parameter "activity"
    .parameter "resource"
    .parameter "roop"

    .prologue
    .line 1203
    sput-boolean p2, Lcom/pantech/app/vegacamera/util/Util;->bRoop:Z

    .line 1204
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1205
    const-string v0, "Util"

    const-string v1, "soundPool soundPoolLoad : new soundPool"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    .line 1207
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 1209
    :cond_0
    invoke-static {p0, p1}, Lcom/pantech/app/vegacamera/util/Util;->_SoundPoolLoad(Landroid/app/Activity;I)V

    .line 1210
    return-void
.end method

.method public static SoundStop()V
    .locals 2

    .prologue
    .line 1213
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 1214
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/pantech/app/vegacamera/util/Util;->streamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 1215
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/pantech/app/vegacamera/util/Util;->streamID:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 1216
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1217
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    .line 1219
    :cond_0
    return-void
.end method

.method private static _ComputeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 11
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    .line 224
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 225
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 227
    .local v0, h:D
    if-gez p2, :cond_1

    move v2, v6

    .line 228
    .local v2, lowerBound:I
    :goto_0
    if-gez p1, :cond_2

    const/16 v3, 0x80

    .line 230
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 240
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 227
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 228
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 235
    .restart local v3       #upperBound:I
    :cond_3
    if-gez p2, :cond_4

    if-gez p1, :cond_4

    move v2, v6

    .line 236
    goto :goto_2

    .line 237
    :cond_4
    if-ltz p1, :cond_0

    move v2, v3

    .line 240
    goto :goto_2
.end method

.method private static _ComputeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 208
    invoke-static {p0, p1, p2}, Lcom/pantech/app/vegacamera/util/Util;->_ComputeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 211
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 212
    const/4 v1, 0x1

    .line 213
    .local v1, roundedSize:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 220
    :goto_1
    return v1

    .line 214
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    goto :goto_1
.end method

.method private static _IsBackCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    .line 984
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static _IsFrontCameraIntent(I)Z
    .locals 1
    .parameter "intentCameraId"

    .prologue
    const/4 v0, 0x1

    .line 980
    if-ne p0, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static _MakeCustomToast(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 575
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastLayout:Landroid/view/View;

    if-nez v1, :cond_0

    .line 576
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 577
    .local v0, inflater:Landroid/view/LayoutInflater;
    sget v2, Lcom/pantech/app/vegacamera/R$layout;->camera_toast:I

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toast_relative:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastLayout:Landroid/view/View;

    .line 578
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastLayout:Landroid/view/View;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->toast_rotate:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    sput-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastRotate:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 579
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastLayout:Landroid/view/View;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->toast_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/pantech/app/vegacamera/util/Util;->toastText:Landroid/widget/TextView;

    .line 581
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    if-nez v1, :cond_1

    .line 582
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/pantech/app/vegacamera/util/Util;->toast:Landroid/widget/Toast;

    .line 584
    :cond_1
    return-void
.end method

.method private static _ResizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "bmp"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1106
    const/4 v0, 0x0

    .line 1107
    .local v0, returnbmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1108
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1109
    const/4 p0, 0x0

    .line 1110
    return-object v0
.end method

.method private static _RotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"
    .parameter "mirror"

    .prologue
    const/high16 v3, 0x4000

    const/4 v2, 0x0

    .line 157
    if-nez p1, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p0, :cond_4

    .line 158
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 161
    .local v5, m:Landroid/graphics/Matrix;
    if-eqz p2, :cond_2

    .line 162
    const/high16 v0, -0x4080

    const/high16 v1, 0x3f80

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 163
    add-int/lit16 v0, p1, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 164
    if-eqz p1, :cond_1

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_5

    .line 165
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 172
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 174
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 178
    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 179
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_4

    .line 180
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    move-object p0, v7

    .line 187
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_4
    :goto_1
    return-object p0

    .line 166
    .restart local v5       #m:Landroid/graphics/Matrix;
    :cond_5
    const/16 v0, 0x5a

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_7

    .line 167
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 169
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid degrees="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static _SoundPoolLoad(Landroid/app/Activity;I)V
    .locals 4
    .parameter "activity"
    .parameter "resource"

    .prologue
    const/4 v3, 0x1

    .line 1165
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1166
    const-string v0, "Util"

    const-string v1, "sound pool load : new soundPool"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    .line 1168
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/pantech/app/vegacamera/util/Util;->mOnLoadCompleteListener:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 1170
    :cond_0
    const-string v0, "Util"

    const-string v1, "sound pool load"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0, p1, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/pantech/app/vegacamera/util/Util;->soundID:I

    .line 1172
    return-void
.end method

.method private static _SoundPoolPlay()V
    .locals 12

    .prologue
    const/4 v4, 0x1

    const v7, 0x3ecccccd

    const/high16 v2, 0x3f80

    .line 1176
    const-string v0, "Util"

    const-string v1, "Sound Pool Play"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1186
    :goto_0
    return-void

    .line 1181
    :cond_0
    sget-boolean v0, Lcom/pantech/app/vegacamera/util/Util;->bRoop:Z

    if-eqz v0, :cond_1

    .line 1182
    sget-object v0, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/pantech/app/vegacamera/util/Util;->soundID:I

    const/4 v5, -0x1

    move v3, v2

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    sput v0, Lcom/pantech/app/vegacamera/util/Util;->streamID:I

    goto :goto_0

    .line 1184
    :cond_1
    sget-object v5, Lcom/pantech/app/vegacamera/util/Util;->mSoundPool:Landroid/media/SoundPool;

    sget v6, Lcom/pantech/app/vegacamera/util/Util;->soundID:I

    const/4 v10, 0x0

    move v8, v7

    move v9, v4

    move v11, v2

    invoke-virtual/range {v5 .. v11}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private static _ThrowIfCameraDisabled(Landroid/content/Context;)V
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
    .line 272
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_GET_CAMERA_DISABLED:Z

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 274
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    new-instance v1, Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;

    invoke-direct {v1}, Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;-><init>()V

    throw v1

    .line 278
    .end local v0           #dpm:Landroid/app/admin/DevicePolicyManager;
    :cond_0
    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 1175
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->_SoundPoolPlay()V

    return-void
.end method

.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 597
    .local p0, object:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_0

    .line 598
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 599
    :cond_0
    return-object p0
.end method

.method public static checkNull(Ljava/lang/Object;)Z
    .locals 1
    .parameter "obj"

    .prologue
    .line 603
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .parameter "x"
    .parameter "min"
    .parameter "max"

    .prologue
    .line 627
    if-le p0, p2, :cond_0

    .line 631
    .end local p2
    :goto_0
    return p2

    .line 629
    .restart local p2
    :cond_0
    if-ge p0, p1, :cond_1

    move p2, p1

    .line 630
    goto :goto_0

    :cond_1
    move p2, p0

    .line 631
    goto :goto_0
.end method

.method public static distance(FFFF)F
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 621
    sub-float v0, p0, p2

    .line 622
    .local v0, dx:F
    sub-float v1, p1, p3

    .line 623
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 607
    if-eq p0, p1, :cond_2

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getOptimalPreviewSize(ILjava/util/List;D)Landroid/hardware/Camera$Size;
    .locals 17
    .parameter "targetHeight"
    .parameter
    .parameter "targetRatio"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;D)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 691
    .local p1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-wide v0, 0x3f50624dd2f1a9fcL

    .line 693
    .local v0, ASPECT_TOLERANCE:D
    if-nez p1, :cond_1

    .line 694
    const/4 v8, 0x0

    .line 744
    :cond_0
    :goto_0
    return-object v8

    .line 696
    :cond_1
    const/4 v8, 0x0

    .line 697
    .local v8, optimalSize:Landroid/hardware/Camera$Size;
    const-wide v6, 0x7fefffffffffffffL

    .line 706
    .local v6, minDiff:D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 731
    if-nez v8, :cond_4

    .line 732
    const-string v12, "Util"

    const-string v13, "No preview size match the aspect ratio"

    invoke-static {v12, v13}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-wide v6, 0x7fefffffffffffffL

    .line 734
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_8

    .line 741
    :cond_4
    if-eqz v8, :cond_0

    .line 742
    const-string v12, "Util"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "optimalSize.width = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v8, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " optimalSize.height = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 707
    .local v11, size:Landroid/hardware/Camera$Size;
    iget v13, v11, Landroid/hardware/Camera$Size;->width:I

    int-to-double v13, v13

    iget v15, v11, Landroid/hardware/Camera$Size;->height:I

    int-to-double v15, v15

    div-double v9, v13, v15

    .line 708
    .local v9, ratio:D
    const-wide v4, 0x3ff5555555555555L

    .line 709
    .local v4, exceptRatio:D
    const-wide v2, 0x3f9eb851eb851eb8L

    .line 711
    .local v2, RATIO_ANGLE_TOLERANCE:D
    sub-double v13, v9, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3f50624dd2f1a9fcL

    cmpl-double v13, v13, v15

    if-lez v13, :cond_6

    .line 715
    const-wide v13, 0x3ff5555555555555L

    cmpl-double v13, v9, v13

    if-nez v13, :cond_7

    const-wide v13, 0x3ff5555555555555L

    sub-double v13, v13, p2

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v15, 0x3f9eb851eb851eb8L

    cmpg-double v13, v13, v15

    if-gez v13, :cond_7

    .line 716
    const-string v13, "Util"

    const-string v14, "optimalSize is not continue"

    invoke-static {v13, v14}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :cond_6
    iget v13, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int v13, v13, p0

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v6

    if-gez v13, :cond_2

    .line 724
    move-object v8, v11

    .line 725
    iget v13, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int v13, v13, p0

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v6, v13

    goto/16 :goto_1

    .line 718
    :cond_7
    const-string v13, "Util"

    const-string v14, "optimalSize is continue"

    invoke-static {v13, v14}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 734
    .end local v2           #RATIO_ANGLE_TOLERANCE:D
    .end local v4           #exceptRatio:D
    .end local v9           #ratio:D
    .end local v11           #size:Landroid/hardware/Camera$Size;
    :cond_8
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/Camera$Size;

    .line 735
    .restart local v11       #size:Landroid/hardware/Camera$Size;
    iget v13, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int v13, v13, p0

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v13, v13

    cmpg-double v13, v13, v6

    if-gez v13, :cond_3

    .line 736
    move-object v8, v11

    .line 737
    iget v13, v11, Landroid/hardware/Camera$Size;->height:I

    sub-int v13, v13, p0

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    int-to-double v6, v13

    goto/16 :goto_2
.end method

.method public static nextPowerOf2(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 611
    add-int/lit8 p0, p0, -0x1

    .line 612
    ushr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 613
    ushr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 614
    ushr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 615
    ushr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 616
    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 617
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method public static setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "keyName"
    .parameter "value"
    .parameter "prop"

    .prologue
    .line 1501
    if-nez p0, :cond_0

    .line 1516
    :goto_0
    return-void

    .line 1504
    :cond_0
    const-string v3, "Util"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SetLocalVoice setValue "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1506
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1507
    .local v1, cv:Landroid/content/ContentValues;
    const-string v3, "_name"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v3, "_value"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    const-string v3, "_isPro"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :try_start_0
    const-string v3, "content://com.pantech.apps.SkySetting.SkySettingsOracle"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1513
    :catch_0
    move-exception v2

    .line 1514
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "Util"

    const-string v4, "setValue IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startCameraActivity(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 4
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1519
    .local p1, className:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1520
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1521
    const/high16 v2, 0x200

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1525
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraHolder;->keep()V

    .line 1528
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :goto_0
    const/high16 v2, 0x10a

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1535
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1531
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
