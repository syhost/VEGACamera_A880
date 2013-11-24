.class abstract Lcom/pantech/app/vegacamera/data/AppDataBase;
.super Ljava/lang/Object;
.source "AppDataBase.java"


# static fields
.field public static final BURST_IN_PROGRESS:I = 0x7

.field public static final CURRENT_CAMERA_CAPTURE:Z = false

.field public static final CURRENT_CAMERA_FRONT:I = 0x1

.field public static final CURRENT_CAMERA_MAIN:I = 0x0

.field public static final CURRENT_OFF:Ljava/lang/String; = "off"

.field public static final CURRENT_ON:Ljava/lang/String; = "on"

.field public static final CURRENT_VIDEO_RECORD:Z = true

.field public static final DIALOG_DISP_TIME:I = 0x3e8

.field public static final EFFECT_BACKDROPPER:I = 0x2

.field public static final EFFECT_FACE_EFFECT_DEFAULT:I = 0x2

.field public static final EFFECT_FACE_EFFECT_MAX:I = 0xa

.field public static final EFFECT_GF_BIG_EYES:I = 0x1

.field public static final EFFECT_GF_BIG_MOUTH:I = 0x2

.field public static final EFFECT_GF_BIG_NOSE:I = 0x4

.field public static final EFFECT_GF_SMALL_EYES:I = 0x5

.field public static final EFFECT_GF_SMALL_MOUTH:I = 0x3

.field public static final EFFECT_GF_SQUEEZE:I = 0x0

.field public static final EFFECT_GOOFY_FACE:I = 0x1

.field public static final EFFECT_MSG_CAPTURE_DONE:I = 0x6

.field public static final EFFECT_MSG_DONE_LEARNING:I = 0x1

.field public static final EFFECT_MSG_EFFECTS_RELEASE:I = 0x5

.field public static final EFFECT_MSG_EFFECTS_STOPPED:I = 0x3

.field public static final EFFECT_MSG_RECORDING_DONE:I = 0x4

.field public static final EFFECT_MSG_STARTED_LEARNING:I = 0x0

.field public static final EFFECT_MSG_SWITCHING_EFFECT:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final FOCUSING:I = 0x2

.field public static final GOTO_BESTFACE_FOR_BESTPIC_EDITOR:I = 0x64

.field public static final HANDLE_AUDIOSYSTEM_START_CAPTURE:I = 0x30

.field public static final HANDLE_AUDIOSYSTEM_STOP_CAPTURE:I = 0x31

.field public static final HANDLE_CAMERA_APP_CRASH:I = 0x9

.field public static final HANDLE_CAMERA_DISABLED:I = 0x8

.field public static final HANDLE_CAMERA_OPEN_DONE:I = 0x5

.field public static final HANDLE_CAMERA_START_PREVIEW:I = 0xa

.field public static final HANDLE_CHECK_DISPLAY_ROTATION:I = 0x3

.field public static final HANDLE_DIALOG_DISP_TIME:I = 0x3e

.field public static final HANDLE_EFFECT_RECORDING_STOP_COMPLETE:I = 0x20

.field public static final HANDLE_EFFECT_RECORDING_STOP_ENABLE:I = 0x21

.field public static final HANDLE_FACE_CAPTURE_COMPLETE:I = 0x1f

.field public static final HANDLE_GOTO_IDLE:I = 0x3f

.field public static final HANDLE_GOTO_QUICKVIEW:I = 0x43

.field public static final HANDLE_MSG_BATTERY_LOWBAT_AFTER_PREVIEW:I = 0x2e

.field public static final HANDLE_MSG_CHECKSTORAGE:I = 0x3d

.field public static final HANDLE_MSG_GENERATE_FINAL_MOSAIC_ERROR:I = 0x2a

.field public static final HANDLE_MSG_LOW_RES_FINAL_MOSAIC_READY:I = 0x29

.field public static final HANDLE_MSG_MODE_CHANGED_ACTION:I = 0x2f

.field public static final HANDLE_MSG_RESET_TO_PREVIEW:I = 0x2b

.field public static final HANDLE_MSG_RESET_TO_PREVIEW_WITH_THUMBNAIL:I = 0x2d

.field public static final HANDLE_MSG_TOO_FAST_TEXT_SHOW:I = 0x2c

