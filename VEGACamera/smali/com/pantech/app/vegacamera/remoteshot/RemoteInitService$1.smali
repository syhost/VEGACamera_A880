.class Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;
.super Landroid/os/Handler;
.source "RemoteInitService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 99
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] handleMessage() : msg = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 103
    :pswitch_0
    const-string v0, "RemoteShot"

    .line 104
    const-string v1, "[RemoteInitService] [CHECK_WFD] handleMessage() : STATE_WFD_GET_ADDRESS "

    .line 103
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    const-string v1, "Local_Mac_Address"

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->sLocalWDAddress:Ljava/lang/String;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->access$0(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)Ljava/lang/String;

    move-result-object v2

    .line 106
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->sLocalDeviceName:Ljava/lang/String;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)Ljava/lang/String;

    move-result-object v3

    .line 105
    #calls: Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->broadcastWithBTAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->access$2(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->bIsRegistedReceiver:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->access$3(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->access$4(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->access$5(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;Landroid/content/BroadcastReceiver;)V

    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->bIsRegistedReceiver:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->access$6(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;Z)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->stopSelf()V

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
