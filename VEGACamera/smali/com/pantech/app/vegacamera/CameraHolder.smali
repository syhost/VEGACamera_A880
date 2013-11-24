.class public Lcom/pantech/app/vegacamera/CameraHolder;
.super Ljava/lang/Object;
.source "CameraHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/CameraHolder$MyHandler;
    }
.end annotation


# static fields
.field private static final RELEASE_CAMERA:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraHolder"

.field private static mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

.field private static sHolder:Lcom/pantech/app/vegacamera/CameraHolder;


# instance fields
.field private mBackCameraId:I

.field private mCameraId:I

.field private mCameraOpened:Z

.field private mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

.field private mFrontCameraId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInfo:[Landroid/hardware/Camera$CameraInfo;

.field private mKeepBeforeTime:J

.field private final mNumberOfCameras:I

.field private mParameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v4, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraId:I

    .line 43
    iput v4, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mBackCameraId:I

    .line 44
    iput v4, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mFrontCameraId:I

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraHolder"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 98
    .local v0, ht:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 99
    new-instance v2, Lcom/pantech/app/vegacamera/CameraHolder$MyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/vegacamera/CameraHolder$MyHandler;-><init>(Lcom/pantech/app/vegacamera/CameraHolder;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mHandler:Landroid/os/Handler;

    .line 100
    sget-object v2, Lcom/pantech/app/vegacamera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    if-eqz v2, :cond_1

    .line 101
    sget-object v2, Lcom/pantech/app/vegacamera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    array-length v2, v2

    iput v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mNumberOfCameras:I

    .line 102
    sget-object v2, Lcom/pantech/app/vegacamera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 113
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mNumberOfCameras:I

    if-lt v1, v2, :cond_2

    .line 120
    return-void

    .line 104
    .end local v1           #i:I
    :cond_1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mNumberOfCameras:I

    .line 105
    iget v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mNumberOfCameras:I

    new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 106
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mNumberOfCameras:I

    if-ge v1, v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    aput-object v3, v2, v1

    .line 108
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_2
    iget v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mBackCameraId:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v2, :cond_4

    .line 115
    iput v1, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mBackCameraId:I

    .line 113
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_4
    iget v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mFrontCameraId:I

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 117
    iput v1, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mFrontCameraId:I

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/CameraHolder;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraOpened:Z

    return v0
.end method

.method public static injectMockCamera([Landroid/hardware/Camera$CameraInfo;[Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    .locals 1
    .parameter "info"
    .parameter "camera"

    .prologue
    .line 91
    sput-object p0, Lcom/pantech/app/vegacamera/CameraHolder;->mMockCameraInfo:[Landroid/hardware/Camera$CameraInfo;

    .line 93
    new-instance v0, Lcom/pantech/app/vegacamera/CameraHolder;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/CameraHolder;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/CameraHolder;->sHolder:Lcom/pantech/app/vegacamera/CameraHolder;

    .line 94
    return-void
.end method

.method public static declared-synchronized instance()Lcom/pantech/app/vegacamera/CameraHolder;
    .locals 2

    .prologue
    .line 59
    const-class v1, Lcom/pantech/app/vegacamera/CameraHolder;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/pantech/app/vegacamera/CameraHolder;->sHolder:Lcom/pantech/app/vegacamera/CameraHolder;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/pantech/app/vegacamera/CameraHolder;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/CameraHolder;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/CameraHolder;->sHolder:Lcom/pantech/app/vegacamera/CameraHolder;

    .line 62
    :cond_0
    sget-object v0, Lcom/pantech/app/vegacamera/CameraHolder;->sHolder:Lcom/pantech/app/vegacamera/CameraHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBackCameraId()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mBackCameraId:I

    return v0
.end method

.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mInfo:[Landroid/hardware/Camera$CameraInfo;

    return-object v0
.end method

.method public getFrontCameraId()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mFrontCameraId:I

    return v0
.end method

.method public getNumberOfCameras()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mNumberOfCameras:I

    return v0
.end method

.method public declared-synchronized keep()V
    .locals 4

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mKeepBeforeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized open(I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    .locals 6
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;,
            Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
        }
    .end annotation

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mNumberOfCameras:I

    add-int/lit8 v3, v3, -0x1

    if-le p1, v3, :cond_0

    .line 135
    const/4 p1, 0x0

    .line 137
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraId:I

    if-eq v3, p1, :cond_1

    .line 138
    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->release()V

    .line 139
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    .line 140
    const/4 v3, -0x1

    iput v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraId:I

    .line 142
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_5

    .line 144
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v3, 0xa

    if-lt v1, v3, :cond_3

    .line 163
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v3, :cond_2

    .line 166
    :try_start_2
    const-string v3, "CameraHolder"

    const-string v4, "open camera forced"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraManager;->instance()Lcom/pantech/app/vegacamera/CameraManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/CameraManager;->cameraOpen(I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    .line 176
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 186
    .end local v1           #i:I
    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraOpened:Z

    .line 187
    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 188
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mKeepBeforeTime:J

    .line 189
    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 146
    .restart local v1       #i:I
    :cond_3
    :try_start_4
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v3

    and-int/lit8 v2, v3, 0xf

    .line 147
    .local v2, isRunning:I
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "camera open check isRunning = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " loop count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    if-nez v2, :cond_4

    .line 149
    const-string v3, "CameraHolder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "open camera id is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraManager;->instance()Lcom/pantech/app/vegacamera/CameraManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/CameraManager;->cameraOpen(I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    .line 151
    iput p1, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 155
    .end local v2           #isRunning:I
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/NoSuchMethodError;
    :try_start_5
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraManager;->instance()Lcom/pantech/app/vegacamera/CameraManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/CameraManager;->cameraOpen(I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    .line 157
    iput p1, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 172
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :catch_1
    move-exception v0

    .line 173
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_6
    const-string v3, "CameraHolder"

    const-string v4, "fail to connect Camera"

    invoke-static {v3, v4, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    new-instance v3, Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;

    invoke-direct {v3, v0}, Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 134
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 154
    .restart local v1       #i:I
    .restart local v2       #isRunning:I
    :cond_4
    const-wide/16 v3, 0x64

    :try_start_7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 144
    .end local v2           #isRunning:I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 168
    :catch_2
    move-exception v0

    .line 169
    .restart local v0       #e:Ljava/lang/RuntimeException;
    :try_start_8
    new-instance v3, Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;

    invoke-direct {v3, v0}, Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_1

    .line 179
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #i:I
    :cond_5
    :try_start_9
    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->reconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 184
    :try_start_a
    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2

    .line 180
    :catch_3
    move-exception v0

    .line 181
    .local v0, e:Ljava/io/IOException;
    const-string v3, "CameraHolder"

    const-string v4, "reconnect failed."

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v3, Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;

    invoke-direct {v3, v0}, Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 159
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i:I
    :catch_4
    move-exception v3

    goto :goto_3
.end method

.method public declared-synchronized release()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->Assert(Z)V

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 216
    .local v0, now:J
    iget-wide v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mKeepBeforeTime:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 217
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraOpened:Z

    if-eqz v2, :cond_0

    .line 218
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraOpened:Z

    .line 219
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->stopPreview()V

    .line 221
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mKeepBeforeTime:J

    sub-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_1
    monitor-exit p0

    return-void

    .end local v0           #now:J
    :cond_1
    move v2, v3

    .line 213
    goto :goto_0

    .line 224
    .restart local v0       #now:J
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraOpened:Z

    .line 225
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->release()V

    .line 226
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mDevice:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    .line 229
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 230
    const/4 v2, -0x1

    iput v2, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 213
    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized tryOpen(I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    .locals 3
    .parameter "cameraId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;,
            Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/CameraHolder;->mCameraOpened:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/CameraHolder;->open(I)Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraHardwareException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :try_start_1
    const-string v1, "CameraHolder"

    const-string v2, "[CameraHolder] tryOpen hardware exception"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance v1, Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    .end local v0           #e:Lcom/pantech/app/vegacamera/hardware/CameraHardwareException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 206
    :catch_1
    move-exception v0

    .line 207
    .local v0, e:Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;
    :try_start_2
    const-string v1, "CameraHolder"

    const-string v2, "[CameraHolder] tryOpen camera app crash exception"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/hardware/CameraAppCrashException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method
