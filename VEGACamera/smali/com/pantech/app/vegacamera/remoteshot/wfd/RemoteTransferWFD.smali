.class public Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
.super Ljava/lang/Object;
.source "RemoteTransferWFD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;,
        Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;,
        Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;,
        Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    }
.end annotation


# static fields
.field private static final BUFFER_FRONT_MINIMUM_SIZE:I = 0xc350

.field private static final BUFFER_MAIN_MINIMUM_SIZE:I = 0x9c40

.field private static BUFFER_MINIMUM_SIZE:I = 0x0

.field private static final CURRENT_CAMERA_FRONT:I = 0x1

.field private static final CURRENT_CAMERA_MAIN:I = 0x0

.field private static final SOCKET_TIMEOUT:I = 0x2710


# instance fields
.field private aPreviewData:[B

.field private bBlockCommandFromRemocon:Z

.field private bCameraState:Z

.field private bCheckedFileSendReady:Z

.field private bCommandSnap:Z

.field private bIsSender:Z

.field private bReceiveInfo:Z

.field private bRemoconParametersUpdated:Z

.field private iState:I

.field private mCameraData:Lcom/pantech/app/vegacamera/data/AppData;

.field private mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

.field private mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

.field private mGroupOwnerPort:I

.field private mHandler:Landroid/os/Handler;

.field private mParameters:Landroid/hardware/Camera$Parameters;

.field private mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

.field private mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

.field private mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V
    .locals 3
    .parameter "handler"
    .parameter "service"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    .line 50
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    .line 51
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 58
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B

    .line 60
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bRemoconParametersUpdated:Z

    .line 61
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCameraState:Z

    .line 64
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z

    .line 65
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bBlockCommandFromRemocon:Z

    .line 82
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferWFD] RemoteTransferWFD() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mHandler:Landroid/os/Handler;

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->iState:I

    .line 87
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bReceiveInfo:Z

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)[B
    .locals 1
    .parameter

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->getPreviewData()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->BUFFER_MINIMUM_SIZE:I

    return v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bBlockCommandFromRemocon:Z

    return v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z

    return-void
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    return-object v0
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCommandSnap:Z

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/data/AppData;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCameraData:Lcom/pantech/app/vegacamera/data/AppData;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bReceiveInfo:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bRemoconParametersUpdated:Z

    return v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)[B
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCameraState:Z

    return v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;[B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method private getPreviewData()[B
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B

    return-object v0
.end method


# virtual methods
.method public GetCommandSnap()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCommandSnap:Z

    return v0
.end method

.method public SetCommandSnap(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 359
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferWFD] setCommand_Snap() : bCommandSnap = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCommandSnap:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCommandSnap:Z

    .line 361
    return-void
.end method

.method public declared-synchronized connect(Ljava/lang/String;I)V
    .locals 3
    .parameter "groupOwnerIp"
    .parameter "port"

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferWFD] connect() : groupOwnerIp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " port = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "RemoteShot"

    const-string v1, "connect()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setWFDState(I)V

    .line 276
    iput p2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mGroupOwnerPort:I

    .line 278
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mGroupOwnerPort:I

    invoke-virtual {p0, p1, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->startCommandSendThread(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectSocketThread()V
    .locals 2

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferWFD] connectSocketThread()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getNotGroupOwnerPort()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->startPreviewSendServerThread(I)V

    .line 233
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getNotGroupOwnerPort()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->startCommandReceiveServerThread(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connected(Ljava/net/Socket;Z)V
    .locals 4
    .parameter "socket"
    .parameter "isSender"

    .prologue
    .line 287
    monitor-enter p0

    :try_start_0
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferWFD] connected() ~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferWFD] connected() : socket = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setWFDState(I)V

    .line 294
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x41

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 298
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 301
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferWFD] connected() : mIsSender = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bIsSender:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->getIsSender()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferWFD] connected() : TO_DO :  FileSendThread ~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    :goto_0
    monitor-exit p0

    return-void

    .line 306
    :cond_1
    :try_start_1
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferWFD] connected() : TO_DO :  FileReceiveThread ~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getFileSendReady()Z
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFileSize()J
    .locals 5

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getLastFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, f:Ljava/io/File;
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferWFD] getFileSize() : size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 144
    .end local v0           #f:Ljava/io/File;
    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getIsSender()Z
    .locals 3

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferWFD] getIsSender() : mIsSender = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bIsSender:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bIsSender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWFDState()I
    .locals 3

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferWFD] setState() : getState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->iState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->iState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initThreads()V
    .locals 3

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferWFD] initThreads() : mPreviewSendThread = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->cancel()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->cancel()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V

    .line 352
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    .line 355
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCommandSnap:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listen()V
    .locals 2

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferWFD] listen()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->cancel()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    .line 221
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setWFDState(I)V

    .line 223
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferWFD] listen() : Call PreviewSendServerThread() ~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/16 v0, 0x231c

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->startPreviewSendServerThread(I)V

    .line 226
    const/16 v0, 0x231c

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->startCommandReceiveServerThread(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyCommandSendThread()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    monitor-enter v1

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 207
    monitor-exit v1

    .line 212
    :cond_0
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyPreviewSendThread()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    if-eqz v0, :cond_1

    .line 197
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bReceiveInfo:Z

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 197
    :cond_0
    monitor-exit v1

    .line 203
    :cond_1
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerCallBack(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;)V
    .locals 0
    .parameter "transferCallBack"

    .prologue
    .line 149
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    .line 150
    return-void
.end method

.method public releaseCallBack()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    .line 154
    return-void
.end method

.method public sendCommandSendSocketMessage(ILjava/util/HashMap;)V
    .locals 3
    .parameter "commandNum"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p2, commanObj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    if-eqz v0, :cond_0

    .line 121
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferWFD] sendCommandSendSocketMessage() : commandNum = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->sendCommandFlagFunction(ILjava/util/HashMap;)V

    .line 125
    :cond_0
    return-void
