.class public Lcom/pantech/app/vegacamera/Camera;
.super Lcom/pantech/app/vegacamera/ActivityBase;
.source "Camera.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICameraOperator$Operator;
.implements Lcom/pantech/app/vegacamera/operator/IBroadcastManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/Camera$MainHandler;,
        Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;
    }
.end annotation


# static fields
.field public static final BEAUTY_INDEX:I = 0x7

.field public static final BEST_FACE_INDEX:I = 0x2

.field public static final CAMERA_INDEX:I = 0x0

.field public static final EFFECTS_INDEX:I = 0xb

.field public static final HDR_INDEX:I = 0x6

.field public static final INDEX_ROOT_VIEWGROUP:I = 0x0

.field public static final INTELLIGENT_INDEX:I = 0x1

.field public static final INTENT_ATTACH_CONTENTS_CAMCORDER:I = 0x6

.field public static final INTENT_ATTACH_CONTENTS_CAMERA:I = 0x3

.field public static final INTENT_IMAGE_CAPTURE:I = 0x1

.field public static final INTENT_NONE:I = 0x0

.field public static final INTENT_PERFORMANCE_TEST:I = 0x7

.field public static final INTENT_SHARPNESS_TEST:I = 0x8

.field public static final INTENT_STILL_IMAGE_CAMERA:I = 0x2

.field public static final INTENT_VIDEO_CAMERA:I = 0x4

.field public static final INTENT_VIDEO_CAPTURE:I = 0x5

.field public static final PANORAMA_INDEX:I = 0x9

.field public static final REMOTE_INDEX:I = 0x3

.field public static final SELF_INDEX:I = 0x4

.field public static final TEXT_INDEX:I = 0x8

.field public static final VIDEO_INDEX:I = 0xa

.field public static final VIDEO_RECORD_INDEX:I = 0xc


# instance fields
.field private final TAG:Ljava/lang/String;

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

.field private bLowBattery:Z

.field private iCurrentModuleIndex:I

.field private iOrientation:I

.field private iOrientationCompensation:I

.field private iOrientationListener:Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;

.field private mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field private mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

.field private mFadeInCameraScreenNail:Ljava/lang/Runnable;

.field private mFrame:Landroid/widget/FrameLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mModuleChangeAnimator:Landroid/animation/ObjectAnimator;

