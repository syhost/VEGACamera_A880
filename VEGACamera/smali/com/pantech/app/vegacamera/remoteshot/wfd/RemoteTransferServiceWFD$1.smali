.class Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;
.super Landroid/os/Handler;
.source "RemoteTransferServiceWFD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    .line 278
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v8, 0x5a

    const/16 v7, 0x47

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 285
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] mServiceHandler : msg = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bServiceHandlerStop:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    const-string v1, "RemoteShot"

    .line 289
    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler : mServiceHandlerStop ~~~~~~~~~~~~~~~~~~~~!!! "

    .line 288
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :cond_0
    :goto_0
    :pswitch_0
    :sswitch_0
    return-void

    .line 292
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 334
    :sswitch_1
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :  STATE_WF_DICONNECTED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 337
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnExitRemoteService()V

    goto :goto_0

    .line 294
    :sswitch_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 297
    :sswitch_3
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :  STATE_WFD_GET_ADDRESS "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 301
    :sswitch_4
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :  STATE_WFD_CONNECTING "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 305
    :sswitch_5
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :  STATE_WFD_CONNECTED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 309
    :sswitch_6
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :  STATE_CONNECTED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 311
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 320
    :sswitch_7
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :  STATE_WFD_GET_DEVICE "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 324
    :pswitch_1
    const-string v1, "RemoteShot"

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[SmartBeamTransferServiceWFD] mServiceHandler :  DISCOVERY_DEVICE : mConnected = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-boolean v3, v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 325
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-boolean v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bConnected:Z

    if-nez v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnDiscoveryDevice()V

    goto/16 :goto_0

    .line 341
    :sswitch_8
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] mServiceHandler :: COMMAND_SNAPSHOT_SEND :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->getFileSendReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 344
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->getFileSendReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    invoke-virtual {v1, v8, v5}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 351
    :sswitch_9
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :: COMMAND_SNAPSHOT_DONE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 354
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetCameraStateUpdated()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetCameraStateUpdated2(Z)V

    .line 356
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->notifyPreviewSendThread()V

    .line 358
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetCameraStateUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 359
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x4b

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 364
    :sswitch_a
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :: REMOCON_SEND_SERVER_CONNECT"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_0

    .line 368
    :sswitch_b
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :: CAMERA_SERVER_READY"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 371
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x4e

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    .line 372
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iput-boolean v4, v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bConnectedClient:Z

    .line 373
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_0

    .line 379
    :sswitch_c
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :: COMMAND_REMOCON_SERVER_READY"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getNotGroupOwnerIpAddress()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getNotGroupOwnerPort()I

    move-result v3

    .line 383
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->startCommandSendThread(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 389
    :sswitch_d
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :: REMOCON_PREFERENCE_UPDATE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bblockPreferenceUpdate:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$5(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 392
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bblockPreferenceUpdate:Z
    invoke-static {v1, v6}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$6(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Z)V

    goto/16 :goto_0

    .line 395
    :cond_3
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] mServiceHandler :: getCameraStateUpdated() :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetCameraStateUpdated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->GetCameraStateUpdated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->setCameraStateUpdated(Z)V

    .line 400
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->notifyPreviewSendThread()V

    goto/16 :goto_0

    .line 406
    :sswitch_e
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :: COMMAND_CAMERA_INFO_UPDATE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 409
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$7(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setCameraIdForPreview(I)V

    .line 410
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x4d

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 415
    :sswitch_f
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 417
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x52

    .line 418
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    .line 417
    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 423
    :sswitch_10
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 424
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 425
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    .line 426
    const/16 v2, 0x53

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 431
    :sswitch_11
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 432
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_0

    .line 437
    :sswitch_12
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 439
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x55

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 443
    :sswitch_13
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 444
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 445
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$7(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getCameraId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setCameraIdForPreview(I)V

    .line 446
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x57

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 451
    :sswitch_14
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :: COMMAND_FOCUS_DONE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 453
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 454
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 462
    :sswitch_15
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x45

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 468
    :sswitch_16
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: COMMAND_CAMERA_PICTURE_DELETE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 470
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 471
    .local v0, deleteFileName:Ljava/lang/String;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    const/16 v2, 0x58

    invoke-virtual {v1, v2, v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->setCommandReceiveData(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 475
    .end local v0           #deleteFileName:Ljava/lang/String;
    :sswitch_17
    const-string v1, "RemoteShot"

    .line 476
    const-string v2, "[RemoteTransferServiceWFD] mServiceHandler :: COMMAND_REMOCON_IMAGE_RECEIVE_READY"

    .line 475
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    invoke-virtual {v1, v8, v5}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 482
    :sswitch_18
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: ERROR_PREVIEW_SOCKET"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 484
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 485
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 489
    :sswitch_19
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: ERROR_SOCKET_EXCEPTION"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_0

    .line 495
    :sswitch_1a
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 498
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x5e

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 503
    :sswitch_1b
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: REMOCON_PAUSE_STATE_CHECK"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetRemoconPauseState(Z)V

    goto/16 :goto_0

    .line 508
    :sswitch_1c
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: REMOCON_RESUME_STATE_CHECK"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1, v6}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetRemoconPauseState(Z)V

    .line 511
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    const/16 v2, 0x61

    invoke-virtual {v1, v2, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->setCommandReceiveData(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 515
    :sswitch_1d
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: COMMAND_ZOOM_VALUE_CHANGE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 517
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 518
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x62

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 522
    :sswitch_1e
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: REMOCON_ZOOM_VALUE_CHANGE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v2

    const/16 v3, 0x63

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->setCommandReceiveData(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 528
    :sswitch_1f
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: COMMAND_CAMERA_PRE_ID_CHANGE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 531
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x64

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 535
    :sswitch_20
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: COMMAND_SNAPSHOT_MODE_DONE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v1, v6}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->SetRemoconPauseState(Z)V

    .line 538
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->setCommandReceiveData(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 542
    :sswitch_21
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: COMMAND_CAMERA_KEY_VALUE_UPDATE"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 545
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x66

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    goto/16 :goto_0

    .line 549
    :sswitch_22
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: CAMERA_SEND_SERVER_READY"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 551
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V

    .line 552
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->connectSocketThread()V

    .line 553
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    move-result-object v1

    const/16 v2, 0x67

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    .line 554
    const-string v1, "RemoteShot"

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] MainHandler :: RemoteShotUtil.getNotGroupOwnerPort() :: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getNotGroupOwnerPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 555
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 554
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    :sswitch_23
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] MainHandler :: IMAGE_SEND_SUCCESS"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 292
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_1
        0x4 -> :sswitch_6
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_5
        0x12 -> :sswitch_7
        0x41 -> :sswitch_0
        0x44 -> :sswitch_a
        0x45 -> :sswitch_15
        0x47 -> :sswitch_14
        0x4b -> :sswitch_9
        0x4c -> :sswitch_8
        0x4d -> :sswitch_e
        0x4e -> :sswitch_b
        0x4f -> :sswitch_d
        0x51 -> :sswitch_c
        0x52 -> :sswitch_f
        0x53 -> :sswitch_10
        0x54 -> :sswitch_11
        0x55 -> :sswitch_12
        0x57 -> :sswitch_13
        0x58 -> :sswitch_16
        0x59 -> :sswitch_17
        0x5b -> :sswitch_18
        0x5d -> :sswitch_19
        0x5e -> :sswitch_1a
        0x60 -> :sswitch_1b
        0x61 -> :sswitch_1c
        0x62 -> :sswitch_1d
        0x63 -> :sswitch_1e
        0x64 -> :sswitch_1f
        0x65 -> :sswitch_20
        0x66 -> :sswitch_21
        0x67 -> :sswitch_22
        0x69 -> :sswitch_23
    .end sparse-switch

    .line 311
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch

    .line 321
    :pswitch_data_1
    .packed-switch 0x13
        :pswitch_1
    .end packed-switch
.end method