.end method

.method public setCameraData(Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 0
    .parameter "mCamData"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCameraData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 184
    return-void
.end method

.method public setCameraIdForPreview(I)V
    .locals 1
    .parameter "cameraId"

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const v0, 0x9c40

    sput v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->BUFFER_MINIMUM_SIZE:I

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const v0, 0xc350

    sput v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->BUFFER_MINIMUM_SIZE:I

    goto :goto_0
.end method

.method public setCameraParametersUpdated(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 170
    if-nez p1, :cond_0

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bBlockCommandFromRemocon:Z

    .line 175
    :goto_0
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bRemoconParametersUpdated:Z

    .line 176
    return-void

    .line 173
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bBlockCommandFromRemocon:Z

    goto :goto_0
.end method

.method public setCameraPreferenceUpdated()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 166
    :cond_0
    return-void
.end method

.method public setCameraState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCameraState:Z

    .line 180
    return-void
.end method

.method public declared-synchronized setIsSender(Z)V
    .locals 3
    .parameter "issender"

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferWFD] setIsSender() : issender = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bIsSender:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewData([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B

    .line 159
    return-void
.end method

.method public setRemoteData(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;)V
    .locals 0
    .parameter "mReData"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 188
    return-void
.end method

.method public declared-synchronized setWFDState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferWFD] setState() : state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->iState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startCommandReceiveServerThread(I)V
    .locals 1
    .parameter "port"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->cancel()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    .line 253
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    .line 254
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->start()V

    .line 255
    return-void
.end method

.method public startCommandSendThread(Ljava/lang/String;I)V
    .locals 1
    .parameter "ipAddress"
    .parameter "port"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    .line 263
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    .line 264
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->start()V

    .line 265
    return-void
.end method

.method public startPreviewSendServerThread(I)V
    .locals 1
    .parameter "port"

    .prologue
    .line 238
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->cancel()V

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    .line 243
    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    .line 244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->start()V

    .line 245
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 312
    monitor-enter p0

    :try_start_0
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferWFD] stop()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mHandler:Landroid/os/Handler;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    if-eqz v0, :cond_1

    .line 319
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    if-eqz v0, :cond_2

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 324
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->cancel()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mPreviewSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandSendThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->cancel()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;

    .line 336
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setWFDState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
