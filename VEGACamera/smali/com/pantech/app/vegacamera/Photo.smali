.class public Lcom/pantech/app/vegacamera/Photo;
.super Ljava/lang/Object;
.source "Photo.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICamera;
.implements Lcom/pantech/app/vegacamera/operator/IOperInterface;
.implements Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;
.implements Landroid/hardware/Camera$FaceDetectionListener;
.implements Lcom/pantech/app/vegacamera/PreviewGestures$Listener;
.implements Lcom/pantech/app/vegacamera/video/VideoRecord$Listener;
.implements Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;,
        Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;,
        Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;,
        Lcom/pantech/app/vegacamera/Photo$MainHandler;,
        Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Photo"


# instance fields
.field private bActRemoteZoomParam:Z

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

.field private bkeyABlock:Z

.field private iCameraDisplayOrientation:I

.field private iCameraId:I

.field protected iCaptureMode:I

.field protected iDisplayOrientation:I

.field private iDisplayRotation:I

.field private iOrientation:I

.field protected iOrientationCompensation:I

.field protected iZoomValue:I

.field private lOnResumeTime:J

.field private lUpdateSet:J

.field protected mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

.field protected mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field private mAttachHeight:J

.field private mAttachWidth:J

.field private final mAutoFocusCallback:Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field private mCameraLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

.field protected mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

.field private volatile mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

.field private mEffects:Lcom/pantech/app/vegacamera/Effects;

.field private mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

.field private final mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

.field private mFIS:Ljava/io/FileInputStream;

.field protected final mHandler:Landroid/os/Handler;

.field private mInitialParams:Landroid/hardware/Camera$Parameters;

.field private final mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;

.field protected mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

.field protected mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

.field protected mRootView:Landroid/view/View;

.field private final mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

.field private tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 78
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mRootView:Landroid/view/View;

    .line 80
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 81
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 82
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    .line 83
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mContentResolver:Landroid/content/ContentResolver;

    .line 84
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

    .line 85
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mFIS:Ljava/io/FileInputStream;

    .line 86
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 87
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 88
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 89
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 90
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 91
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 92
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 94
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 95
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mEffects:Lcom/pantech/app/vegacamera/Effects;

    .line 97
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bAeLockSupported:Z

    .line 98
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bAwbLockSupported:Z

    .line 99
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bCameraDisabled:Z

    .line 100
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bRestartForcePreview:Z

    .line 101
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bFocusAreaSupported:Z

    .line 102
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bMeteringAreaSupported:Z

    .line 103
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bOpenCameraFail:Z

    .line 104
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bPreviewSizeChanged:Z

    .line 105
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bActRemoteZoomParam:Z

    .line 106
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bShotMode:Z

    .line 107
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z

    .line 108
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bSkipFlingAfterRecord:Z

    .line 109
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bLocalVoice:Z

    .line 111
    iput v2, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    .line 113
    iput v2, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraDisplayOrientation:I

    .line 115
    iput v2, p0, Lcom/pantech/app/vegacamera/Photo;->iDisplayOrientation:I

    .line 116
    iput v2, p0, Lcom/pantech/app/vegacamera/Photo;->iDisplayRotation:I

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientation:I

    .line 118
    iput v2, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientationCompensation:I

    .line 119
    iput v2, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    .line 121
    iput-wide v5, p0, Lcom/pantech/app/vegacamera/Photo;->lOnResumeTime:J

    .line 122
    iput-wide v5, p0, Lcom/pantech/app/vegacamera/Photo;->lUpdateSet:J

    .line 123
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachWidth:J

    .line 124
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachHeight:J

    .line 128
    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 130
    new-instance v0, Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;-><init>(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;

    .line 131
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;-><init>(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;)V

    :goto_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 132
    new-instance v0, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    .line 133
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    .line 134
    new-instance v0, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;

    .line 136
    new-instance v0, Lcom/pantech/app/vegacamera/Photo$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Photo$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    .line 73
    return-void

    :cond_0
    move-object v0, v1

    .line 131
    goto :goto_0
.end method

.method private _AddScreenOnFlag()V
    .locals 3

    .prologue
    .line 1672
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1673
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 1674
    .local v0, keepScreenOnFlag:I
    if-eqz v1, :cond_0

    .line 1675
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    .line 1676
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1679
    :cond_0
    return-void
.end method

.method private _Check4648TestCameraId()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1591
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1594
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1595
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1596
    .local v2, senExtras:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1597
    const-string v3, "select-sensor"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, extraValue_sensor:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1600
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetIs4648test()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1601
    const-string v3, "main"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1602
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 1606
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    .line 1608
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v5, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetLocalId(Landroid/content/Context;I)V

    .line 1609
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v4

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v3, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Camera;->GetVolatileData()Ljava/util/ArrayList;

    move-result-object v3

    iget v5, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-virtual {v4, v3, v5}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetVolatileDataIdx(Ljava/util/ArrayList;I)V

    .line 1610
    iget v3, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-static {v3}, Lcom/pantech/app/vegacamera/CameraSettings;->SetCameraId(I)V

    .line 1611
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetLocal()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1612
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredStorageLocation(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->SetStorageLocationDir(Ljava/lang/String;)V

    .line 1613
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/data/AppData;->SetIs4648test(Z)V

    .line 1618
    .end local v0           #extraValue_sensor:Ljava/lang/String;
    .end local v2           #senExtras:Landroid/os/Bundle;
    :cond_1
    return-void

    .line 1603
    .restart local v0       #extraValue_sensor:Ljava/lang/String;
    .restart local v2       #senExtras:Landroid/os/Bundle;
    :cond_2
    const-string v3, "sub"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1604
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    invoke-static {v3, v6}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredCameraId(Landroid/content/SharedPreferences;I)V

    goto :goto_0
.end method

.method private _ClearCameraMode()V
    .locals 2

    .prologue
    .line 1712
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 1713
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StopPreview()V

    .line 1723
    return-void
.end method

.method private _ClearScreenOnFlag()V
    .locals 3

    .prologue
    .line 1662
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1663
    .local v1, w:Landroid/view/Window;
    const/16 v0, 0x80

    .line 1664
    .local v0, keepScreenOnFlag:I
    if-eqz v1, :cond_0

    .line 1665
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 1666
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 1669
    :cond_0
    return-void
.end method

.method private _CreateConfigurations()V
    .locals 4

    .prologue
    .line 1621
    const-string v1, "Photo"

    const-string v2, "[Photo] _CreateConfigurations()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getLocationPref()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1624
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1625
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_setting_storage_location_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1624
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1626
    .local v0, storageLocation:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Storage;->setLocationPref(Ljava/lang/String;)V

    .line 1627
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_CreateConfigurations storageLocation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    .end local v0           #storageLocation:Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetGlobal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeGlobalPreferences(Landroid/content/SharedPreferences;)V

    .line 1632
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_GetPreferredCameraId(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    .line 1634
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v3, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetLocalId(Landroid/content/Context;I)V

    .line 1635
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->GetVolatileData()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-virtual {v2, v1, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->SetVolatileDataIdx(Ljava/util/ArrayList;I)V

    .line 1636
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->SetCameraId(I)V

    .line 1637
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->GetLocal()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->UpgradeLocalPreferences(Landroid/content/SharedPreferences;)V

    .line 1638
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredStorageLocation(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->SetStorageLocationDir(Ljava/lang/String;)V

    .line 1640
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_Check4648TestCameraId()V

    .line 1641
    return-void
.end method

.method private _DissmissEffectedDialog()V
    .locals 1

    .prologue
    .line 2684
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 2685
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->dismissDialog()V

    .line 2686
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 2688
    :cond_0
    return-void
.end method

.method private _EffectedDialogSetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-eqz v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setOrientation(I)V

    .line 2681
    :cond_0
    return-void
.end method

.method private _GetActRemoteZoomParam()Z
    .locals 1

    .prologue
    .line 426
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bActRemoteZoomParam:Z

    return v0
.end method

.method private _GetLastThumbNail()V
    .locals 3

    .prologue
    .line 612
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 613
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 614
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 617
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v0

    .line 618
    .local v0, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 619
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    .line 620
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->GetLastThumbnail()V

    goto :goto_0
.end method

.method private _InApplicableWB()Z
    .locals 2

    .prologue
    .line 976
    const/4 v0, 0x0

    .line 983
    .local v0, _InApplicable:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->IsBestFaceModule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    const/4 v0, 0x1

    .line 987
    .end local v0           #_InApplicable:Z
    :cond_0
    return v0
.end method

.method private _InitializeAfterDeviceOpen()V
    .locals 3

    .prologue
    .line 624
    const-string v0, "Photo"

    const-string v1, "[Photo] _InitializeAfterDeviceOpen"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Lcom/pantech/app/vegacamera/PreviewGestures;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/PreviewGestures;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetListener(Lcom/pantech/app/vegacamera/PreviewGestures$Listener;)V

    .line 629
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 631
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_LoadCameraPreferences()V

    .line 632
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->LayoutStartPerformTest()V

    .line 634
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Start()V

    .line 635
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->LayoutStartDonePerformTest()V

    .line 636
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iDisplayOrientation:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetFocusDisplayOrientation(I)V

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->requestLayoutContentPane()V

    .line 641
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 642
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->InitFocusParm(Landroid/hardware/Camera$Parameters;)V

    .line 643
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iget v2, p0, Lcom/pantech/app/vegacamera/Photo;->iDisplayOrientation:I

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetFocusPreview(Landroid/view/View;I)V

    .line 646
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_GetLastThumbNail()V

    .line 647
    return-void
.end method

.method private _InitializeCapabilities()V
    .locals 2

    .prologue
    .line 1570
    const-string v0, "Photo"

    const-string v1, "[Photo] _InitializeCapabilities"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mInitialParams:Landroid/hardware/Camera$Parameters;

    .line 1572
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsFocusAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bFocusAreaSupported:Z

    .line 1573
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsMeteringAreaSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bMeteringAreaSupported:Z

    .line 1574
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsAELockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bAeLockSupported:Z

    .line 1575
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsAWBLockSupported(Landroid/hardware/Camera$Parameters;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bAwbLockSupported:Z

    .line 1577
    return-void
.end method

.method private _InitializeMiscControls()V
    .locals 2

    .prologue
    .line 745
    const-string v0, "Photo"

    const-string v1, "[Photo] _InitializeMiscControls()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->frame:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    .line 747
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Photo;->SetSingleTapUpListener(Landroid/view/View;)V

    .line 748
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    new-instance v1, Lcom/pantech/app/vegacamera/Photo$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/Photo$1;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->setOnSizeChangedListener(Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;)V

    .line 755
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    new-instance v1, Lcom/pantech/app/vegacamera/Photo$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/Photo$2;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->setOnLayoutChangeListener(Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;)V

    .line 761
    return-void
.end method

.method private _IsCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1566
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private _LoadCameraPreferences()V
    .locals 3

    .prologue
    .line 1644
    const-string v1, "Photo"

    const-string v2, "[Photo] _LoadCameraPreferences"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1645
    new-instance v0, Lcom/pantech/app/vegacamera/CameraSettings;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/CameraSettings;-><init>(Landroid/app/Activity;Landroid/hardware/Camera$Parameters;)V

    .line 1646
    .local v0, settings:Lcom/pantech/app/vegacamera/CameraSettings;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    sget v2, Lcom/pantech/app/vegacamera/R$xml;->camera_preferences:I

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/CameraSettings;->GetPreferenceGroup(I)Lcom/pantech/app/vegacamera/preference/PreferenceGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetPreferenceGroup(Lcom/pantech/app/vegacamera/preference/PreferenceGroup;)V

    .line 1647
    return-void
.end method

.method private _ReleaseHandler()V
    .locals 2

    .prologue
    .line 1650
    const-string v0, "Photo"

    const-string v1, "[Photo] ReleaseHandler()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1652
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1653
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1654
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1655
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1656
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1657
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1658
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1659
    return-void
.end method

.method private _SetActRemoteZoomParam(Z)V
    .locals 0
    .parameter "act"

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Photo;->bActRemoteZoomParam:Z

    .line 423
    return-void
.end method

.method private _SetAutoExposureLockIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 885
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] _SetAutoExposureLockIfSupported(), bAeLockSupported == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bAeLockSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    :cond_0
    return-void
.end method

.method private _SetAutoWhiteBalanceLockIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 893
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] _SetAutoExposureLockIfSupported(), bAwbLockSupported == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bAwbLockSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method private _SetFocusAreasIfSupported()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 902
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] _SetFocusAreasIfSupported(), bFocusAreaSupported ==  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bFocusAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 906
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusArea()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getFocusArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

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
    .line 918
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] _SetMeteringAreasIfSupported(), bMeteringAreaSupported ==  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bMeteringAreaSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 922
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getMeteringArea()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getMeteringArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetFocusData()Lcom/pantech/app/vegacamera/data/AppData$FocusData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData$FocusData;->getMeteringArea()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    goto :goto_0
.end method

.method private _SetPreviewFrameLayoutAspectRatio()V
    .locals 6

    .prologue
    .line 694
    const-string v1, "Photo"

    const-string v2, "[Photo] _SetPreviewFrameLayoutAspectRatio"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_0

    .line 701
    :goto_0
    return-void

    .line 699
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 700
    .local v0, size:Landroid/hardware/Camera$Size;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewFrameLayout:Lcom/pantech/app/vegacamera/PreviewFrameLayout;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v2, v2

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->setAspectRatio(D)V

    goto :goto_0
.end method

.method private _SetupIntentCaptureParams()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const-wide/16 v3, -0x1

    .line 1693
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachWidth:J

    .line 1694
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachHeight:J

    .line 1696
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1697
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1698
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetSaveUri(Landroid/net/Uri;)V

    .line 1699
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const-string v2, "crop"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetCropValue(Ljava/lang/String;)V

    .line 1702
    const-string v1, "resolution-width"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachWidth:J

    .line 1703
    const-string v1, "resolution-height"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachHeight:J

    .line 1704
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachWidth:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachHeight:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1706
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] _SetupIntentCaptureParams : w x h"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachWidth:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAttachHeight:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    :cond_0
    return-void
.end method

.method private _ShowEffectedDialog()V
    .locals 3

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    if-nez v0, :cond_0

    .line 2671
    new-instance v0, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    .line 2673
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v2, Lcom/pantech/app/vegacamera/R$string;->effected_save_processing:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->setMessage(Ljava/lang/String;)V

    .line 2674
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffectedDialog:Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/RotateProgressDialog;->showDialog()V

    .line 2675
    return-void
.end method

.method private _ShowErrorAndFinish(II)V
    .locals 4
    .parameter "stateId"
    .parameter "dispTime"

    .prologue
    .line 1783
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] ShowErrorAndFinish() :: stateId = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, p1, p2}, Lcom/pantech/app/vegacamera/util/Util;->ShowFatalErrorAndFinish(Landroid/content/Context;II)V

    .line 1785
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1786
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1788
    :cond_0
    return-void
