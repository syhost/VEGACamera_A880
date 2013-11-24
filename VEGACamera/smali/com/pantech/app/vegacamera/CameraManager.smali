.class public Lcom/pantech/app/vegacamera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;,
        Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;,
        Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;
    }
.end annotation


# static fields
.field private static final ADD_CALLBACK_BUFFER:I = 0x9

.field private static final AUTO_FOCUS:I = 0xa

.field private static final CANCEL_AUTO_FOCUS:I = 0xb

.field private static final GET_PARAMETERS:I = 0x14

.field private static final LOCK:I = 0x4

.field private static final RECONNECT:I = 0x2

.field private static final RELEASE:I = 0x1

.field private static final SET_AUTO_FOCUS_MOVE_CALLBACK:I = 0xc

.field private static final SET_DISPLAY_ORIENTATION:I = 0xd

.field private static final SET_ERROR_CALLBACK:I = 0x12

.field private static final SET_FACE_DETECTION_LISTENER:I = 0xf

.field private static final SET_ONESHOTPREVIEW_CALLBACK:I = 0x18

.field private static final SET_PARAMETERS:I = 0x13

.field private static final SET_PARAMETERS_ASYNC:I = 0x15

.field private static final SET_PREVIEW_CALLBACK:I = 0x17

.field private static final SET_PREVIEW_CALLBACK_WITH_BUFFER:I = 0x8

.field private static final SET_PREVIEW_DISPLAY_ASYNC:I = 0x19

.field private static final SET_PREVIEW_TEXTURE:I = 0x1a

.field private static final SET_PREVIEW_TEXTURE_ASYNC:I = 0x5

.field private static final SET_ZOOM_CHANGE_LISTENER:I = 0xe

.field private static final START_FACE_DETECTION:I = 0x10

.field private static final START_PREVIEW:I = 0x1b

.field private static final START_PREVIEW_ASYNC:I = 0x6

.field private static final START_RECORD:I = 0x1c

.field private static final STOP_BURSTSHOT:I = 0x1e

.field private static final STOP_FACE_DETECTION:I = 0x11

.field private static final STOP_PREVIEW:I = 0x7

.field private static final STOP_RECORD:I = 0x1d

.field private static final TAG:Ljava/lang/String; = "CameraManager"

.field private static final UNLOCK:I = 0x3

.field private static final WAIT_FOR_IDLE:I = 0x16

.field private static sCameraManager:Lcom/pantech/app/vegacamera/CameraManager;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Landroid/os/Handler;

.field private mCameraProxy:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mReconnectException:Ljava/io/IOException;

.field private mRecordListener:Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;

.field private mRuntimeException:Ljava/lang/RuntimeException;

.field private mSetPreviewException:Ljava/io/IOException;

.field private mSig:Landroid/os/ConditionVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/pantech/app/vegacamera/CameraManager;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/CameraManager;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/CameraManager;->sCameraManager:Lcom/pantech/app/vegacamera/CameraManager;

    .line 68
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    .line 86
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 87
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 88
    new-instance v1, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;-><init>(Lcom/pantech/app/vegacamera/CameraManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/CameraManager;Landroid/hardware/Camera;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/io/IOException;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/io/IOException;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager;->mSetPreviewException:Ljava/io/IOException;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/lang/RuntimeException;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/CameraManager;Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mRecordListener:Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/CameraManager;Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mCameraProxy:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/CameraManager;Ljava/io/IOException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mReconnectException:Ljava/io/IOException;

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/CameraManager;Ljava/io/IOException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mSetPreviewException:Ljava/io/IOException;

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/CameraManager;Ljava/lang/RuntimeException;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/CameraManager;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/CameraManager;)Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager;->mRecordListener:Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static instance()Lcom/pantech/app/vegacamera/CameraManager;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/pantech/app/vegacamera/CameraManager;->sCameraManager:Lcom/pantech/app/vegacamera/CameraManager;

    return-object v0
.end method


# virtual methods
.method cameraOpen(I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    .locals 2
    .parameter "cameraId"

    .prologue
    const/4 v0, 0x0

    .line 296
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;

    .line 297
    iget-object v1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    invoke-direct {v1, p0, v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;-><init>(Lcom/pantech/app/vegacamera/CameraManager;Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/CameraManager;->mCameraProxy:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    .line 299
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager;->mCameraProxy:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    .line 301
    :cond_0
    return-object v0
.end method
