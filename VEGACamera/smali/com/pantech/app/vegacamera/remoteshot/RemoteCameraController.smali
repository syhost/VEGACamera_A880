.class public Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;
.super Ljava/lang/Object;
.source "RemoteCameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;,
        Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    }
.end annotation


# instance fields
.field private mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

.field private mRemote:Lcom/pantech/app/vegacamera/Remote;

.field private mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

.field private final mRemoteHandler:Landroid/os/Handler;

.field private mTransferService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

.field private resolutionChangedByRemocon:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/Remote;)V
    .locals 2
    .parameter "remote"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->resolutionChangedByRemocon:Ljava/lang/String;

    .line 13
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;-><init>(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteHandler:Landroid/os/Handler;

    .line 14
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 17
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    .line 20
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 13
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->resolutionChangedByRemocon:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->resolutionChangedByRemocon:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    return-object v0
.end method


# virtual methods
.method public GetRemoteHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public SetRemoconServiceObj(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V
    .locals 2
    .parameter "service"

    .prologue
    .line 24
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mTransferService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    .line 25
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;-><init>(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mTransferService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->setCameraCallBack(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;)V

    .line 27
    return-void
.end method
