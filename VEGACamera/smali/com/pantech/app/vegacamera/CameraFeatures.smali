.class public Lcom/pantech/app/vegacamera/CameraFeatures;
.super Ljava/lang/Object;
.source "CameraFeatures.java"


# static fields
.field private static final CAMERA_FEATURES:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final CAMERA_FEATURE_RESOURCE:I = 0x0

.field public static final FEATURE_FIXED_CAMERA_DEFAULT_SIZE:Ljava/lang/String; = "camera-default-size"

.field public static final FEATURE_SUPPORTED:Ljava/lang/String; = "yes"

.field public static final FEATURE_SUPPORTED_BESTSHOT_ORIENTATION:Ljava/lang/String; = "bestshot-orientation"

.field public static final FEATURE_SUPPORTED_CARTOON:Ljava/lang/String; = "cartoon"

.field public static final FEATURE_SUPPORTED_FACE_TAGGING:Ljava/lang/String; = "face-tagging"

.field public static final FEATURE_SUPPROTED_BEAUTY_SHOT:Ljava/lang/String; = "beauty-shot"

.field public static final FEATURE_SUPPROTED_BESTFACE_SHOT:Ljava/lang/String; = "bestface-shot"

.field public static final FEATURE_SUPPROTED_COLOR_EXTRACTION:Ljava/lang/String; = "color-extraction"

.field public static final FEATURE_SUPPROTED_DUAL_SHOT:Ljava/lang/String; = "dual-shot"

.field public static final FEATURE_SUPPROTED_FIXED_CAMERA_DEFAULT_SIZE:Ljava/lang/String; = "fixed-camera-default-size"

.field public static final FEATURE_SUPPROTED_HARDWARE_ISP:Ljava/lang/String; = "hardware-ISP"

.field public static final FEATURE_SUPPROTED_IA_MODE:Ljava/lang/String; = "ia-mode"

.field public static final FEATURE_SUPPROTED_NOTE:Ljava/lang/String; = "note"

.field public static final FEATURE_SUPPROTED_REMOTE:Ljava/lang/String; = "remote"

.field public static final FEATURE_SUPPROTED_SELF_SHOT:Ljava/lang/String; = "self-shot"

.field public static final FEATURE_SUPPROTED_SMART_COVER:Ljava/lang/String; = "smart-cover"

.field public static final FEATURE_SUPPROTED_TIMER_SHOT_ATT:Ljava/lang/String; = "timer-shot-att"

.field public static final FEATURE_SUPPROTED_USED_ANTIBANDING:Ljava/lang/String; = "used-antibanding"

.field public static final FEATURE_SUPPROTED_USED_FACE_DETECTION:Ljava/lang/String; = "used-face-detection"

.field public static final FEATURE_SUPPROTED_USED_GESTURE_LT_AF_AE_LOCK:Ljava/lang/String; = "used-gesture-longtap-af-ae-lock"

.field public static final FEATURE_SUPPROTED_USED_METADATACB:Ljava/lang/String; = "used-metadatacb"

.field public static final FEATURE_SUPPROTED_USED_OBJECT_TRACKING:Ljava/lang/String; = "used-object-tracking"

.field public static final FEATURE_SUPPROTED_USED_ZOOM_CTL_KEY:Ljava/lang/String; = "used-zoom-ctl-key"

.field public static final FEATURE_SUPPROTED_VOICE_RECOGNITION:Ljava/lang/String; = "voice-recognition"

.field public static final FRATURE_SUPPROTED_USED_BURST_SOUND:Ljava/lang/String; = "burst-sound"

.field private static final TAG:Ljava/lang/String; = "CameraFeatures"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/pantech/app/vegacamera/R$xml;->camera_features:I

    sput v0, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURE_RESOURCE:I

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method

.method public static Initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 63
    sget v0, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURE_RESOURCE:I

    invoke-static {p0, v0}, Lcom/pantech/app/vegacamera/CameraFeatures;->_LoadCameraFeatures(Landroid/content/Context;I)V

    .line 64
    return-void
.end method

.method public static final IsGetFixedCameraDefaultSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    sget-object v0, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v1, "camera-default-size"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final IsSupportedBeautyShot()Z
    .locals 3

    .prologue
    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "beauty-shot"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    const/4 v0, 0x1

    .line 98
    :cond_0
    return v0
.end method

.method public static final IsSupportedBestFaceShot()Z
    .locals 3

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "bestface-shot"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :cond_0
    return v0
.end method

.method public static final IsSupportedBestshotOrientation()Z
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "bestshot-orientation"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const/4 v0, 0x1

    .line 231
    :cond_0
    return v0
.end method

.method public static final IsSupportedCartoon()Z
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x0

    .line 159
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "cartoon"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const/4 v0, 0x1

    .line 162
    :cond_0
    return v0
.end method

.method public static final IsSupportedColorExtraction()Z
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "color-extraction"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 74
    :cond_0
    return v0
.end method

.method public static final IsSupportedDualShot()Z
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "dual-shot"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const/4 v0, 0x1

    .line 138
    :cond_0
    return v0
.end method

.method public static final IsSupportedFaceTagging()Z
    .locals 3

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "face-tagging"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    const/4 v0, 0x1

    .line 154
    :cond_0
    return v0
