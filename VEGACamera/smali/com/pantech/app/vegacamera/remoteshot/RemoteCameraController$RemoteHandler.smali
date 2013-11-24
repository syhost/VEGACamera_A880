.class Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;
.super Landroid/os/Handler;
.source "RemoteCameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteHandler"
.end annotation


# instance fields
.field private mCommand:Ljava/lang/Object;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->mCommand:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;-><init>(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 52
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 54
    :sswitch_0
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: MSG_START_NFC_DERVICE"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->HideNfcHelp()V

    .line 57
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnStartTransService()V

    goto :goto_0

    .line 62
    :sswitch_1
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: MSG_STOP_INIT_SERVICE"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnStopInitService()V

    goto :goto_0

    .line 69
    :sswitch_2
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: MSG_CONNECTED"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :sswitch_3
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: MSG_CONNECTION_RESULT"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/Remote;->ConnectionResult(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :sswitch_4
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_SNAPSHOT"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 82
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/pantech/app/vegacamera/Remote;->OnCommandSnapshot(Z)V

    goto :goto_0

    .line 87
    :sswitch_5
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_FOCUS"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->mCommand:Ljava/lang/Object;

    .line 89
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->mCommand:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/Remote;->OnFocusFunctionFactory(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 95
    :sswitch_6
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_FOCUS_DONE"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnFocusDone()V

    goto/16 :goto_0

    .line 102
    :sswitch_7
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_SNAPSHOT_DONE"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnSnapShotDone()V

    goto/16 :goto_0

    .line 109
    :sswitch_8
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_SNAPSHOT_SEND"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnSnapShotSend()V

    goto/16 :goto_0

    .line 116
    :sswitch_9
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_RESOLUTION"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->resolutionChangedByRemocon:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$2(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;Ljava/lang/String;)V

    .line 118
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->resolutionChangedByRemocon:Ljava/lang/String;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$3(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/Remote;->OnCommandResolution(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 124
    :sswitch_a
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_CAMERA_INFO_UPDATE"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->CommandCameraInfoUpdate()V

    goto/16 :goto_0

    .line 131
    :sswitch_b
    const-string v3, "RemoteShot"

    .line 132
    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_CAMERA_INFO_UPDATE_COMPLETE"

    .line 131
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 135
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnCameraInfoUpdateComplete()V

    goto/16 :goto_0

    .line 140
    :sswitch_c
    const-string v3, "RemoteShot"

    .line 141
    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_REMOCON_FLASH_MODE_CHANGE"

    .line 140
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, remoconFlashChanged:Ljava/lang/String;
    const-string v3, "RemoteShot"

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[RemoteCameraController] RemoconHandler :: COMMAND_REMOCON_FLASH_MODE_CHANGE : FlashMode : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/Remote;->OnRemoconFlashModeChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 152
    .end local v2           #remoconFlashChanged:Ljava/lang/String;
    :sswitch_d
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_CAMERA_PICTURE_DELETE"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 154
    .local v0, deleteFileName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, filePath:Ljava/lang/String;
    const-string v3, "RemoteShot"

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[RemoteCameraController] RemoconHandler :: COMMAND_CAMERA_PICTURE_DELETE - fileName : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/pantech/app/vegacamera/Remote;->OnDeleteJpegFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v0           #deleteFileName:Ljava/lang/String;
    .end local v1           #filePath:Ljava/lang/String;
    :sswitch_e
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] RemoconHandler :: COMMAND_TERMINATE_CLIENT"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$0(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$0(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x386

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 170
    :sswitch_f
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 171
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnErrorSocketException()V

    goto/16 :goto_0

    .line 176
    :sswitch_10
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$4(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 177
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$4(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->setBackPressedCnt(I)V

    goto/16 :goto_0

    .line 182
    :sswitch_11
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] \tRemoconHandler :  FINISH_SERVICE_READY "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 185
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnFinishServiceReady()V

    goto/16 :goto_0

    .line 190
    :sswitch_12
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] \tRemoconHandler :  FINISH_SERVICE "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnFinishService()V

    goto/16 :goto_0

    .line 198
    :sswitch_13
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] \tRemoconHandler :  COMMAND_STOP_PREVIEW "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->CommandStopPreview()V

    goto/16 :goto_0

    .line 205
    :sswitch_14
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] \tRemoconHandler :  REMOCON_RESUME_STATE_CHECK "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnCameraKeyValueUpdate()V

    goto/16 :goto_0

    .line 212
    :sswitch_15
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] \tRemoconHandler :  COMMAND_ZOOM_VALUE_CHANGE "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnCameraZoomValueChanged()V

    goto/16 :goto_0

    .line 219
    :sswitch_16
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteCameraController] \tRemoconHandler :  REMOCON_ZOOM_VALUE_CHANGE "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 221
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/Remote;->OnRemoteCameraZoomValueChanged(I)V

    goto/16 :goto_0

    .line 226
    :sswitch_17
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/Remote;->OnCameraKeyValueUpdate()V

    goto/16 :goto_0

    .line 232
    :sswitch_18
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/pantech/app/vegacamera/Remote;->CameraImageSaveResult(Z)V

    goto/16 :goto_0

    .line 238
    :sswitch_19
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 239
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    const-string v4, "connection_success"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/Remote;->ConnectionResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 244
    :sswitch_1a
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 245
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteHandler;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->mRemote:Lcom/pantech/app/vegacamera/Remote;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController;)Lcom/pantech/app/vegacamera/Remote;

    move-result-object v3

    const-string v4, "connection_success"

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/Remote;->ConnectionResult(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_2
        0x44 -> :sswitch_19
        0x45 -> :sswitch_4
        0x46 -> :sswitch_5
        0x47 -> :sswitch_6
        0x4a -> :sswitch_9
        0x4b -> :sswitch_7
        0x4c -> :sswitch_8
        0x4d -> :sswitch_a
        0x4e -> :sswitch_1a
        0x54 -> :sswitch_b
        0x56 -> :sswitch_c
        0x58 -> :sswitch_d
        0x5d -> :sswitch_f
        0x5f -> :sswitch_13
        0x61 -> :sswitch_14
        0x62 -> :sswitch_15
        0x63 -> :sswitch_16
        0x65 -> :sswitch_17
        0x69 -> :sswitch_18
        0x6e -> :sswitch_10
        0x386 -> :sswitch_11
        0x387 -> :sswitch_12
        0x38d -> :sswitch_1
        0x38f -> :sswitch_0
        0x397 -> :sswitch_3
        0x3e7 -> :sswitch_e
    .end sparse-switch
.end method