.end method

.method private _ShutterSoundPlay()V
    .locals 5

    .prologue
    .line 940
    const-string v1, "Photo"

    const-string v2, "[Photo] _ShutterSoundPlay()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const/4 v0, 0x0

    .line 942
    .local v0, shutterSound:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_shutter_sound"

    .line 944
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_shutter_sound_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 943
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    :cond_0
    if-nez v0, :cond_2

    .line 960
    :cond_1
    :goto_0
    return-void

    .line 951
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "shutter-sounds-values"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 955
    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 956
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "shutter-sound"

    const-string v3, "on"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 958
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "shutter-sound"

    const-string v3, "off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _StartCameraMode()V
    .locals 4

    .prologue
    .line 1726
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1780
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetShotMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1735
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 1738
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1740
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_3

    .line 1741
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v3, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/Util;->OpenCamera(Landroid/content/Context;I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    :try_end_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraDisabledException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1757
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->OnCreateCameraScreenNail()V

    .line 1759
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_InitializeCapabilities()V

    .line 1761
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 1763
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParameters(J)V

    .line 1764
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetPreviewFrameLayoutAspectRatio()V

    .line 1765
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1767
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_InitializeMiscControls()V

    .line 1769
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StartPreview()V

    .line 1771
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1772
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mInitialParams:Landroid/hardware/Camera$Parameters;

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->InitFocusParm(Landroid/hardware/Camera$Parameters;)V

    .line 1775
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1776
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1778
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->SetShotMode(Z)V

    goto :goto_0

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    const-string v1, "Photo"

    const-string v2, "[Photo] CameraHardwareException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1747
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catch_1
    move-exception v0

    .line 1748
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    const-string v1, "Photo"

    const-string v2, "[Photo] CameraDisabledException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1751
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraDisabledException;
    :catch_2
    move-exception v0

    .line 1752
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    const-string v1, "Photo"

    const-string v2, "[Photo] CameraAppCrashException() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private _UpdateCameraParameterFrontCameraFlipForSnapshot(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "parm"

    .prologue
    .line 1296
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_mirror"

    .line 1297
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_mirror_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1296
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1298
    .local v0, str:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/pantech/app/vegacamera/CameraSettings;->GetCameraId()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1299
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_1

    .line 1300
    :cond_0
    const-string v1, "snapshot-picture-flip"

    const-string v2, "flip-h"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    const-string v1, "Photo"

    const-string v2, "_UpdateCameraParameterFrontCameraFlipForSnapshot snapshot-picture-flip flip-h"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :goto_0
    return-void

    .line 1303
    :cond_1
    const-string v1, "snapshot-picture-flip"

    const-string v2, "flip-v"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    const-string v1, "Photo"

    const-string v2, "_UpdateCameraParameterFrontCameraFlipForSnapshot snapshot-picture-flip flip-v"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1307
    :cond_2
    const-string v1, "snapshot-picture-flip"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    const-string v1, "Photo"

    const-string v2, "_UpdateCameraParameterFrontCameraFlipForSnapshot snapshot-picture-flip off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _UpdateCameraParametersInitialize(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 803
    return-void
.end method

.method private _UpdateCameraParametersJpegQuality(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 861
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 862
    .local v0, jpegQuality:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 863
    return-void
.end method

.method private _UpdateCameraParametersPreference()V
    .locals 0

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetAutoExposureLockIfSupported()V

    .line 934
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetAutoWhiteBalanceLockIfSupported()V

    .line 935
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetFocusAreasIfSupported()V

    .line 937
    return-void
.end method

.method private _UpdateCameraParametersSceneMode(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 1011
    return-void
.end method

.method private _UpdateCameraparametersVideoSize(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 845
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v3

    const-string v4, "pref_setting_record_size"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 846
    .local v2, videoSize:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 847
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/CameraSettings;->InitialVideoSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 853
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "video-size"

    invoke-virtual {v3, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, size:Ljava/lang/String;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/Photo;->bPreviewSizeChanged:Z

    .line 856
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    const-string v4, "video-size"

    invoke-virtual {v3, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    const-string v3, "Photo"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[Photo] _UpdateCameraparametersVideoSize video-size is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    return-void

    .line 849
    .end local v0           #size:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v1

    .line 850
    .local v1, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/pantech/app/vegacamera/CameraSettings;->SetVideoSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto :goto_0
.end method

.method private _WaitCameraStartUpThread()V
    .locals 2

    .prologue
    .line 391
    const-string v0, "Photo"

    const-string v1, "[Photo] _WaitCameraStartUpThread()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->Cancel()V

    .line 395
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->join()V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    .line 397
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 399
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
    .line 1168
    if-nez p1, :cond_0

    .line 1176
    :goto_0
    return-void

    .line 1171
    :cond_0
    const-string v0, "continuous-picture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/vegacamera/Photo$AutoFocusMoveCallback;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/Photo;)I
    .locals 1
    .parameter

    .prologue
    .line 116
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iDisplayRotation:I

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/Photo;)J
    .locals 2
    .parameter

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Photo;->lOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/Photo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 2683
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_DissmissEffectedDialog()V

    return-void
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/Photo;)I
    .locals 1
    .parameter

    .prologue
    .line 111
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    return v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/Photo;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 1569
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_InitializeCapabilities()V

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/Photo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Photo;->bSkipFlingAfterRecord:Z

    return-void
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/Photo;)Lcom/pantech/app/vegacamera/video/VideoRecord;
    .locals 1
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/video/VideoRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    return-void
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 1671
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_AddScreenOnFlag()V

    return-void
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/Photo;)Z
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bLocalVoice:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetPreviewFrameLayoutAspectRatio()V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_InitializeAfterDeviceOpen()V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/Photo;)Landroid/view/SurfaceHolder;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/Photo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Photo;->bOpenCameraFail:Z

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/Photo;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1782
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->_ShowErrorAndFinish(II)V

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/Photo;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Photo;->bCameraDisabled:Z

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 1725
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_StartCameraMode()V

    return-void
.end method


# virtual methods
.method protected AutoFocusDonePerformTest()V
    .locals 0

    .prologue
    .line 2720
    return-void
.end method

.method public CameraErrorCbNotify(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 2448
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/Photo;->_ShowErrorAndFinish(II)V

    .line 2449
    return-void
.end method

.method protected CameraOpenDonePerformTest()V
    .locals 0

    .prologue
    .line 2711
    return-void
.end method

.method protected CameraOpenStartPerformTest()V
    .locals 0

    .prologue
    .line 2708
    return-void
.end method

.method public DispatchTouchE(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "m"

    .prologue
    const/4 v0, 0x1

    .line 1859
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1878
    :cond_0
    :goto_0
    return v0

    .line 1863
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerDepthAct()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsMenuContainerSubDepthAct()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1866
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->IsShutterTimerActionStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1867
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/PreviewGestures;->DispatchTouchEv(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1873
    :cond_2
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Photo;->bSkipFlingAfterRecord:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1874
    const-string v1, "Photo"

    const-string v2, "[Photo] skip SuperDispatchTouchEvent:OnFling after Recording before OnFullScreenChanged"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1878
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/Camera;->SuperDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public GetCameraId()I
    .locals 3

    .prologue
    .line 2559
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] mCamreaId == "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    return v0
.end method

.method protected GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    return-object v0
.end method

.method public GetOrientation()I
    .locals 1

    .prologue
    .line 2564
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientation:I

    return v0
.end method

.method public GetShotMode()Z
    .locals 1

    .prologue
    .line 2568
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bShotMode:Z

    return v0
.end method

.method public Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 3
    .parameter "activity"
    .parameter "parent"
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 440
    const-string v0, "Photo"

    const-string v1, "[Photo] Init()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 442
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    iput-object p2, p0, Lcom/pantech/app/vegacamera/Photo;->mRootView:Landroid/view/View;

    .line 443
    iput-object p3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 445
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z

    .line 447
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_InitSmartCoverLayoutParam()V

    .line 449
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Photo;->_SetActRemoteZoomParam(Z)V

    .line 451
    new-instance v0, Lcom/pantech/app/vegacamera/util/ElapsedTime;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/util/ElapsedTime;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

    .line 452
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mElapsedTime:Lcom/pantech/app/vegacamera/util/ElapsedTime;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/ElapsedTime;->start()V

    .line 454
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 456
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_CreateConfigurations()V

    .line 458
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->LayoutInitStartPerformTest()V

    .line 459
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_InflateModuleLayout()V

    .line 460
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->LayoutInitDonePerformTest()V

    .line 462
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_CreateLayoutInstance()V

    .line 464
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mContentResolver:Landroid/content/ContentResolver;

    .line 466
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->EnterLightsOutMode(Landroid/view/Window;)V

    .line 467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->InitializeScreenBrightness(Landroid/view/Window;Landroid/content/ContentResolver;)V

    .line 469
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->OnCreateCameraScreenNail()V

    .line 470
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 471
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 472
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetupIntentCaptureParams()V

    .line 474
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_InitRemote()V

    .line 476
    new-instance v0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;-><init>(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    .line 477
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->start()V

    .line 478
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mStartPreviewPrerequisiteReady:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 480
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_InitializeMiscControls()V

    .line 481
    return-void
.end method

.method public IsAttachContentsCameraIntent()Z
    .locals 2

    .prologue
    .line 2548
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2549
    const/4 v0, 0x1

    .line 2551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsImageCaptureIntent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2541
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 2544
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsPerformTestIntent()Z
    .locals 1

    .prologue
    .line 2555
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetPerformTestIntent(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method protected LayoutInitDonePerformTest()V
    .locals 0

    .prologue
    .line 2705
    return-void
.end method

.method protected LayoutInitStartPerformTest()V
    .locals 0

    .prologue
    .line 2702
    return-void
.end method

.method protected LayoutStartDonePerformTest()V
    .locals 0

    .prologue
    .line 2699
    return-void
.end method

.method protected LayoutStartPerformTest()V
    .locals 0

    .prologue
    .line 2696
    return-void
.end method

.method public OnActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2380
    sparse-switch p1, :sswitch_data_0

    .line 2444
    :cond_0
    :goto_0
    return-void

    .line 2382
    :sswitch_0
    if-eqz p3, :cond_0

    .line 2383
    const/4 v3, 0x0

    .line 2384
    .local v3, extras:Landroid/os/Bundle;
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    .line 2385
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2387
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v11}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    .line 2388
    const-string v11, "bestfaceUriforMMS"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    .line 2389
    .local v10, tempUri:Landroid/net/Uri;
    const/4 v11, 0x0

    invoke-virtual {p0, v11, v10}, Lcom/pantech/app/vegacamera/Photo;->doAttachData([BLandroid/net/Uri;)V

    .line 2390
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto :goto_0

    .line 2391
    .end local v10           #tempUri:Landroid/net/Uri;
    :cond_1
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v11}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 2393
    const/4 v5, 0x0

    .line 2394
    .local v5, filename:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 2395
    :try_start_0
    const-string v11, "bestfaceFilenameforMMS"

    invoke-virtual {v3, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 2398
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2399
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v11

    long-to-int v6, v11

    .line 2401
    .local v6, len:I
    new-array v1, v6, [B

    .line 2403
    .local v1, buf:[B
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mFIS:Ljava/io/FileInputStream;

    .line 2404
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mFIS:Ljava/io/FileInputStream;

    invoke-virtual {v11, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 2406
    const/4 v11, 0x0

    invoke-virtual {p0, v1, v11}, Lcom/pantech/app/vegacamera/Photo;->doAttachData([BLandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2409
    :try_start_1
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mFIS:Ljava/io/FileInputStream;

    if-eqz v11, :cond_3

    .line 2410
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mFIS:Ljava/io/FileInputStream;

    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2415
    :cond_3
    :goto_1
    if-eqz v5, :cond_4

    .line 2416
    :try_start_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2417
    .local v8, path:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2424
    .end local v1           #buf:[B
    .end local v4           #file:Ljava/io/File;
    .end local v6           #len:I
    .end local v8           #path:Ljava/io/File;
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto :goto_0

    .line 2412
    .restart local v1       #buf:[B
    .restart local v4       #file:Ljava/io/File;
    .restart local v6       #len:I
    :catch_0
    move-exception v2

    .line 2413
    .local v2, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 2419
    .end local v1           #buf:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #len:I
    :catch_1
    move-exception v2

    .line 2420
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 2421
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v2

    .line 2422
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2427
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #filename:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_GotoQuickview()V

    .line 2429
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v11}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v9

    .line 2430
    .local v9, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11, v9}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 2431
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    goto/16 :goto_0

    .line 2437
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v9           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    :sswitch_1
    if-eqz p3, :cond_0

    .line 2438
    const-string v11, "pref_intent_value"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2439
    .local v7, newPath:Ljava/lang/String;
    iget-object v11, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v11

    invoke-static {v11, v7}, Lcom/pantech/app/vegacamera/CameraSettings;->WritePreferredStorageLocation(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2380
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
    .line 1793
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetShotMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1794
    const-string v0, "Photo"

    const-string v1, "[Photo] OnBackPressed() :: video record mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    if-nez v0, :cond_0

    .line 1796
    const/4 v0, 0x0

    .line 1812
    :goto_0
    return v0

    .line 1798
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/video/VideoRecord;->OnBackPressed()Z

    move-result v0

    goto :goto_0

    .line 1800
    :cond_1
    const-string v0, "Photo"

    const-string v1, "[Photo] OnBackPressed() :: camera mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_IsCameraIdle()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1802
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1804
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnBackPressed()Z

    move-result v0

    goto :goto_0

    .line 1805
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1807
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnBackPressed()Z

    move-result v0

    goto :goto_0

    .line 1809
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1812
    :cond_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public OnCameraSwitch()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public OnCaptureAnimationEnded()V
    .locals 0

    .prologue
    .line 2367
    return-void
.end method

.method protected OnCreateCameraScreenNail()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 484
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 485
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetCaptureIntent(Landroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 486
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 491
    :goto_0
    return-void

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ActivityBase;->CreateCameraScreenNail(Z)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    goto :goto_0
.end method

.method public OnDestroy()V
    .locals 2

    .prologue
    .line 606
    const-string v0, "Photo"

    const-string v1, "[Photo] OnDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_DestroyLayoutInstance()V

    .line 608
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/Photo;->_SetActRemoteZoomParam(Z)V

    .line 609
    return-void
.end method

.method public OnFullScreenChanged(Z)V
    .locals 3
    .parameter "full"

    .prologue
    const/4 v0, 0x0

    .line 1923
    const-string v1, "Photo"

    const-string v2, "[Photo] OnFullScreenChanged()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bSkipFlingAfterRecord:Z

    .line 1925
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v1, :cond_0

    .line 1926
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/PreviewGestures;->SetEnable(Z)V

    .line 1929
    :cond_0
    if-eqz p1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z

    .line 1930
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1931
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFullScreenChanged(Z)V

    .line 1933
    :cond_1
    return-void

    .line 1929
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public OnKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1820
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1821
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z

    if-eqz v1, :cond_1

    .line 1834
    :cond_0
    :goto_0
    return v0

    .line 1824
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    .line 1825
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_OnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1834
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1829
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

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

    .line 1840
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1841
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->GetFatalPopupState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z

    if-eqz v1, :cond_1

    .line 1854
    :cond_0
    :goto_0
    return v0

    .line 1844
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    if-eqz v1, :cond_3

    .line 1845
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->_OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1854
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1849
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method public OnLongPress(Landroid/view/View;II)V
    .locals 3
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v2, 0x1

    .line 1909
    const-string v0, "Photo"

    const-string v1, "[Photo] OnLongPress()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1911
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1912
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/PreviewGestures;->IsScaling()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/PreviewGestures;->IsMulti()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1913
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    if-ne v0, v2, :cond_2

    .line 1919
    :cond_1
    :goto_0
    return-void

    .line 1916
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1917
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnLongPress(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public OnModeDestroy()V
    .locals 0

    .prologue
    .line 602
    return-void
.end method

.method public OnOrientationChanged(I)V
    .locals 4
    .parameter "orientation"

    .prologue
    .line 2106
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientation:I

    invoke-static {p1, v1}, Lcom/pantech/app/vegacamera/util/Util;->RoundOrientation(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientation:I

    .line 2107
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientation:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 2108
    .local v0, orientationCompensation:I
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientationCompensation:I

    if-eq v1, v0, :cond_0

    .line 2109
    iput v0, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientationCompensation:I

    .line 2110
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] OnOrientationChanged iOrientationCompensation:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientationCompensation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetDisplayOrientation()V

    .line 2114
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_MIRROR:J

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParameters(J)V

    .line 2116
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2117
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientationCompensation:I

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnOrientationChanged(I)V

    .line 2119
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    if-eqz v1, :cond_2

    .line 2120
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget v2, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientationCompensation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/video/VideoRecord;->SetOrientationChanged(I)V

    .line 2122
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->IsEffectPopup()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2123
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientationCompensation:I

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_EffectedDialogSetOrientation(I)V

    .line 2125
    :cond_3
    return-void
.end method

.method public OnPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 535
    const-string v1, "Photo"

    const-string v2, "[Photo] OnPause()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_WaitCameraStartUpThread()V

    .line 541
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetShotMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->TimerShotCancel()V

    .line 554
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetShotMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 555
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    if-eqz v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->OnPause()V

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1, v5}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 565
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_3

    .line 566
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->releaseSurfaceTexture()V

    .line 567
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 568
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 570
    :cond_3
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Photo;->SetSingleTapUpListener(Landroid/view/View;)V

    .line 572
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    if-eqz v1, :cond_4

    .line 573
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/PreviewGestures;->Release()V

    .line 574
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mPreviewGestures:Lcom/pantech/app/vegacamera/PreviewGestures;

    .line 577
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 578
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ICapture;->onRelease()V

    .line 579
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 582
    :cond_5
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Stop()V

    .line 584
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_ResetIdleTimer()V

    .line 585
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_ReleaseHandler()V

    .line 587
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_ClearScreenOnFlag()V

    .line 589
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 591
    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/Photo;->SetShotMode(Z)V

    .line 592
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] OnPause cancelAutoFocus failed() , RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_6
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 561
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StopPreview()V

    .line 562
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_CloseCamera()V

    goto :goto_1
.end method

.method public OnPreCameraSwitch()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public OnResume()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 500
    const-string v0, "Photo"

    const-string v1, "[Photo] OnResume()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bOpenCameraFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bCameraDisabled:Z

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    if-nez v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->OnCreateCameraScreenNail()V

    .line 510
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_CreateConfigurations()V

    .line 511
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z

    .line 512
    new-instance v0, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;-><init>(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    .line 513
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;->start()V

    .line 514
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_InitializeMiscControls()V

    .line 515
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_LoadCameraPreferences()V

    .line 518
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_AddScreenOnFlag()V

    .line 519
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_KeepIdleTimerOnAwhile()V

    .line 520
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/Photo;->bSkipFlingAfterRecord:Z

    goto :goto_0
.end method

.method public OnSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1898
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1899
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/video/VideoRecord;->OnSingleTapUp(Landroid/view/View;II)V

    .line 1905
    :cond_0
    :goto_0
    return-void

    .line 1901
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1902
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnSingleTapUp(Landroid/view/View;II)V

    goto :goto_0
.end method

.method public OnSmartCoverClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2614
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2625
    :cond_0
    :goto_0
    return-void

    .line 2617
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2618
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->TimerShotCancel()V

    .line 2620
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->GetFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2621
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    goto :goto_0

    .line 2622
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->GetFocusState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2623
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/Photo;->setFocusCallback(Z)V

    goto :goto_0
.end method

.method public OnSmartCoverOpen()V
    .locals 0

    .prologue
    .line 2609
    return-void
.end method

.method public OnStart()V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public OnStop()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method

.method public OnUserInteraction()V
    .locals 2

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1886
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_KeepIdleTimerOnAwhile()V

    .line 1888
    :cond_1
    return-void
.end method

.method public OperCapture(II)V
    .locals 6
    .parameter "what"
    .parameter "count"

    .prologue
    const/4 v4, 0x0

    .line 1996
    const-string v0, "Photo"

    const-string v1, "[Photo] OperCapture"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1997
    packed-switch p1, :pswitch_data_0

    .line 2058
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2000
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2001
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusOper()V

    .line 2002
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    if-eqz v0, :cond_1

    .line 2003
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onRelease()V

    .line 2004
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 2006
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2007
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/pantech/app/vegacamera/capture/ImpleNormalCapture;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 2008
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/operator/ICapture;->setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V

    .line 2012
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onCapture()V

    goto :goto_0

    .line 2010
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/operator/ICapture;->setCaptureMode(I)V

    goto :goto_1

    .line 2017
    :pswitch_2
    const/16 v5, 0x14

    .line 2018
    .local v5, burstMaxCnt:I
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    if-nez v0, :cond_6

    .line 2019
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "20"

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2024
    :goto_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusOper()V

    .line 2025
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    .line 2026
    const-string v1, "pref_focus_mode_status"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_focus_mode_default:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2027
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2028
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2031
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2032
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onRelease()V

    .line 2033
    iput-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 2035
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2036
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    move-object v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/capture/ImpleBurstCapture;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;II)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 2037
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/operator/ICapture;->setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V

    .line 2039
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onCapture()V

    goto/16 :goto_0

    .line 2021
    :cond_6
    const/16 v5, 0xa

    .line 2022
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto :goto_2

    .line 2043
    .end local v5           #burstMaxCnt:I
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 2045
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v0

    .line 2046
    const-string v1, "pref_focus_mode_status"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_focus_mode_default:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2047
    const-string v1, "continuous-picture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2048
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V

    .line 2050
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onStop()V

    goto/16 :goto_0

    .line 1997
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public OperFocus(I)V
    .locals 5
    .parameter "what"

    .prologue
    const/4 v4, 0x1

    .line 2061
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2102
    :cond_0
    :goto_0
    return-void

    .line 2065
    :cond_1
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] OperFocus what "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2069
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-ne v1, v4, :cond_0

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/Photo;->bFocusAreaSupported:Z

    if-eqz v1, :cond_0

    .line 2070
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAutoFocusCallback:Lcom/pantech/app/vegacamera/Photo$AutoFocusCallback;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 2071
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    goto :goto_0

    .line 2076
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 2078
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->cancelAutoFocus()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2079
    :catch_0
    move-exception v0

    .line 2080
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] OperFocus cancelAutoFocus failed() , RuntimeException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2086
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_2
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    if-nez v1, :cond_0

    .line 2088
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2089
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startFaceDetection()V

    goto :goto_0

    .line 2094
    :pswitch_3
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    if-nez v1, :cond_0

    .line 2096
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2097
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopFaceDetection()V

    goto/16 :goto_0

    .line 2067
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
    .line 2504
    const-string v0, "Photo"

    const-string v1, "[Photo] RecordingComplete()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    return-void
.end method

.method protected ReleaseLayoutControlObject()V
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 727
    return-void
.end method

.method public SendMessageGotoQuickView()V
    .locals 2

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2518
    return-void
.end method

.method public SetFocusOperHandler(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 1992
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/Photo;->OperFocus(I)V

    .line 1993
    return-void
.end method

.method public SetOperHandler(I)V
    .locals 5
    .parameter "what"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 2233
    sparse-switch p1, :sswitch_data_0

    .line 2357
    :goto_0
    return-void

    .line 2235
    :sswitch_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_ClearCameraMode()V

    .line 2236
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->DoWorkChangeModule(I)V

    goto :goto_0

    .line 2240
    :sswitch_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2241
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->ShowDisableToast()V

    goto :goto_0

    .line 2245
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2249
    new-instance v0, Lcom/pantech/app/vegacamera/Photo$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/Photo$3;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    .line 2298
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->CheckFileSize(Lcom/pantech/app/vegacamera/ActivityBase;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2299
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    .line 2302
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetLocalVoice(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bLocalVoice:Z

    .line 2303
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bLocalVoice:Z

    if-eqz v0, :cond_3

    .line 2304
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetLocalVoice(Landroid/content/Context;Z)V

    .line 2305
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusGainOper()V

    .line 2307
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 2308
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StopPreview()V

    .line 2309
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientationCompensation:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->setRecordingOrientation(I)V

    .line 2310
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/video/VideoRecord;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 2312
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->_SetCurrentModuleIndex(I)V

    .line 2313
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/Photo;->SetShotMode(Z)V

    .line 2315
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_ResetIdleTimer()V

    goto/16 :goto_0

    .line 2319
    :sswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->RequestAudioFocusOper()V

    .line 2320
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {p0, v0, v1, v2}, Lcom/pantech/app/vegacamera/Photo;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    goto/16 :goto_0

    .line 2324
    :sswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopSmoothZoom()V

    goto/16 :goto_0

    .line 2328
    :sswitch_4
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_ClearCameraMode()V

    .line 2329
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffects:Lcom/pantech/app/vegacamera/Effects;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2330
    new-instance v0, Lcom/pantech/app/vegacamera/Effects;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/Effects;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffects:Lcom/pantech/app/vegacamera/Effects;

    .line 2333
    :cond_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Stop()V

    .line 2334
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Release()V

    .line 2335
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->ReleaseLayoutControlObject()V

    .line 2337
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mEffects:Lcom/pantech/app/vegacamera/Effects;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/Effects;->Init(Lcom/pantech/app/vegacamera/ActivityBase;Landroid/view/View;Lcom/pantech/app/vegacamera/data/AppData;)V

    goto/16 :goto_0

    .line 2341
    :sswitch_5
    invoke-virtual {p0, v2, v4}, Lcom/pantech/app/vegacamera/Photo;->_SetZoomControl(IZ)V

    goto/16 :goto_0

    .line 2345
    :sswitch_6
    invoke-virtual {p0, v4, v4}, Lcom/pantech/app/vegacamera/Photo;->_SetZoomControl(IZ)V

    goto/16 :goto_0

    .line 2349
    :sswitch_7
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StartPreview()V

    goto/16 :goto_0

    .line 2353
    :sswitch_8
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StopPreview()V

    goto/16 :goto_0

    .line 2233
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_0
        0xc -> :sswitch_1
        0x19 -> :sswitch_4
        0x24 -> :sswitch_3
        0x26 -> :sswitch_6
        0x27 -> :sswitch_5
    .end sparse-switch
.end method

.method public SetOperHandler(II)V
    .locals 3
    .parameter "what"
    .parameter "count"

    .prologue
    .line 1954
    sparse-switch p1, :sswitch_data_0

    .line 1988
    :goto_0
    return-void

    .line 1959
    :sswitch_0
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/util/StorageFactory;->getRemainStorageState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1960
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z

    if-nez v0, :cond_0

    .line 1961
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->OperCapture(II)V

    .line 1962
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsEffectPopup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_ShowEffectedDialog()V

    .line 1971
    :cond_0
    :goto_1
    iput p1, p0, Lcom/pantech/app/vegacamera/Photo;->iCaptureMode:I

    goto :goto_0

    .line 1967
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->onCaptureComplete()V

    .line 1968
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    goto :goto_1

    .line 1975
    :sswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startSmoothZoom(I)V

    goto :goto_0

    .line 1979
    :sswitch_2
    iput p2, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    .line 1980
    sget-wide v0, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParameters(J)V

    goto :goto_0

    .line 1984
    :sswitch_3
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] [CE] SetOperHandler() : SET_CHAGNE_COLOR_POINT : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1954
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x23 -> :sswitch_1
        0x25 -> :sswitch_2
        0x28 -> :sswitch_3
    .end sparse-switch
.end method

.method public SetOperHandler(IZ)V
    .locals 0
    .parameter "what"
    .parameter "state"

    .prologue
    .line 2629
    packed-switch p1, :pswitch_data_0

    .line 2637
    :goto_0
    return-void

    .line 2631
    :pswitch_0
    iput-boolean p2, p0, Lcom/pantech/app/vegacamera/Photo;->bRestartForcePreview:Z

    goto :goto_0

    .line 2629
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
    .end packed-switch
.end method

.method public SetParameter(J)V
    .locals 0
    .parameter "what"

    .prologue
    .line 1949
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParameters(J)V

    .line 1950
    return-void
.end method

.method public SetParameter(Ljava/lang/String;I)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1944
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] setParameter + name =  "

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

    .line 1945
    return-void
.end method

.method public SetParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1937
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] setParameter + name =  "

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

    .line 1938
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    return-void
.end method

.method public SetShotMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2572
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/Photo;->bShotMode:Z

    .line 2573
    return-void
.end method

.method public SetSingleTapUpListener(Landroid/view/View;)V
    .locals 2
    .parameter "singleTapArea"

    .prologue
    .line 1892
    const-string v0, "Photo"

    const-string v1, "[Photo] SetSingleTapUpListener()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ActivityBase;->setSingleTapUpListener(Landroid/view/View;)V

    .line 1894
    return-void
.end method

.method public SetUpdateParameter(J)V
    .locals 3
    .parameter "what"

    .prologue
    .line 2361
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2362
    return-void
.end method

.method public SetupPreview()V
    .locals 2

    .prologue
    .line 2508
    const-string v0, "Photo"

    const-string v1, "[Photo] SetupPreview()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    .line 2511
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StartPreview()V

    .line 2512
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 2514
    return-void
.end method

.method protected StartPreviewDonePerformTest()V
    .locals 0

    .prologue
    .line 2717
    return-void
.end method

.method protected StartPreviewStartPerformTest()V
    .locals 0

    .prologue
    .line 2714
    return-void
.end method

.method public StorageChanged()V
    .locals 0

    .prologue
    .line 2665
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StopPreview()V

    .line 2666
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_StartCameraMode()V

    .line 2667
    return-void
.end method

.method public ZoomControl(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 2453
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->IsCameraTipsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2458
    :goto_0
    return-void

    .line 2456
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/vegacamera/Photo;->_SetZoomControl(IZ)V

    .line 2457
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Photo;->_UpdateRemoteZoomValue(I)V

    goto :goto_0
.end method

.method protected _CameaAfterPreviewDone()V
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 651
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->StartFaceDetect()V

    .line 653
    :cond_0
    return-void
.end method

.method protected _CloseCamera()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1548
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1549
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_CloseRemoteShotOnly()V

    .line 1551
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1552
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_FACE_DETECTION:Z

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 1556
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1557
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1558
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/callback/CameraErrorCb;->setCbListener(Lcom/pantech/app/vegacamera/callback/CameraErrorCb$CameraErrorCbListener;)V

    .line 1559
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraHolder;->instance()Lcom/pantech/app/vegacamera/CameraHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/CameraHolder;->release()V

    .line 1560
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDevice(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V

    .line 1561
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1563
    :cond_1
    return-void
.end method

.method protected _CloseRemoteShotOnly()V
    .locals 2

    .prologue
    .line 1543
    const-string v0, "Photo"

    const-string v1, "[Photo] _CloseRemoteShotOnly"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1544
    return-void
.end method

.method protected _CreateLayoutInstance()V
    .locals 3

    .prologue
    .line 708
    const-string v0, "Photo"

    const-string v1, "[Photo] _CreateLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/controller/PhotoLayoutControl;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraLayoutControl:Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/Photo;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 715
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Init(Lcom/pantech/app/vegacamera/data/AppData;Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 716
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->_GetPreferredFactoryValue()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetIs4648test()Z

    move-result v0

    if-nez v0, :cond_2

    .line 717
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->ShowCameraTips()V

    .line 719
    :cond_2
    return-void
.end method

.method protected _DestroyLayoutInstance()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 730
    const-string v0, "Photo"

    const-string v1, "[Photo] _DestroyLayoutInstance()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ICapture;->onRelease()V

    .line 733
    iput-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mCapture:Lcom/pantech/app/vegacamera/operator/ICapture;

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 736
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/Photo;->_SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 739
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->Release()V

    .line 740
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->ReleaseLayoutControlObject()V

    .line 742
    :cond_2
    return-void
.end method

.method protected _GetPreferredCameraId(Lcom/pantech/app/vegacamera/preference/ComboPreferences;)I
    .locals 2
    .parameter "preferences"

    .prologue
    .line 1580
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->GetCameraFacingIntentExtras(Landroid/app/Activity;)I

    move-result v0

    .line 1581
    .local v0, intentCameraId:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1586
    .end local v0           #intentCameraId:I
    :goto_0
    return v0

    .restart local v0       #intentCameraId:I
    :cond_0
    invoke-static {p1}, Lcom/pantech/app/vegacamera/CameraSettings;->ReadPreferredCameraId(Landroid/content/SharedPreferences;)I

    move-result v0

    goto :goto_0
.end method

.method protected _GotoQuickview()V
    .locals 5

    .prologue
    .line 2640
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2657
    :cond_0
    :goto_0
    return-void

    .line 2644
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->IsGallerySecretMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2645
    const-string v1, "Photo"

    const-string v2, "[Photo]_GotoQuickview is skipped when IsGallerySecretMode"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2649
    :cond_2
    const-string v1, "Photo"

    const-string v2, "[Photo]_GotoQuickview"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2650
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_goto_viewer"

    .line 2651
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_goto_viewer_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2650
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2653
    .local v0, mSaveAfterView:Ljava/lang/String;
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2654
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/Photo;->bkeyABlock:Z

    .line 2655
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/ActivityBase;->GotoQuickView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _InflateModuleLayout()V
    .locals 3

    .prologue
    .line 417
    const-string v0, "Photo"

    const-string v1, "_InflateModuleLayout()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$layout;->photo:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mRootView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 419
    return-void
.end method

.method protected _InitRemote()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method protected _InitSmartCoverLayoutParam()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 434
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->gl_root_view:I

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 435
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 434
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 436
    return-void
.end method

.method protected _IsLowMagnification()Z
    .locals 1

    .prologue
    .line 810
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsColorExtStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected _KeepIdleTimerOnAwhile()V
    .locals 4

    .prologue
    const/16 v3, 0x3f

    .line 1687
    const-string v0, "Photo"

    const-string v1, "[Photo] _KeepIdleTimerOnAwhile()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1689
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1690
    return-void
.end method

.method protected _ResetIdleTimer()V
    .locals 2

    .prologue
    .line 1682
    const-string v0, "Photo"

    const-string v1, "[Photo] _ResetIdleTimer()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1683
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1684
    return-void
.end method

.method protected _SetCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1452
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1459
    :goto_0
    return-void

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/data/AppData;->SetParam(Landroid/hardware/Camera$Parameters;)V

    .line 1457
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method

.method protected _SetCameraParameters(J)V
    .locals 7
    .parameter "updateSet"

    .prologue
    const-wide/16 v5, 0x0

    .line 1313
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Photo] _SetCameraParameters() :: updateSet = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1449
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1321
    .local v1, mParam:Landroid/hardware/Camera$Parameters;
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_INITIALIZE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_2

    .line 1322
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersInitialize(Landroid/hardware/Camera$Parameters;)V

    .line 1325
    :cond_2
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PREFERENCE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_3

    .line 1326
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersPreference()V

    .line 1329
    :cond_3
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PICTURESIZE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_4

    .line 1330
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersPictureSize(Landroid/hardware/Camera$Parameters;)V

    .line 1333
    :cond_4
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_VIDEOSIZE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_5

    .line 1334
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraparametersVideoSize(Landroid/hardware/Camera$Parameters;)V

    .line 1337
    :cond_5
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_JPEG_QUALITY:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_6

    .line 1338
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersJpegQuality(Landroid/hardware/Camera$Parameters;)V

    .line 1341
    :cond_6
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_7

    .line 1342
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersZoom(Landroid/hardware/Camera$Parameters;)V

    .line 1345
    :cond_7
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BRIGHTNESS:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_8

    .line 1346
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V

    .line 1349
    :cond_8
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_WHITE_BALANCE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_9

    .line 1350
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V

    .line 1353
    :cond_9
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_SCENE_MODE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_a

    .line 1354
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersSceneMode(Landroid/hardware/Camera$Parameters;)V

    .line 1357
    :cond_a
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EFFECT:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_b

    .line 1358
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V

    .line 1361
    :cond_b
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZSL_MODE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_c

    .line 1362
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersZSL(Landroid/hardware/Camera$Parameters;)V

    .line 1365
    :cond_c
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_WDR:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_d

    .line 1366
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersWDR(Landroid/hardware/Camera$Parameters;)V

    .line 1369
    :cond_d
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_HDR:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_e

    .line 1370
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V

    .line 1375
    :cond_e
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V

    .line 1378
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ANTI_BANDING:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_f

    .line 1379
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersAntiBanding(Landroid/hardware/Camera$Parameters;)V

    .line 1382
    :cond_f
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_OJT:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_10

    .line 1383
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersOJT(Landroid/hardware/Camera$Parameters;)V

    .line 1386
    :cond_10
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_FOCUS_MODE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_11

    .line 1387
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersFocusMode(Landroid/hardware/Camera$Parameters;)V

    .line 1390
    :cond_11
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_AUTO_EXPOSURE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_12

    .line 1391
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersAutoExposure(Landroid/hardware/Camera$Parameters;)V

    .line 1394
    :cond_12
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ANTI_SHAKE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_13

    .line 1395
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersAntiShake(Landroid/hardware/Camera$Parameters;)V

    .line 1398
    :cond_13
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_COLOR_EXTRACT:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_14

    .line 1399
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V

    .line 1402
    :cond_14
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_SOUND_PLAY:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_15

    .line 1403
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersSoundPlay(Landroid/hardware/Camera$Parameters;)V

    .line 1406
    :cond_15
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BEAUTY:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_16

    .line 1407
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersBeauty(Landroid/hardware/Camera$Parameters;)V

    .line 1410
    :cond_16
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_TEXT:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_17

    .line 1411
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersText(Landroid/hardware/Camera$Parameters;)V

    .line 1414
    :cond_17
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_IPL_EFFECT:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_18

    .line 1415
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V

    .line 1418
    :cond_18
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_REMOTE_ZOOM_ENABLE:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_19

    .line 1419
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_GetActRemoteZoomParam()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1420
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateActRemoteZoomParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1421
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/Photo;->_SetActRemoteZoomParam(Z)V

    .line 1425
    :cond_19
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_BURST_SHOT:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1a

    .line 1426
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V

    .line 1429
    :cond_1a
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ISO:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1b

    .line 1430
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParametersISO(Landroid/hardware/Camera$Parameters;)V

    .line 1433
    :cond_1b
    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_MIRROR:J

    and-long/2addr v2, p1

    cmp-long v2, v2, v5

    if-eqz v2, :cond_1c

    .line 1434
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_UpdateCameraParameterFrontCameraFlipForSnapshot(Landroid/hardware/Camera$Parameters;)V

    .line 1437
    :cond_1c
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Photo] set parameters :: mParameters.toString() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1440
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1441
    :catch_0
    move-exception v0

    .line 1442
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/pantech/app/vegacamera/util/Util;->IsEngMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1443
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "[Photo] device set parameters exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1445
    :cond_1d
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Photo] set parameters exception = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected _SetCameraParametersWhenIdle(J)V
    .locals 8
    .parameter "additionalUpdateSet"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 764
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] _SetCameraParametersWhenIdle() :: additionalUpdateSet = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Photo;->lUpdateSet:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/Photo;->lUpdateSet:J

    .line 768
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] lUpdateSet = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/Photo;->lUpdateSet:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Photo;->lUpdateSet:J

    sget-wide v2, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_PICTURESIZE:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 772
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_UpdatePreferenceRemoteOnly()V

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    if-nez v0, :cond_2

    .line 778
    iput-wide v6, p0, Lcom/pantech/app/vegacamera/Photo;->lUpdateSet:J

    .line 799
    :cond_1
    :goto_0
    return-void

    .line 780
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_IsCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 781
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bRestartForcePreview:Z

    if-eqz v0, :cond_3

    .line 782
    const-string v0, "Photo"

    const-string v1, "[Photo] ZSL enabled, restarting preview"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StartPreview()V

    .line 784
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Photo;->bRestartForcePreview:Z

    .line 787
    :cond_3
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/Photo;->lUpdateSet:J

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParameters(J)V

    .line 788
    iput-wide v6, p0, Lcom/pantech/app/vegacamera/Photo;->lUpdateSet:J

    .line 794
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/Photo;->bPreviewSizeChanged:Z

    if-eqz v0, :cond_1

    .line 795
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/Photo;->bPreviewSizeChanged:Z

    .line 796
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetPreviewFrameLayoutAspectRatio()V

    .line 797
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StartPreview()V

    goto :goto_0

    .line 790
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 791
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method protected _SetDisplayOrientation()V
    .locals 2

    .prologue
    .line 1462
    const-string v0, "Photo"

    const-string v1, "[Photo] _SetDisplayOrientation()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Photo;->iDisplayRotation:I

    .line 1464
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iDisplayRotation:I

    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Photo;->iDisplayOrientation:I

    .line 1465
    const/4 v0, 0x0

    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraId:I

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayOrientation(II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraDisplayOrientation:I

    .line 1467
    return-void
.end method

.method protected _SetOneShotPreviewCallBack()V
    .locals 2

    .prologue
    .line 1471
    const-string v0, "Photo"

    const-string v1, "[Photo] _SetOneShotPreviewCallBack()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mOneShotPreviewCallback:Lcom/pantech/app/vegacamera/Photo$OneShotPreviewCallback;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 1473
    return-void
.end method

.method protected _SetPramInterface(Lcom/pantech/app/vegacamera/operator/IOperInterface;)V
    .locals 0
    .parameter "listner"

    .prologue
    .line 704
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraPInterface:Lcom/pantech/app/vegacamera/operator/IOperInterface;

    .line 705
    return-void
.end method

.method protected _SetPreviewCallBack()V
    .locals 2

    .prologue
    .line 1476
    const-string v0, "Photo"

    const-string v1, "[Photo] _SetPreviewCallBack()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    return-void
.end method

.method protected _SetZoomControl(IZ)V
    .locals 5
    .parameter "state"
    .parameter "fVoice"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2461
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    if-eqz v2, :cond_0

    .line 2462
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 2463
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 2464
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->isBurstState()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2500
    :cond_1
    :goto_0
    return-void

    .line 2467
    :cond_2
    if-eqz p2, :cond_5

    const/4 v0, 0x6

    .line 2469
    .local v0, multiple:I
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2470
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2471
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->OnFocusRelease()V

    .line 2472
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CancelAutoFocus()V

    .line 2475
    :cond_3
    if-nez p1, :cond_6

    .line 2476
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    .line 2477
    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_4

    .line 2478
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    .line 2479
    if-eqz p2, :cond_4

    .line 2480
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->zoom_in_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 2495
    :cond_4
    :goto_2
    sget-wide v1, Lcom/pantech/app/vegacamera/data/AppData;->UPDATE_PARAM_ZOOM:J

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParameters(J)V

    .line 2497
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2498
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetZoomIndex(I)V

    goto :goto_0

    .end local v0           #multiple:I
    :cond_5
    move v0, v1

    .line 2467
    goto :goto_1

    .line 2484
    .restart local v0       #multiple:I
    :cond_6
    if-ne p1, v1, :cond_4

    .line 2485
    iget v2, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    .line 2486
    iget v2, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    if-gt v2, v1, :cond_4

    .line 2487
    iput v4, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    .line 2488
    if-eqz p2, :cond_4

    .line 2489
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$string;->zoom_out_max:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method protected _StartPreview()V
    .locals 5

    .prologue
    .line 1484
    const-string v3, "Photo"

    const-string v4, "[Photo] _StartPreview"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1487
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StopPreview()V

    .line 1490
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mErrorCallback:Lcom/pantech/app/vegacamera/callback/CameraErrorCb;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 1492
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetOneShotPreviewCallBack()V

    .line 1493
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetPreviewCallBack()V

    .line 1495
    const-wide/16 v3, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParameters(J)V

    .line 1496
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetDisplayOrientation()V

    .line 1498
    sget-boolean v3, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-eqz v3, :cond_4

    .line 1499
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, v3, Lcom/pantech/app/vegacamera/ActivityBase;->mCameraScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    .line 1500
    .local v1, screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v3

    if-nez v3, :cond_2

    .line 1501
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1502
    .local v2, size:Landroid/hardware/Camera$Size;
    iget v3, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraDisplayOrientation:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_3

    .line 1503
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    .line 1508
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->NotifyScreenNailChanged()V

    .line 1509
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->acquireSurfaceTexture()V

    .line 1510
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 1512
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/Photo;->iCameraDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1513
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V

    .line 1519
    .end local v1           #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    :goto_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->StartPreviewStartPerformTest()V

    .line 1521
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->startPreviewAsync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1527
    return-void

    .line 1505
    .restart local v1       #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    .restart local v2       #size:Landroid/hardware/Camera$Size;
    :cond_3
    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setSize(II)V

    goto :goto_0

    .line 1515
    .end local v1           #screenNail:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
    .end local v2           #size:Landroid/hardware/Camera$Size;
    :cond_4
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/Photo;->iDisplayOrientation:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setDisplayOrientation(I)V

    .line 1516
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    .local v0, ex:Ljava/lang/Throwable;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_CloseCamera()V

    .line 1524
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "startPreview failed"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected _StopPreview()V
    .locals 3

    .prologue
    .line 1530
    const-string v1, "Photo"

    const-string v2, "[Photo] _StopPreview"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1534
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1539
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 1540
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Photo"

    const-string v2, "[Photo] camera device stop preview exception"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateActRemoteZoomParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 1292
    const-string v0, "pantech-remote"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    return-void
.end method

.method protected _UpdateCameraParametersAntiBanding(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1086
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_anti_banding"

    .line 1087
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_anti_banding_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1086
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1089
    .local v0, mAntiBanding:Ljava/lang/String;
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedAntiBanding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] antibanding mAntiBanding = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    const-string v1, "antibanding-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1092
    const-string v1, "antibanding"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    const-string v1, "Photo"

    const-string v2, "[Photo] antibanding is not supported"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersAntiShake(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_anti_shake"

    .line 1210
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_anti_shake_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1209
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, mAntiShake:Ljava/lang/String;
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] mAntiShake = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    const-string v1, "pantech-antishake-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1215
    const-string v1, "pantech-antishake"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    :goto_0
    return-void

    .line 1217
    :cond_0
    const-string v1, "Photo"

    const-string v2, "[Photo] is not supported antishake"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersAutoExposure(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 1179
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_UpdateCameraParametersAutoExposure auto exposure param "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "auto-exposure"

    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_photometry"

    .line 1181
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_setting_photometry_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1180
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1182
    .local v0, mExposure:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1183
    .local v1, needToSetMeteringAreas:Z
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedUsedGestureLongTapAfAeLock()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1184
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1185
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->GetFocusState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1186
    const-string v0, "area-metering"

    .line 1191
    :cond_0
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_UpdateCameraParametersAutoExposure mExposure "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string v2, "area-metering"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    const/4 v1, 0x1

    .line 1195
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_setting_photometry_default:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1198
    :cond_1
    const-string v2, "auto-exposure-values"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1199
    if-eqz v1, :cond_2

    .line 1200
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_SetMeteringAreasIfSupported()V

    .line 1202
    :cond_2
    const-string v2, "auto-exposure"

    invoke-virtual {p1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    :goto_0
    return-void

    .line 1204
    :cond_3
    const-string v2, "Photo"

    const-string v3, "[Photo] is not supported mExposure"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersBeauty(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 1223
    return-void
.end method

.method protected _UpdateCameraParametersBrightness(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 877
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_ev"

    .line 878
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_ev_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 877
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, mEV:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "luma-adaptation"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return-void
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsOnBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsOnIPLEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsBestFaceModule()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsBeautyModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsTextModule()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1123
    :cond_0
    const-string v0, "snapshot-burst-num"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :goto_0
    return-void

    .line 1125
    :cond_1
    const-string v0, "snapshot-burst-num"

    const-string v1, "20"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersBurst(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .parameter "param"
    .parameter "count"

    .prologue
    .line 1116
    const-string v0, "snapshot-burst-num"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    return-void
.end method

.method protected _UpdateCameraParametersColorEffect(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 1014
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_group"

    .line 1015
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_group_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1014
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1016
    .local v1, mEffectGroup:Ljava/lang/String;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v3, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, colorEffect:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "pref_effect_color_mono"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1019
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_mono"

    .line 1020
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1019
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1030
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 1031
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Photo] set param color effect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_1
    return-void

    .line 1021
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "pref_effect_color_sepia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1022
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_sepia"

    .line 1023
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1022
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    goto :goto_0

    :cond_3
    if-eqz v1, :cond_0

    const-string v2, "pref_effect_color_aqua"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1025
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_effect_color_aqua"

    .line 1026
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_tone_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1025
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected _UpdateCameraParametersColorExtract(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1257
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedColorExtraction()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1258
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_effect_color_extraction"

    .line 1259
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_effect_color_extraction_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1258
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .local v0, colorExtractionMode:Ljava/lang/String;
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] [CE] _UpdateCameraParametersColorExtract) : colorExtractionMode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1263
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetColorExtractionUpdateMode(Ljava/lang/String;)V

    .line 1268
    :goto_0
    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1269
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] mode = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] R = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->getRGB_R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] G = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->getRGB_G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const-string v1, "Photo"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Photo] B = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->getRGB_B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getRGB_R()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-colorextraction-rgb-r"

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->getRGB_R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getRGB_G()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1277
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-colorextraction-rgb-g"

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->getRGB_G()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->getRGB_B()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1280
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-colorextraction-rgb-b"

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/data/AppData;->getRGB_B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-colorextraction"

    invoke-virtual {v1, v2, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    .end local v0           #colorExtractionMode:Ljava/lang/String;
    :cond_3
    return-void

    .line 1265
    .restart local v0       #colorExtractionMode:Ljava/lang/String;
    :cond_4
    const-string v1, "Photo"

    const-string v2, "[Photo] [CE] _UpdateCameraParametersColorExtract) : LayoutControlObject is null "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected _UpdateCameraParametersFLASH(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 1061
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_flash_mode_camera"

    .line 1062
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_flash_mode_camera_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1061
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .local v0, flashMode:Ljava/lang/String;
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Photo] flashMode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    .line 1068
    .local v1, supportedFlash:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1069
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    if-nez v2, :cond_1

    .line 1071
    const-string v0, "off"

    .line 1077
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1078
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Photo] _UpdateCameraParametersFLASH flashMode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :goto_1
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Photo;->_UpdateRemoteDataFlash(Ljava/lang/String;)V

    .line 1083
    return-void

    .line 1072
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    .line 1074
    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1075
    const-string v0, "torch"

    goto :goto_0

    .line 1080
    :cond_2
    const-string v2, "Photo"

    const-string v3, "[Photo] _UpdateCameraParametersFLASH flashMode:null"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected _UpdateCameraParametersFocusMode(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 1149
    const-string v2, "Photo"

    const-string v3, "[Photo] UpdateCameraParametersFocusMode"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const/4 v1, 0x0

    .line 1152
    .local v1, mode:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1153
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->GetFocusMode()Ljava/lang/String;

    move-result-object v1

    .line 1155
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_0
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/Photo;->_updateAutoFocusMoveCallback(Ljava/lang/String;)V

    .line 1163
    return-void

    .line 1156
    :catch_0
    move-exception v0

    .line 1157
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_focus_mode_status"

    .line 1158
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_focus_mode_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1157
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Photo] param.UpdateCameraParametersFocusMode + mode =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersHDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 1049
    const-string v0, "pantech-hdr-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1050
    const-string v0, "Photo"

    const-string v1, "[Photo] is not supported hdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :goto_0
    return-void

    .line 1052
    :cond_0
    const-string v0, "pantech-hdr"

    const-string v1, "off"

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersIPLEffects(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_effect_group"

    .line 1227
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_effect_group_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1226
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1229
    .local v0, mEffectGroup:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v1, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->IsIPLEffectSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1230
    if-eqz v0, :cond_1

    const-string v1, "pref_effect_water_color_pencil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1231
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-sketch-c"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_0
    :goto_0
    return-void

    .line 1232
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "pref_effect_poster_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1233
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-poster-cartoon-c"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1234
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "pref_effect_poster_b_n_w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1235
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-poster-cartoon-m"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1236
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "pref_effect_neon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1237
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-neon"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1238
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "pref_effect_embossing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1239
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-emboss"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "pref_effect_dot_color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1241
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-color-dot-wht"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1242
    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "pref_effect_dot_b_n_w"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1243
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-mono-dot"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1244
    :cond_7
    if-eqz v0, :cond_0

    const-string v1, "pref_effect_none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1245
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const-string v2, "pantech-ipl-mode"

    const-string v3, "pantech-ipl-off"

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected _UpdateCameraParametersISO(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_iso"

    .line 1131
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_iso_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1130
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, iso:Ljava/lang/String;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1133
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setISOValue(Ljava/lang/String;)V

    .line 1135
    :cond_0
    return-void
.end method

.method protected _UpdateCameraParametersOJT(Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .parameter "param"

    .prologue
    .line 1138
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v1

    const-string v2, "pref_setting_focus_mode"

    .line 1139
    iget-object v3, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v4, Lcom/pantech/app/vegacamera/R$string;->pref_setting_focus_mode_default:I

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1138
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, mObjectFocusMode:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "Object Tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1142
    const-string v1, "pantech-ojt"

    const-string v2, "on"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    :goto_0
    return-void

    .line 1144
    :cond_0
    const-string v1, "pantech-ojt"

    const-string v2, "off"

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersPictureSize(Landroid/hardware/Camera$Parameters;)V
    .locals 10
    .parameter "param"

    .prologue
    .line 814
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v6

    const-string v7, "pref_setting_picture_size"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 815
    .local v2, pictureSize:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 816
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/CameraSettings;->InitialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 821
    :goto_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 825
    .local v3, size:Landroid/hardware/Camera$Size;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 827
    .local v4, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_IsLowMagnification()Z

    move-result v7

    invoke-static {v6, v4, v3, v7}, Lcom/pantech/app/vegacamera/util/Util;->GetOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;Landroid/hardware/Camera$Size;Z)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 829
    .local v0, optimalSize:Landroid/hardware/Camera$Size;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 830
    .local v1, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 831
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iget v7, v0, Landroid/hardware/Camera$Size;->width:I

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 833
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/Photo;->bPreviewSizeChanged:Z

    .line 835
    const-string v6, "Photo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[Photo] preview size is "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/Photo;->_UpdateRemoteDataPictureSize(Ljava/lang/String;)V

    .line 840
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    const-string v7, "video-size"

    new-instance v8, Ljava/lang/StringBuilder;

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string v6, "Photo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "[Photo] video-size"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    return-void

    .line 818
    .end local v0           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v1           #original:Landroid/hardware/Camera$Size;
    .end local v3           #size:Landroid/hardware/Camera$Size;
    .end local v4           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 819
    .local v5, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v6, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/pantech/app/vegacamera/CameraSettings;->SetCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;)Z

    goto/16 :goto_0
.end method

.method protected _UpdateCameraParametersSoundPlay(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter "param"

    .prologue
    .line 1288
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_ShutterSoundPlay()V

    .line 1289
    return-void
.end method

.method protected _UpdateCameraParametersText(Landroid/hardware/Camera$Parameters;)V
    .locals 3
    .parameter "param"

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsTextModule()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    const-string v1, "pantech-ipl-mode"

    const-string v2, "pantech-ipl-off"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    :cond_0
    return-void
.end method

.method protected _UpdateCameraParametersWDR(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1037
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pantech-wdr-mode-values"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1038
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1039
    const-string v0, "pantech-wdr-mode"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetWdrState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :goto_0
    return-void

    .line 1041
    :cond_0
    const-string v0, "Photo"

    const-string v1, "[Photo] app data wdr state is null"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1044
    :cond_1
    const-string v0, "Photo"

    const-string v1, "[Photo] is not supported wdr"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 6
    .parameter "param"

    .prologue
    .line 991
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetComobPref()Lcom/pantech/app/vegacamera/preference/ComboPreferences;

    move-result-object v2

    const-string v3, "pref_setting_wb"

    .line 992
    iget-object v4, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v5, Lcom/pantech/app/vegacamera/R$string;->pref_setting_wb_default:I

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/ActivityBase;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 991
    invoke-virtual {v2, v3, v4}, Lcom/pantech/app/vegacamera/preference/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, whiteBalance:Ljava/lang/String;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/Photo;->_InApplicableWB()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    const-string v1, "auto"

    .line 998
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->IsSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 999
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 1000
    const-string v2, "Photo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Photo] set param wb = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_1
    :goto_0
    return-void

    .line 1002
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    .line 1003
    .local v0, mWhiteBalance:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1004
    const-string v2, "auto"

    goto :goto_0
.end method

.method protected _UpdateCameraParametersZSL(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 1100
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedZSLModes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1104
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsZSLUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    const-string v0, "Photo"

    const-string v1, "[Photo] set zsl mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 1107
    const-string v0, "on"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    goto :goto_0

    .line 1109
    :cond_1
    const-string v0, "Photo"

    const-string v1, "[Photo] unset zsl mode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    .line 1111
    const-string v0, "off"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected _UpdateCameraParametersZoom(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 870
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 872
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iZoomValue:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/Photo;->_UpdateRemoteZoomValue(I)V

    .line 874
    :cond_0
    return-void
.end method

.method protected _UpdatePreferenceRemoteOnly()V
    .locals 2

    .prologue
    .line 1480
    const-string v0, "Photo"

    const-string v1, "[Photo] _UpdatePreferenceRemoteOnly()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    return-void
.end method

.method protected _UpdateRemoteDataFlash(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1058
    return-void
.end method

.method protected _UpdateRemoteDataPictureSize(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 807
    return-void
.end method

.method protected _UpdateRemoteZoomValue(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 867
    return-void
.end method

.method public doAttachData([BLandroid/net/Uri;)V
    .locals 17
    .parameter "jpegImageData"
    .parameter "lastUri"

    .prologue
    .line 2128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v13, v13, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v13, :cond_1

    .line 2229
    :cond_0
    :goto_0
    return-void

    .line 2132
    :cond_1
    const-string v13, "Photo"

    const-string v14, "[Photo] doAttach"

    invoke-static {v13, v14}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2134
    const-string v9, "crop-temp"

    .line 2136
    .local v9, sTempCropFilename:Ljava/lang/String;
    move-object/from16 v3, p1

    .line 2138
    .local v3, data:[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/data/AppData;->GetCropValue()Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_6

    .line 2143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/data/AppData;->GetSaveUri()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 2144
    const/4 v7, 0x0

    .line 2146
    .local v7, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v14}, Lcom/pantech/app/vegacamera/data/AppData;->GetSaveUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v7

    .line 2147
    invoke-virtual {v7, v3}, Ljava/io/OutputStream;->write([B)V

    .line 2148
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 2150
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(I)V

    .line 2151
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2156
    if-eqz v7, :cond_2

    .line 2157
    :try_start_1
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    .line 2226
    .end local v7           #outputStream:Ljava/io/OutputStream;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v13}, Lcom/pantech/app/vegacamera/controller/Thumbnail;->CreateLastThumbnail(Landroid/content/ContentResolver;)Lcom/pantech/app/vegacamera/controller/Thumbnail;

    move-result-object v10

    .line 2227
    .local v10, t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13, v10}, Lcom/pantech/app/vegacamera/ActivityBase;->SetThumbnail(Lcom/pantech/app/vegacamera/controller/Thumbnail;)V

    .line 2228
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->SaveThumbnailToFile()V

    goto :goto_0

    .line 2152
    .end local v10           #t:Lcom/pantech/app/vegacamera/controller/Thumbnail;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v13

    .line 2156
    if-eqz v7, :cond_2

    .line 2157
    :try_start_2
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_1

    .line 2159
    :catch_1
    move-exception v13

    goto :goto_1

    .line 2154
    :catchall_0
    move-exception v13

    .line 2156
    if-eqz v7, :cond_3

    .line 2157
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8

    .line 2164
    :cond_3
    :goto_2
    throw v13

    .line 2166
    .end local v7           #outputStream:Ljava/io/OutputStream;
    :cond_4
    if-eqz p2, :cond_5

    .line 2167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/pantech/app/vegacamera/ActivityBase;->setResult(ILandroid/content/Intent;)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto :goto_1

    .line 2170
    :cond_5
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Exif;->getOrientation([B)I

    move-result v6

    .line 2171
    .local v6, orientation:I
    const v13, 0xc800

    invoke-static {v3, v13}, Lcom/pantech/app/vegacamera/util/Util;->MakeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2172
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1, v6}, Lcom/pantech/app/vegacamera/util/Util;->BmRotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2173
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    const-string v16, "inline-data"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "data"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(ILandroid/content/Intent;)V

    .line 2174
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto :goto_1

    .line 2179
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v6           #orientation:I
    :cond_6
    const/4 v12, 0x0

    .line 2180
    .local v12, tempUri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 2182
    .local v11, tempStream:Ljava/io/FileOutputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v14, "crop-temp"

    invoke-virtual {v13, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 2183
    .local v8, path:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 2184
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const-string v14, "crop-temp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/pantech/app/vegacamera/ActivityBase;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 2185
    invoke-virtual {v11, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 2186
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 2187
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v12

    .line 2198
    if-eqz v11, :cond_7

    .line 2199
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_10

    .line 2208
    :cond_7
    :goto_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2209
    .local v5, newExtras:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/data/AppData;->GetCropValue()Ljava/lang/String;

    move-result-object v13

    const-string v14, "circle"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2210
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2212
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/data/AppData;->GetSaveUri()Landroid/net/Uri;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 2213
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v14}, Lcom/pantech/app/vegacamera/data/AppData;->GetSaveUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2218
    :goto_4
    new-instance v2, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v2, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2219
    .local v2, cropIntent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2220
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v2, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2188
    .end local v2           #cropIntent:Landroid/content/Intent;
    .end local v5           #newExtras:Landroid/os/Bundle;
    .end local v8           #path:Ljava/io/File;
    :catch_2
    move-exception v4

    .line 2189
    .local v4, ex:Ljava/io/FileNotFoundException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(I)V

    .line 2190
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2198
    if-eqz v11, :cond_0

    .line 2199
    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    goto/16 :goto_0

    .line 2201
    :catch_3
    move-exception v13

    goto/16 :goto_0

    .line 2192
    .end local v4           #ex:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v4

    .line 2193
    .local v4, ex:Ljava/io/IOException;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/pantech/app/vegacamera/ActivityBase;->SetResultEx(I)V

    .line 2194
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v13}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2198
    if-eqz v11, :cond_0

    .line 2199
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_c

    goto/16 :goto_0

    .line 2201
    :catch_5
    move-exception v13

    goto/16 :goto_0

    .line 2196
    .end local v4           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v13

    .line 2198
    if-eqz v11, :cond_9

    .line 2199
    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_e

    .line 2206
    :cond_9
    :goto_5
    throw v13

    .line 2215
    .restart local v5       #newExtras:Landroid/os/Bundle;
    .restart local v8       #path:Ljava/io/File;
    :cond_a
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_4

    .line 2161
    .end local v5           #newExtras:Landroid/os/Bundle;
    .end local v8           #path:Ljava/io/File;
    .end local v11           #tempStream:Ljava/io/FileOutputStream;
    .end local v12           #tempUri:Landroid/net/Uri;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_6
    move-exception v13

    goto/16 :goto_1

    .line 2159
    :catch_7
    move-exception v14

    goto/16 :goto_2

    .line 2161
    :catch_8
    move-exception v14

    goto/16 :goto_2

    .line 2159
    :catch_9
    move-exception v13

    goto/16 :goto_1

    .line 2161
    :catch_a
    move-exception v13

    goto/16 :goto_1

    .line 2203
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local v4, ex:Ljava/io/FileNotFoundException;
    .restart local v11       #tempStream:Ljava/io/FileOutputStream;
    .restart local v12       #tempUri:Landroid/net/Uri;
    :catch_b
    move-exception v13

    goto/16 :goto_0

    .local v4, ex:Ljava/io/IOException;
    :catch_c
    move-exception v13

    goto/16 :goto_0

    .line 2201
    .end local v4           #ex:Ljava/io/IOException;
    :catch_d
    move-exception v14

    goto :goto_5

    .line 2203
    :catch_e
    move-exception v14

    goto :goto_5

    .line 2201
    .restart local v8       #path:Ljava/io/File;
    :catch_f
    move-exception v13

    goto/16 :goto_3

    .line 2203
    :catch_10
    move-exception v13

    goto/16 :goto_3
.end method

.method public getAppData()Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1

    .prologue
    .line 2660
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method

.method public getOrientationCompensation()I
    .locals 1

    .prologue
    .line 2691
    iget v0, p0, Lcom/pantech/app/vegacamera/Photo;->iOrientationCompensation:I

    return v0
.end method

.method public onBatteryStateChanged(I)V
    .locals 3
    .parameter "batteryState"

    .prologue
    .line 2577
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBatteryStateEvent() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 2579
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2581
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2582
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->onBatteryStateChanged(I)V

    .line 2584
    :cond_1
    return-void
.end method

.method public onCallStateChanged(I)V
    .locals 3
    .parameter "callState"

    .prologue
    .line 2588
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCallStateChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    return-void
.end method

.method public onCaptureComplete()V
    .locals 2

    .prologue
    .line 2522
    const-string v0, "Photo"

    const-string v1, "[Photo] onCaptureComplete()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2538
    :goto_0
    return-void

    .line 2527
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->SendMessageGotoQuickView()V

    .line 2529
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->onCaptureComplete()V

    .line 2531
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 2533
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/vegacamera/Photo;->iCaptureMode:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CheckFocusState(I)I

    .line 2534
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->IsZSLUsed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2535
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->_StartPreview()V

    .line 2537
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/util/StorageFactory;->GetInstance()Lcom/pantech/app/vegacamera/util/StorageFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/StorageFactory;->updateStorage(Lcom/pantech/app/vegacamera/data/AppData;)V

    goto :goto_0
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .locals 2
    .parameter "faces"
    .parameter "camera"

    .prologue
    .line 2372
    array-length v0, p1

    if-lez v0, :cond_0

    .line 2373
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusData([Landroid/hardware/Camera$Face;)V

    .line 2374
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStart(I)V

    .line 2376
    :cond_0
    return-void
.end method

.method public onHeadSetStateChanged(I)V
    .locals 3
    .parameter "headsetState"

    .prologue
    .line 2603
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHeadSetStateChanged() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    return-void
.end method

.method public onMediaStateChanged()V
    .locals 2

    .prologue
    .line 2593
    const-string v0, "Photo"

    const-string v1, "onMediaStateEvent()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2594
    return-void
.end method

.method public onRingerModeStateChanged(I)V
    .locals 3
    .parameter "audioSystemState"

    .prologue
    .line 2598
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRingerModeStateEvent() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    return-void
.end method

.method public setFocusCallback(Z)V
    .locals 2
    .parameter "focused"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mVideoRecord:Lcom/pantech/app/vegacamera/video/VideoRecord;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/video/VideoRecord;->setFocusCallback(Z)V

    .line 414
    :goto_0
    return-void

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/data/AppData;->setFocusResult(Z)V

    .line 409
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/Photo;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->FocusStop(I)V

    goto :goto_0
.end method
