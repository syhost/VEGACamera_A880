.class Lcom/pantech/app/vegacamera/Remote$2;
.super Ljava/lang/Object;
.source "Remote.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Remote;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Remote;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    const/4 v3, 0x0

    .line 237
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] ~~~~~~~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] onServiceConnected() : name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] ~~~~~~~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v0, "RemoteShot"

    const-string v1, "[Remote] SmartBeamTransferServiceWFD  "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    check-cast p2, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteBinderWD;

    .end local p2
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteBinderWD;->getService()Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v1

    #setter for: Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Remote;->access$0(Lcom/pantech/app/vegacamera/Remote;Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    .line 246
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$1(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetRemoconPauseState(Z)V

    .line 247
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Remote;->mRemoteCameraCtrl:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Remote;->access$1(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->SetRemoconServiceObj(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    .line 248
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$1(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Remote;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->setCameraData(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 249
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$1(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->setRemoteData(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;)V

    .line 250
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$1(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetRemoconPauseState(Z)V

    .line 251
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Remote;->access$1(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetServiceHandlerStop(Z)V

    .line 252
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #getter for: Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Remote;->access$1(Lcom/pantech/app/vegacamera/Remote;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetServiceHandler()Landroid/os/Handler;

    move-result-object v1

    #setter for: Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Remote;->access$2(Lcom/pantech/app/vegacamera/Remote;Landroid/os/Handler;)V

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Remote;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/RemoteLayoutControl;->MenuContainerDisableMenuSwitchButton()V

    .line 255
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 259
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Remote] onServiceDisconnected() : name = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #setter for: Lcom/pantech/app/vegacamera/Remote;->mServiceBinderWFD:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/Remote;->access$0(Lcom/pantech/app/vegacamera/Remote;Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    .line 261
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Remote$2;->this$0:Lcom/pantech/app/vegacamera/Remote;

    #setter for: Lcom/pantech/app/vegacamera/Remote;->mServiceHandler:Landroid/os/Handler;
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/Remote;->access$2(Lcom/pantech/app/vegacamera/Remote;Landroid/os/Handler;)V

    .line 262
    return-void
.end method