.field public static final HANDLE_OPEN_CAMERA_FAIL:I = 0x7

.field public static final HANDLE_RESTART_FOCUS_LOCK:I = 0xb

.field public static final HANDLE_SETUP_MOSIC_VIEW:I = 0x32

.field public static final HANDLE_SETUP_PREVIEW:I = 0x1

.field public static final HANDLE_SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x2

.field public static final HANDLE_SHOW_TAP_TO_FOCUS_TOAST:I = 0x4

.field public static final HANDLE_START_PREVIEW_DONE:I = 0x6

.field public static final HANDLE_THUMBNAIL_GET_COMPLETE:I = 0x41

.field public static final HANDLE_UPDATE_THUMBNAIL:I = 0x40

.field public static final HANDLE_VIDEO_RECORD_ENABLE_CAPTURE:I = 0x19

.field public static final HANDLE_VIDEO_RECORD_INFO_FILESIZE:I = 0x1a

.field public static final HANDLE_VIDEO_RECORD_SCAN_COMPLETE:I = 0x17

.field public static final HANDLE_VIDEO_RECORD_START_FAIL:I = 0x1c

.field public static final HANDLE_VIDEO_RECORD_STOP_DONE:I = 0x15

.field public static final HANDLE_VIDEO_RECORD_STOP_FAIL:I = 0x18

.field public static final HANDLE_VIDEO_RECORD_TIME_TICK:I = 0x16

.field public static final HANDLE_VIDEO_REGISTER_FILE:I = 0x1b

.field public static final IDLE_TIME:I = 0x1d4c0

.field public static final INTENT_ATTACH_CONTENTS_CAMCORDER:I = 0x6

.field public static final INTENT_ATTACH_CONTENTS_CAMERA:I = 0x3

.field public static final INTENT_IMAGE_CAPTURE:I = 0x1

.field public static final INTENT_NONE:I = 0x0

.field public static final INTENT_STILL_IMAGE_CAMERA:I = 0x2

.field public static final INTENT_VIDEO_CAMERA:I = 0x5

.field public static final INTENT_VIDEO_CAPTURE:I = 0x4

.field public static final LAUNCH_SAVE_LOCATION_PREF:I = 0x42

.field public static final LOWBATTERY_VALUE_5:I = 0x5

.field public static final PANORAMA_CAPTURE_STATE_MOSAIC:I = 0x1

.field public static final PANORAMA_CAPTURE_STATE_VIEWFINDER:I = 0x0

.field public static final PREVIEW_ACTIVE:I = 0x1

.field public static final PREVIEW_STOPPED:I = 0x0

.field public static final RECORDING_IN_PROGRESS:I = 0x6

.field public static final REQUEST_CROP:I = 0x3e8

.field public static final SCREEN_DELAY:I = 0x1d4c0

.field public static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field public static final STATE_CONFIGURE:I = 0x0

.field public static final STATE_PREVIEW:I = 0x3

.field public static final STATE_RECORD:I = 0x4

.field public static final STATE_RELEASED:I = 0x5

.field public static final STATE_STARTING_PREVIEW:I = 0x2

.field public static final STATE_WAITING_FOR_SURFACE:I = 0x1

.field public static final SWITCHING_CAMERA:I = 0x5

.field public static final TIMER_SHOT_IN_PROGRESS:I = 0x4

.field public static final UPDATE_PARAM_ALL:I = -0x1

.field public static final UPDATE_PARAM_ANTI_BANDING:J

.field public static final UPDATE_PARAM_ANTI_SHAKE:J

.field public static final UPDATE_PARAM_AUTO_EXPOSURE:J

.field public static final UPDATE_PARAM_BEAUTY:J

.field public static final UPDATE_PARAM_BRIGHTNESS:J

.field public static final UPDATE_PARAM_BURST_SHOT:J

.field public static final UPDATE_PARAM_COLOR_EFFECT:J

.field public static final UPDATE_PARAM_COLOR_EXTRACT:J

.field public static final UPDATE_PARAM_FLASH:J

.field public static final UPDATE_PARAM_FOCUS_MODE:J

.field public static final UPDATE_PARAM_HDR:J

.field public static final UPDATE_PARAM_INITIALIZE:J

.field public static final UPDATE_PARAM_IPL_EFFECT:J

