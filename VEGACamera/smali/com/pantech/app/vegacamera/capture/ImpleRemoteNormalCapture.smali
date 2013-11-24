.class public Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;
.super Ljava/lang/Object;
.source "ImpleRemoteNormalCapture.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/operator/ICapture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;,
        Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;,
        Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;,
        Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$PostViewPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;,
        Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$SaveRequest;,
        Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ShutterCallback;
    }
.end annotation


# static fields
.field private static final RESTART_CAPTURE:I = 0x2

.field private static final SETUP_PREVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RemoteCapture"

.field private static final UPDATE_THUMBNAIL:I = 0x3


# instance fields
.field private mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

.field private mAppData:Lcom/pantech/app/vegacamera/data/AppData;

.field public mAutoFocusTime:J

.field private mCancel:Z

.field private mCapture:Z

.field public mCaptureStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;

.field private mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

.field public mJpegCallbackFinishTime:J

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

.field private mPhoto:Lcom/pantech/app/vegacamera/Photo;

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private final mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

.field private final mRemoteHandler:Landroid/os/Handler;

.field private final mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ShutterCallback;

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mWhat:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;ILandroid/os/Handler;Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;)V
    .locals 3
    .parameter "act"
    .parameter "photo"
    .parameter "data"
    .parameter "what"
    .parameter "handler"
    .parameter "remoteData"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ShutterCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ShutterCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ShutterCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ShutterCallback;

    .line 54
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$PostViewPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$PostViewPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$PostViewPictureCallback;

    .line 55
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;

    .line 56
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$MainHandler;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mHandler:Landroid/os/Handler;

    .line 64
    iput v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mWhat:I

    .line 65
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCancel:Z

    .line 66
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCapture:Z

    .line 68
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 96
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 97
    iput-object p2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 98
    iput-object p3, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 99
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

    .line 100
    new-instance v0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;

    .line 102
    iput p4, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mWhat:I

    .line 103
    iput-object p5, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteHandler:Landroid/os/Handler;

    .line 104
    iput-object p6, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 105
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/Photo;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mWhat:I

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/ActivityBase;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCapture:Z

    return-void
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;

    return-object v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCancel:Z

    return v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRemoteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mShutterCallbackTime:J

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPostViewPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRawPictureCallbackTime:J

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;)J
    .locals 2
    .parameter

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method private getCameraRotation()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v0

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method


# virtual methods
.method public onCapture()V
    .locals 9

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCancel:Z

    .line 111
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCapture:Z

    if-eqz v0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCapture:Z

    .line 117
    iget v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mWhat:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCaptureStartTime:J

    .line 123
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPostViewPictureCallbackTime:J

    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Photo;->GetCameraId()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/Photo;->GetOrientation()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetRotationParameter(Landroid/hardware/Camera$Parameters;II)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegRotation:I

    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetLocation()Landroid/location/Location;

    move-result-object v7

    .line 127
    .local v7, loc:Landroid/location/Location;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/pantech/app/vegacamera/util/Util;->SetGpsParameters(Landroid/hardware/Camera$Parameters;Landroid/location/Location;)V

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 129
    const-string v0, "RemoteCapture"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mShutterCallback:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ShutterCallback;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mRawPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$RawPictureCallback;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPostViewPictureCallback:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$PostViewPictureCallback;

    .line 131
    new-instance v4, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;

    invoke-direct {v4, p0, v7}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$JpegPictureCallback;-><init>(Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;Landroid/location/Location;)V

    .line 130
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 133
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->onCaptureAnimation()V

    .line 134
    const-string v0, "RemoteCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPictureDisplayedToJpegCallbackTime = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPictureDisplayedToJpegCallbackTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 136
    .local v8, size:Landroid/hardware/Camera$Size;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCaptureStartTime:J

    iget v4, v8, Landroid/hardware/Camera$Size;->width:I

    iget v5, v8, Landroid/hardware/Camera$Size;->height:I

    iget v6, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mJpegRotation:I

    invoke-virtual/range {v0 .. v6}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->prepareUri(Landroid/content/ContentResolver;JIII)V

    goto/16 :goto_0
.end method

.method public onCaptureAnimation()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v0

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->getCameraRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->animateSlide(I)V

    .line 147
    return-void
.end method

.method public onRelease()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->finish()V

    .line 261
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

    .line 262
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;->finish()V

    .line 263
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageNamer:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageNamer;

    .line 265
    :cond_0
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 266
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mPhoto:Lcom/pantech/app/vegacamera/Photo;

    .line 267
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 268
    iput-object v1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 269
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 605
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mCancel:Z

    .line 606
    const/4 v0, 0x4

    iput v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mWhat:I

    .line 607
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 608
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 609
    return-void
.end method

.method public setCaptureMode(I)V
    .locals 0
    .parameter "what"

    .prologue
    .line 625
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mListener:Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;

    .line 614
    return-void
.end method

.method public updateThumbnailByDeleteImage()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture;->mImageSaver:Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/capture/ImpleRemoteNormalCapture$ImageSaver;->updateThumbnailBydeleteFile()V

    .line 620
    return-void
.end method