.end method

.method public static final IsSupportedFixedCameraDefaultSize()Z
    .locals 3

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "fixed-camera-default-size"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const/4 v0, 0x1

    .line 187
    :cond_0
    return v0
.end method

.method public static final IsSupportedHardWareISP()Z
    .locals 3

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "hardware-ISP"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    const/4 v0, 0x1

    .line 256
    :cond_0
    return v0
.end method

.method public static final IsSupportedIAMode()Z
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "ia-mode"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 130
    :cond_0
    return v0
.end method

.method public static final IsSupportedNote()Z
    .locals 3

    .prologue
    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "note"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 122
    :cond_0
    return v0
.end method

.method public static final IsSupportedRemote()Z
    .locals 3

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "remote"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :cond_0
    return v0
.end method

.method public static final IsSupportedSelfShot()Z
    .locals 3

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "self-shot"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    const/4 v0, 0x1

    .line 114
    :cond_0
    return v0
.end method

.method public static final IsSupportedSmartCover()Z
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "smart-cover"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 146
    :cond_0
    return v0
.end method

.method public static final IsSupportedTimerShotATT()Z
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    .line 176
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "timer-shot-att"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 179
    :cond_0
    return v0
.end method

.method public static final IsSupportedUsedAntiBanding()Z
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "used-antibanding"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 207
    :cond_0
    return v0
.end method

.method public static final IsSupportedUsedBurstSound()Z
    .locals 3

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "burst-sound"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const/4 v0, 0x1

    .line 247
    :cond_0
    return v0
.end method

.method public static final IsSupportedUsedFaceDetection()Z
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "used-face-detection"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const/4 v0, 0x1

    .line 239
    :cond_0
    return v0
.end method

.method public static final IsSupportedUsedGestureLongTapAfAeLock()Z
    .locals 3

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "used-gesture-longtap-af-ae-lock"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 199
    :cond_0
    return v0
.end method

.method public static final IsSupportedUsedMetaDataCb()Z
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "used-metadatacb"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    const/4 v0, 0x1

    .line 215
    :cond_0
    return v0
.end method

.method public static final IsSupportedUsedObjectTracking()Z
    .locals 3

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "used-object-tracking"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 223
    :cond_0
    return v0
.end method

.method public static final IsSupportedUsedZoomCtlKey()Z
    .locals 3

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "used-zoom-ctl-key"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 171
    :cond_0
    return v0
.end method

.method public static final IsSupportedVoiceRecognition()Z
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, supported:Z
    sget-object v1, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    const-string v2, "voice-recognition"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "yes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v0, 0x1

    .line 82
    :cond_0
    return v0
.end method

.method private static final _BeginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .parameter "parser"
    .parameter "firstElementName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 263
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .local v0, type:I
    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 267
    :cond_1
    if-eq v0, v2, :cond_2

    .line 268
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 271
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 272
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected start tag: found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_3
    return-void
.end method

.method private static _LoadCameraFeatures(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "itemRes"

    .prologue
    const/4 v11, 0x1

    .line 278
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 279
    .local v6, parser:Landroid/content/res/XmlResourceParser;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 280
    .local v1, attrs:Landroid/util/AttributeSet;
    const-string v8, "camera-features"

    invoke-static {v6, v8}, Lcom/pantech/app/vegacamera/CameraFeatures;->_BeginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 282
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 285
    .local v2, depth:I
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v8, 0x3

    if-ne v7, v8, :cond_1

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v8

    if-le v8, v2, :cond_2

    .line 286
    :cond_1
    if-ne v7, v11, :cond_3

    .line 304
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #depth:I
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #type:I
    :cond_2
    :goto_1
    return-void

    .line 287
    .restart local v1       #attrs:Landroid/util/AttributeSet;
    .restart local v2       #depth:I
    .restart local v6       #parser:Landroid/content/res/XmlResourceParser;
    .restart local v7       #type:I
    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 291
    sget-object v8, Lcom/pantech/app/vegacamera/R$styleable;->CameraFeatures:[I

    invoke-virtual {p0, v1, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 292
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    .local v4, feature_name:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, feature_supproted:Ljava/lang/String;
    const-string v8, "CameraFeatures"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Feature name : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  Feature supported : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    sget-object v8, Lcom/pantech/app/vegacamera/CameraFeatures;->CAMERA_FEATURES:Ljava/util/HashMap;

    invoke-virtual {v8, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 299
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attrs:Landroid/util/AttributeSet;
    .end local v2           #depth:I
    .end local v4           #feature_name:Ljava/lang/String;
    .end local v5           #feature_supproted:Ljava/lang/String;
    .end local v6           #parser:Landroid/content/res/XmlResourceParser;
    .end local v7           #type:I
    :catch_0
    move-exception v3

    .line 300
    .local v3, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v8, "CameraFeatures"

    const-string v9, "Got exception parsing CameraFeature Item."

    invoke-static {v8, v9, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 301
    .end local v3           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v3

    .line 302
    .local v3, e:Ljava/io/IOException;
    const-string v8, "CameraFeatures"

    const-string v9, "Got exception parsing CameraFeature Item."

    invoke-static {v8, v9, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