.field public static final UPDATE_PARAM_ISO:J

.field public static final UPDATE_PARAM_JPEG_QUALITY:J

.field public static final UPDATE_PARAM_MIRROR:J

.field public static final UPDATE_PARAM_OJT:J

.field public static final UPDATE_PARAM_OTHERS:J

.field public static final UPDATE_PARAM_PICTURESIZE:J

.field public static final UPDATE_PARAM_PREFERENCE:J

.field public static final UPDATE_PARAM_REMOTE_ZOOM_ENABLE:J

.field public static final UPDATE_PARAM_SCENE_MODE:J

.field public static final UPDATE_PARAM_SOUND_PLAY:J

.field public static final UPDATE_PARAM_TEXT:J

.field public static final UPDATE_PARAM_VIDEOSIZE:J

.field public static final UPDATE_PARAM_WDR:J

.field public static final UPDATE_PARAM_WHITE_BALANCE:J

.field public static final UPDATE_PARAM_ZOOM:J

.field public static final UPDATE_PARAM_ZSL_MODE:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x4000

    .line 110
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_INITIALIZE:J

    .line 111
    const-wide/high16 v0, 0x3ff0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_ZOOM:J

    .line 112
    invoke-static {v2, v3, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_PREFERENCE:J

    .line 113
    const-wide/high16 v0, 0x4008

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_WHITE_BALANCE:J

    .line 114
    const-wide/high16 v0, 0x4010

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_SCENE_MODE:J

    .line 115
    const-wide/high16 v0, 0x4014

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_COLOR_EFFECT:J

    .line 116
    const-wide/high16 v0, 0x4018

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_WDR:J

    .line 117
    const-wide/high16 v0, 0x401c

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_HDR:J

    .line 118
    const-wide/high16 v0, 0x4020

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_FLASH:J

    .line 119
    const-wide/high16 v0, 0x4022

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_ANTI_BANDING:J

    .line 120
    const-wide/high16 v0, 0x4024

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_ZSL_MODE:J

    .line 121
    const-wide/high16 v0, 0x4026

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_OJT:J

    .line 122
    const-wide/high16 v0, 0x4028

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_FOCUS_MODE:J

    .line 123
    const-wide/high16 v0, 0x402a

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_AUTO_EXPOSURE:J

    .line 124
    const-wide/high16 v0, 0x402c

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_ANTI_SHAKE:J

    .line 125
    const-wide/high16 v0, 0x402e

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_BRIGHTNESS:J

    .line 126
    const-wide/high16 v0, 0x4030

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_BEAUTY:J

    .line 127
    const-wide/high16 v0, 0x4031

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_COLOR_EXTRACT:J

    .line 128
    const-wide/high16 v0, 0x4032

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_SOUND_PLAY:J

    .line 129
    const-wide/high16 v0, 0x4033

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_PICTURESIZE:J

    .line 130
    const-wide/high16 v0, 0x4034

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_JPEG_QUALITY:J

    .line 131
    const-wide/high16 v0, 0x4035

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_OTHERS:J

    .line 132
    const-wide/high16 v0, 0x4036

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_VIDEOSIZE:J

    .line 133
    const-wide/high16 v0, 0x4037

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_IPL_EFFECT:J

    .line 134
    const-wide/high16 v0, 0x4038

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_REMOTE_ZOOM_ENABLE:J

    .line 135
    const-wide/high16 v0, 0x4039

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_TEXT:J

    .line 136
    const-wide/high16 v0, 0x403a

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_MIRROR:J

    .line 137
    const-wide/high16 v0, 0x403b

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_BURST_SHOT:J

    .line 138
    const-wide/high16 v0, 0x403c

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    sput-wide v0, Lcom/pantech/app/vegacamera/data/AppDataBase;->UPDATE_PARAM_ISO:J

    .line 190
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;
.end method

.method protected abstract GetParam()Landroid/hardware/Camera$Parameters;
.end method

.method protected abstract GetPreferenceGroup()Lcom/pantech/app/vegacamera/preference/PreferenceGroup;
.end method

.method protected abstract SetComobPref(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)V
.end method

.method protected abstract SetParam(Landroid/hardware/Camera$Parameters;)V
.end method

.method protected abstract SetPreferenceGroup(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;)V
.end method