.field private mOnFrameDrawn:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/ActivityBase;-><init>()V

    .line 37
    const-string v0, "VegaCamera"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->TAG:Ljava/lang/String;

    .line 63
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    .line 65
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 66
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    .line 67
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mFrame:Landroid/widget/FrameLayout;

    .line 68
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mModuleChangeAnimator:Landroid/animation/ObjectAnimator;

    .line 69
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationListener:Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;

    .line 71
    iput v2, p0, Lcom/pantech/app/vegacamera/Camera;->iCurrentModuleIndex:I

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientation:I

    .line 73
    iput v2, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationCompensation:I

    .line 75
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->alVolatileData:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Lcom/pantech/app/vegacamera/Camera$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Camera$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Camera;Lcom/pantech/app/vegacamera/Camera$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mHandler:Landroid/os/Handler;

    .line 702
    new-instance v0, Lcom/pantech/app/vegacamera/Camera$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Camera$1;-><init>(Lcom/pantech/app/vegacamera/Camera;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mOnFrameDrawn:Ljava/lang/Runnable;

    .line 709
    new-instance v0, Lcom/pantech/app/vegacamera/Camera$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Camera$2;-><init>(Lcom/pantech/app/vegacamera/Camera;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mFadeInCameraScreenNail:Ljava/lang/Runnable;

    .line 36
    return-void
.end method

.method private _CheckIntent()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 162
    const-string v0, "android.media.action.IMAGE_CAPTURE"

    .line 164
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v2, "VegaCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_CheckIntent action:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 169
    const/4 v1, 0x1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 170
    :cond_1
    const-string v2, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 171
    const/4 v1, 0x2

    .line 173
    .local v1, nResult:I
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetPerformTestIntent(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 174
    const/4 v1, 0x7

    .line 175
    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetSharpnessTestIntent(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    const/16 v1, 0x8

    .line 177
    goto :goto_0

    .line 178
    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    .line 182
    .end local v1           #nResult:I
    :cond_4
    const-string v2, "pantech.SKYCamera.action.ATTACH_CONTENTS_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 183
    const/4 v1, 0x3

    goto :goto_0

    .line 184
    :cond_5
    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 185
    const/4 v1, 0x5

    goto :goto_0

    .line 186
    :cond_6
    const-string v2, "android.media.action.VIDEO_CAMERA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 187
    const/4 v1, 0x4

    goto :goto_0

    .line 188
    :cond_7
    const-string v2, "pantech.SKYCamera.action.ATTACH_CONTENTS_CAMCORDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const/4 v1, 0x6

    goto :goto_0
.end method

.method private _CloseModule(Lcom/pantech/app/vegacamera/operator/ICamera;)V
    .locals 1
    .parameter "module"

    .prologue
    .line 633
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnPause()V

    .line 634
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnModeDestroy()V

    .line 635
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 636
    return-void
.end method

.method private _ConvertModeToModule(Ljava/lang/String;)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 726
    .local v0, module:I
    const-string v1, "pref_mode_normal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 727
    const/4 v0, 0x0

    .line 750
    :cond_0
    :goto_0
    return v0

    .line 728
    :cond_1
    const-string v1, "pref_mode_intelligent"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 729
    const/4 v0, 0x1

    .line 730
    goto :goto_0

    :cond_2
    const-string v1, "pref_mode_best_face"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 731
    const/4 v0, 0x2

    .line 732
    goto :goto_0

    :cond_3
    const-string v1, "pref_mode_remote"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 733
    const/4 v0, 0x3

    .line 734
    goto :goto_0

    :cond_4
    const-string v1, "pref_mode_self"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 735
    const/4 v0, 0x4

    .line 736
    goto :goto_0

    :cond_5
    const-string v1, "pref_mode_hdr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 737
    const/4 v0, 0x6

    .line 738
    goto :goto_0

    :cond_6
    const-string v1, "pref_mode_beauty"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 739
    const/4 v0, 0x7

    .line 740
    goto :goto_0

    :cond_7
    const-string v1, "pref_mode_text"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 741
    const/16 v0, 0x8

    .line 742
    goto :goto_0

    :cond_8
    const-string v1, "pref_mode_panorama"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 743
    const/16 v0, 0x9

    .line 744
    goto :goto_0

    :cond_9
    const-string v1, "pref_mode_video_timelapse"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 745
    const/16 v0, 0xa

    .line 746
    goto :goto_0

    :cond_a
    const-string v1, "pref_mode_face_effect"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    const/16 v0, 0xb

    goto :goto_0
.end method

.method private _CreateAppData()V
    .locals 2

    .prologue
    .line 580
    const-string v0, "VegaCamera"

    const-string v1, "[Camera] _CreateAppData()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Lcom/pantech/app/vegacamera/data/AppData;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/data/AppData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 583
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    new-instance v1, Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetComobPref(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)V

    .line 587
    :cond_0
    return-void
.end method

.method private _CreateVolatileData()V
    .locals 6

    .prologue
    .line 596
    const-string v3, "VegaCamera"

    const-string v4, "[Camera] _CreateVolatileData()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->max_number_of_camera:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 599
    .local v0, _iMaxNumberOfCamera:I
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 602
    .local v2, iHWNumberOfCameras:I
    if-eq v0, v2, :cond_0

    .line 603
    const-string v3, "VegaCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "hardware.Camera.getNumberOfCameras() is error :: num is"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    move v2, v0

    .line 607
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Camera;->alVolatileData:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 608
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/Camera;->alVolatileData:Ljava/util/ArrayList;

    .line 609
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v2, :cond_2

    .line 613
    .end local v1           #i:I
    :cond_1
    return-void

    .line 610
    .restart local v1       #i:I
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Camera;->alVolatileData:Ljava/util/ArrayList;

    new-instance v4, Lcom/pantech/app/vegacamera/preference/VolatileData;

    invoke-direct {v4}, Lcom/pantech/app/vegacamera/preference/VolatileData;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private _DestroyAppData()V
    .locals 2

    .prologue
    .line 590
    const-string v0, "VegaCamera"

    const-string v1, "[Camera] _DestroyAppData()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->Release()V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 593
    return-void
.end method

.method private _DestroyVolatileData()V
    .locals 2

    .prologue
    .line 620
    const-string v0, "VegaCamera"

    const-string v1, "[Camera] _DestroyVolatileData()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->alVolatileData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->alVolatileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->alVolatileData:Ljava/util/ArrayList;

    .line 625
    :cond_0
    return-void
.end method

.method private _OpenModule(Lcom/pantech/app/vegacamera/operator/ICamera;)V
    .locals 2
    .parameter "module"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-interface {p1, p0, v0, v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 629
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnResume()V

    .line 630
    return-void
.end method

.method private _ShowErrorAndFinish(II)V
    .locals 4
    .parameter "stateId"
    .parameter "dispTime"

    .prologue
    .line 979
    const-string v0, "VegaCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " _ShowErrorAndFinish() :: stateId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    invoke-static {p0, p1, p2}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 981
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 984
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/Camera;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mFadeInCameraScreenNail:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/Camera;Landroid/animation/ObjectAnimator;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Camera;->mModuleChangeAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/Camera;)Landroid/animation/ObjectAnimator;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mModuleChangeAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/Camera;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientation:I

    return v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientation:I

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/Camera;)I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget v0, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationCompensation:I

    return v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/Camera;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput p1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationCompensation:I

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/Camera;)Lcom/pantech/app/vegacamera/operator/ICamera;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/Camera;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected ActivityFactory()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method public BatteryStateChanged(I)V
    .locals 4
    .parameter "batteryState"

    .prologue
    .line 841
    const-string v1, "VegaCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onBatteryStateEvent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1, p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->onBatteryStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public CallStateChanged(I)V
    .locals 4
    .parameter "callState"

    .prologue
    .line 851
    const-string v1, "VegaCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCallStateChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1, p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->onCallStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public CheckServiceRunning(Ljava/lang/String;)Z
    .locals 7
    .parameter "serviceName"

    .prologue
    .line 941
    const/4 v4, 0x0

    .line 942
    .local v4, serviceState:Z
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 943
    .local v2, manager:Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 944
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 951
    :goto_1
    return v4

    .line 945
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 946
    .local v3, rInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 947
    const/4 v4, 0x1

    .line 948
    goto :goto_1

    .line 944
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected DoWorkCameraSwitch(Ljava/lang/String;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 754
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->keep()V

    .line 755
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->keep(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 758
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->UnregisterBroadcast()V

    .line 760
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnPreCameraSwitch()V

    .line 761
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->_CloseModule(Lcom/pantech/app/vegacamera/operator/ICamera;)V

    .line 763
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 765
    const-string p1, "pref_mode_video_timelapse"

    .line 768
    :cond_1
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Camera;->_ConvertModeToModule(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 770
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Camera;->_ConvertModeToModule(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 816
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->RegisterBroadcast()V

    .line 818
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->_OpenModule(Lcom/pantech/app/vegacamera/operator/ICamera;)V

    .line 819
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    iget v1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationCompensation:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnOrientationChanged(I)V

    .line 820
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnCameraSwitch()V

    .line 821
    return-void

    .line 772
    :pswitch_1
    new-instance v0, Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 776
    :pswitch_2
    new-instance v0, Lcom/pantech/app/vegacamera/Asm;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Asm;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 780
    :pswitch_3
    new-instance v0, Lcom/pantech/app/vegacamera/BestFace;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/BestFace;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 784
    :pswitch_4
    new-instance v0, Lcom/pantech/app/vegacamera/Remote;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Remote;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 788
    :pswitch_5
    new-instance v0, Lcom/pantech/app/vegacamera/Self;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Self;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 792
    :pswitch_6
    new-instance v0, Lcom/pantech/app/vegacamera/Hdr;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Hdr;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 796
    :pswitch_7
    new-instance v0, Lcom/pantech/app/vegacamera/Beauty;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Beauty;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 800
    :pswitch_8
    new-instance v0, Lcom/pantech/app/vegacamera/Text;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Text;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 804
    :pswitch_9
    new-instance v0, Lcom/pantech/app/vegacamera/Panorama;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Panorama;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 808
    :pswitch_a
    new-instance v0, Lcom/pantech/app/vegacamera/Video;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Video;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 812
    :pswitch_b
    new-instance v0, Lcom/pantech/app/vegacamera/Effects;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Effects;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 770
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected DoWorkChangeModule(I)V
    .locals 2
    .parameter "module"

    .prologue
    .line 639
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->keep()V

    .line 640
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->keep(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->UnregisterBroadcast()V

    .line 644
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->_CloseModule(Lcom/pantech/app/vegacamera/operator/ICamera;)V

    .line 645
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 646
    packed-switch p1, :pswitch_data_0

    .line 692
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->RegisterBroadcast()V

    .line 694
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->_OpenModule(Lcom/pantech/app/vegacamera/operator/ICamera;)V

    .line 695
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    iget v1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationCompensation:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnOrientationChanged(I)V

    .line 698
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setAlpha(F)V

    .line 699
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mOnFrameDrawn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V

    .line 700
    return-void

    .line 648
    :pswitch_1
    new-instance v0, Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 652
    :pswitch_2
    new-instance v0, Lcom/pantech/app/vegacamera/Asm;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Asm;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 656
    :pswitch_3
    new-instance v0, Lcom/pantech/app/vegacamera/BestFace;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/BestFace;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 660
    :pswitch_4
    new-instance v0, Lcom/pantech/app/vegacamera/Remote;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Remote;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 664
    :pswitch_5
    new-instance v0, Lcom/pantech/app/vegacamera/Self;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Self;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 668
    :pswitch_6
    new-instance v0, Lcom/pantech/app/vegacamera/Hdr;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Hdr;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 672
    :pswitch_7
    new-instance v0, Lcom/pantech/app/vegacamera/Beauty;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Beauty;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 676
    :pswitch_8
    new-instance v0, Lcom/pantech/app/vegacamera/Text;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Text;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 680
    :pswitch_9
    new-instance v0, Lcom/pantech/app/vegacamera/Panorama;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Panorama;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 684
    :pswitch_a
    new-instance v0, Lcom/pantech/app/vegacamera/Video;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Video;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 688
    :pswitch_b
    new-instance v0, Lcom/pantech/app/vegacamera/Effects;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Effects;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0

    .line 646
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected DoWorkChangeSmartCover(Z)V
    .locals 2
    .parameter "_Is"

    .prologue
    .line 897
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->keep()V

    .line 898
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 899
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetThumbnail()Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ThumbnailHolder;->keep(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->UnregisterBroadcast()V

    .line 902
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->_CloseModule(Lcom/pantech/app/vegacamera/operator/ICamera;)V

    .line 904
    if-eqz p1, :cond_1

    .line 905
    new-instance v0, Lcom/pantech/app/vegacamera/SmartCover;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/SmartCover;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    .line 910
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->RegisterBroadcast()V

    .line 912
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->_OpenModule(Lcom/pantech/app/vegacamera/operator/ICamera;)V

    .line 913
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    iget v1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationCompensation:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnOrientationChanged(I)V

    .line 914
    return-void

    .line 907
    :cond_1
    new-instance v0, Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    goto :goto_0
.end method

.method public GetCameraProxy()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    return-object v0
.end method

.method public GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    return-object v0
.end method

.method public GetCurrentModuleIndex()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/pantech/app/vegacamera/Camera;->iCurrentModuleIndex:I

    return v0
.end method

.method public GetVolatileData()Ljava/util/ArrayList;
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
    .line 616
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->alVolatileData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public HeadSetStateChanged(I)V
    .locals 4
    .parameter "headsetState"

    .prologue
    .line 882
    const-string v1, "VegaCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onHeadSetStateChanged "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setHeadsetState(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1, p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->onHeadSetStateChanged(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 894
    :goto_1
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 886
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 891
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 892
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public IsBeautyModule()Z
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsBestFaceModule()Z
    .locals 2

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsColorExtStatus()Z
    .locals 4

    .prologue
    .line 468
    const-string v0, "off"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    .line 469
    const-string v2, "pref_effect_color_extraction"

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_extraction_default:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 469
    if-nez v0, :cond_0

    .line 470
    const/4 v0, 0x1

    .line 472
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsColorExtTouchMode()Z
    .locals 4

    .prologue
    .line 476
    const-string v0, "color_touch"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    .line 477
    const-string v2, "pref_effect_color_extraction"

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_extraction_default:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 477
    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x1

    .line 480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsEffectPopup()Z
    .locals 1

    .prologue
    .line 499
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsOnIPLEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsNormalModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsIPLEffectSupport()Z
    .locals 1

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtStatus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsTextModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsBeautyModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsPanoramaModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsBestFaceModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsVideoEffect()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsSelfshotModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsVideoMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x1

    .line 495
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsNormalModule()Z
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsOnBurstShot()Z
    .locals 4

    .prologue
    .line 987
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_continuous_shot"

    .line 988
    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_setting_continuous_shot_default:I

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 987
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 989
    .local v0, burstshot:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 990
    const/4 v1, 0x0

    .line 992
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public IsOnIPLEffect()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 508
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-eqz v2, :cond_0

    .line 509
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_group"

    .line 510
    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_effect_group_default:I

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, mEffectGroup:Ljava/lang/String;
    if-eqz v0, :cond_0

    sget v2, Lcom/pantech/app/vegacamera/R$string;->pref_effect_group_default:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsNormalModule()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    const/4 v1, 0x1

    .line 517
    .end local v0           #mEffectGroup:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public IsPanoramaModule()Z
    .locals 2

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsPhotoCaptureIntent()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 521
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 524
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsRemotModule()Z
    .locals 2

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsSelfshotModule()Z
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsTextModule()Z
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 528
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 529
    :cond_0
    const/4 v0, 0x1

    .line 531
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsVideoEffect()Z
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsVideoMode()Z
    .locals 2

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsZSLUsed()Z
    .locals 1

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtStatus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsTextModule()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsOnIPLEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    :cond_0
    const/4 v0, 0x0

    .line 487
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public MediaStateChanged()V
    .locals 3

    .prologue
    .line 861
    const-string v1, "VegaCamera"

    const-string v2, "onMediaStateEvent "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 864
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->onMediaStateChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public OnCameraSwitched(I)V
    .locals 5
    .parameter "what"

    .prologue
    .line 825
    const-string v1, "VegaCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] OnCameraSwitched("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetLocalId(Landroid/content/Context;I)V

    .line 827
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->GetVolatileData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetVolatileDataIdx(Ljava/util/ArrayList;I)V

    .line 828
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 829
    invoke-static {p1}, Lcom/pantech/app/vegacamera/CameraSettings;->SetCameraId(I)V

    .line 831
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_mode_group"

    .line 832
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_mode_group_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 831
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 834
    .local v0, sMode:Ljava/lang/String;
    const-string v1, "VegaCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] current mode is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->DoWorkCameraSwitch(Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method protected OnCaptureAnimationEnded()V
    .locals 2

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnCaptureAnimationEnded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 375
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected OnFullScreenChanged(Z)V
    .locals 1
    .parameter "full"

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase;->OnFullScreenChanged(Z)V

    .line 366
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnFullScreenChanged(Z)V

    .line 367
    return-void
.end method

.method public OnShotModeChanged(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 720
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/Camera;->DoWorkChangeModule(I)V

    .line 721
    return-void
.end method

.method public OnShotPreviewFrame()V
    .locals 0

    .prologue
    .line 961
    return-void
.end method

.method protected ReturnCameraEntry()V
    .locals 0

    .prologue
    .line 423
    return-void
.end method

.method public RingerModeStateChanged(I)V
    .locals 4
    .parameter "audioSystemState"

    .prologue
    .line 872
    const-string v1, "VegaCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onRingerModeStateEvent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1, p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->onRingerModeStateChanged(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 878
    :goto_0
    return-void

    .line 875
    :catch_0
    move-exception v0

    .line 876
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected ShowErrorFOTA()V
    .locals 2

    .prologue
    .line 417
    const/16 v0, 0x75

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_ShowErrorAndFinish(II)V

    .line 418
    return-void
.end method

.method public SmartCoverClose()V
    .locals 2

    .prologue
    .line 931
    const-string v0, "VegaCamera"

    const-string v1, "SmartCoverClose()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnSmartCoverClose()V

    .line 935
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 936
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->DoWorkChangeSmartCover(Z)V

    .line 938
    :cond_1
    return-void
.end method

.method public SmartCoverOpen()V
    .locals 2

    .prologue
    .line 918
    const-string v0, "VegaCamera"

    const-string v1, "OnSmartCoverOpen()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnSmartCoverOpen()V

    .line 924
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedSmartCover()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 925
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->DoWorkChangeSmartCover(Z)V

    .line 927
    :cond_1
    return-void
.end method

.method public StorageChanged()V
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICamera;->StorageChanged()V

    .line 957
    return-void
.end method

.method public SuperDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 339
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected TestCodeFactory()V
    .locals 0

    .prologue
    .line 413
    return-void
.end method

.method protected _ChangeFactoryValue()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredFactoryValue(Landroid/content/SharedPreferences;I)V

    .line 1009
    return-void
.end method

.method protected _GetPreferredFactoryValue()I
    .locals 3

    .prologue
    .line 1003
    const-string v0, "VegaCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " _GetPreferredFactoryValue() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredFactoryValue(Landroid/content/SharedPreferences;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredFactoryValue(Landroid/content/SharedPreferences;)I

    move-result v0

    return v0
.end method

.method protected _InitFactoryValue()V
    .locals 2

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->_GetPreferredFactoryValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 998
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->_ChangeFactoryValue()V

    .line 1000
    :cond_0
    return-void
.end method

.method public _SetCurrentModuleIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 539
    iput p1, p0, Lcom/pantech/app/vegacamera/Camera;->iCurrentModuleIndex:I

    .line 540
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "m"

    .prologue
    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1, p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->DispatchTouchE(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 334
    :goto_0
    return v1

    .line 331
    :catch_0
    move-exception v0

    .line 333
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 334
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected doOnResume()V
    .locals 3

    .prologue
    .line 215
    const-string v1, "VegaCamera"

    const-string v2, "[Camera] doOnResume()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    if-nez v1, :cond_0

    .line 218
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetBatteryLevel(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x5

    if-gt v1, v2, :cond_0

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    .line 220
    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/pantech/app/vegacamera/Camera;->_ShowErrorAndFinish(II)V

    .line 224
    :cond_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    if-eqz v1, :cond_1

    .line 237
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationListener:Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->enable()V

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 236
    invoke-static {p0}, Lcom/pantech/app/vegacamera/menu/PopupManager;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/menu/PopupManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/menu/PopupManager;->NotifyShowPopup(Landroid/view/View;)V

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 396
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/ActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 401
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "VegaCamera"

    const-string v1, "[Camera] onBackPressed()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->onBackPressed()V

    goto :goto_0

    .line 299
    :cond_2
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mFullOpenTime:J

    .line 82
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mMainThreadTime:J

    .line 83
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const-string v0, "VegaCamera"

    const-string v1, "[Camera] onCreate()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mSetContentViewTime:J

    .line 86
    sget v0, Lcom/pantech/app/vegacamera/R$layout;->camera_main:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->setContentView(I)V

    .line 87
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->CurrentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/pantech/app/vegacamera/util/Util;->mSetContentViewTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/pantech/app/vegacamera/util/Util;->mSetContentViewTime:J

    .line 89
    invoke-static {v4}, Lcom/pantech/app/vegacamera/util/Util;->SetToastDegree(I)V

    .line 90
    invoke-static {p0, v4}, Lcom/pantech/app/vegacamera/util/Util;->SetOrientation(Landroid/app/Activity;I)V

    .line 92
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Camera;->_CreateVolatileData()V

    .line 93
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Camera;->_CreateAppData()V

    .line 95
    invoke-static {p0}, Lcom/pantech/app/vegacamera/util/Util;->GetBatteryLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    .line 97
    const/16 v0, 0x68

    invoke-direct {p0, v0, v4}, Lcom/pantech/app/vegacamera/Camera;->_ShowErrorAndFinish(II)V

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    if-eqz v0, :cond_2

    .line 159
    :cond_1
    :goto_0
    return-void

    .line 104
    :cond_2
    sget v0, Lcom/pantech/app/vegacamera/R$id;->main_module:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mFrame:Landroid/widget/FrameLayout;

    .line 106
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Camera;->_CheckIntent()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 146
    new-instance v0, Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    .line 147
    const-string v0, "VegaCamera"

    const-string v1, "SET INTENT NOTHING"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/operator/ICamera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ICamera;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 153
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationListener:Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;

    if-nez v0, :cond_3

    .line 154
    new-instance v0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;

    invoke-direct {v0, p0, p0}, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;-><init>(Lcom/pantech/app/vegacamera/Camera;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationListener:Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetIs4648test()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Camera;->_InitFactoryValue()V

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 111
    new-instance v0, Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Photo;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    .line 113
    const-string v0, "VegaCamera"

    const-string v1, "SET INTENT CAMERA"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/operator/ICamera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ICamera;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    goto :goto_1

    .line 120
    :pswitch_1
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 121
    new-instance v0, Lcom/pantech/app/vegacamera/Video;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Video;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    .line 123
    const-string v0, "VegaCamera"

    const-string v1, "SET INTENT VIDEO"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/operator/ICamera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ICamera;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    goto :goto_1

    .line 128
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 129
    new-instance v0, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/PhotoPerformanceTest;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    .line 131
    const-string v0, "VegaCamera"

    const-string v1, "SET INTENT PERFORMANCE TEST"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/operator/ICamera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ICamera;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    goto :goto_1

    .line 137
    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 138
    new-instance v0, Lcom/pantech/app/vegacamera/Sharpness;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Sharpness;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    .line 140
    const-string v0, "VegaCamera"

    const-string v1, "SET INTENT SHARPNESS TEST"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/operator/ICamera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mFrame:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-interface {v0, p0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ICamera;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    goto/16 :goto_1

    .line 106
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 271
    const-string v1, "VegaCamera"

    const-string v2, "[Camera] onDestroy()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationListener:Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;

    if-eqz v1, :cond_0

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationListener:Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;

    .line 276
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Camera;->_DestroyAppData()V

    .line 282
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Camera;->_DestroyVolatileData()V

    .line 283
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->onDestroy()V

    .line 284
    return-void

    .line 277
    :catch_0
    move-exception v0

    .line 279
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 305
    const-string v2, "VegaCamera"

    const-string v3, "[Camera] onKeyDown()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v2, p1, p2}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 311
    :goto_0
    return v1

    .line 307
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 317
    const-string v2, "VegaCamera"

    const-string v3, "[Camera] onKeyUp()"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v2, p1, p2}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 323
    :goto_0
    return v1

    .line 319
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 320
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onLongPress(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnLongPress(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 358
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 241
    const-string v1, "VegaCamera"

    const-string v2, "[Camera] onPause()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->onPause()V

    .line 244
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    if-eqz v1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 248
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->iOrientationListener:Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->disable()V

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnSingleTapUp(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 199
    const-string v1, "VegaCamera"

    const-string v2, "[Camera] onStart()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->onStart()V

    .line 202
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    if-eqz v1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 206
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnStart()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 258
    const-string v1, "VegaCamera"

    const-string v2, "[Camera] onStop()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->onStop()V

    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnStop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 2

    .prologue
    .line 381
    invoke-super {p0}, Lcom/pantech/app/vegacamera/ActivityBase;->onUserInteraction()V

    .line 383
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z

    if-eqz v1, :cond_0

    .line 392
    :goto_0
    return-void

    .line 387
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnUserInteraction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 390
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
