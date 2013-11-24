.class public Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;
.super Ljava/lang/Object;
.source "RemoteTransferServiceWFD.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RemoteTransferWFDCb"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V
    .locals 0
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandReceiveServerCb(ILjava/lang/Object;)V
    .locals 1
    .parameter "mMode"
    .parameter "value"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->setCommandReceiveData(ILjava/lang/Object;)V

    .line 123
    :cond_0
    return-void
.end method

.method public onCommandSendServerCb(ILjava/lang/Object;)V
    .locals 0
    .parameter "mMode"
    .parameter "value"

    .prologue
    .line 128
    return-void
.end method

.method public onPreviewSendServerCb(I)V
    .locals 0
    .parameter "mCommand"

    .prologue
    .line 109
    return-void
.end method

.method public onSendMessgeHandlerCb(I)V
    .locals 1
    .parameter "sendMessage"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$8(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$8(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    :cond_0
    return-void
.end method
