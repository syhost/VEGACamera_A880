.class public Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
.super Ljava/lang/Object;
.source "RemoteCameraController.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteCameraCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteServiceCameraCb"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendMessgeHandlerCb(I)V
    .locals 1
    .parameter "mMode"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$0(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 44
    return-void
.end method

.method public setCommandReceiveData(ILjava/lang/Object;)V
    .locals 3
    .parameter "mMode"
    .parameter "obj"

    .prologue
    .line 36
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteCameraController] setCommandReceiveData() - mMode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$0(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 38
    return-void
.end method
