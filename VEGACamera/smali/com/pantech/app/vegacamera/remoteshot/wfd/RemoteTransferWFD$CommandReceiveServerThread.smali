.class Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;
.super Ljava/lang/Thread;
.source "RemoteTransferWFD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandReceiveServerThread"
.end annotation


# instance fields
.field private mPort:I

.field private mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private mSocket:Ljava/net/Socket;

.field private mmObjectInputStream:Ljava/io/ObjectInputStream;

.field private mmObjectOutputStream:Ljava/io/ObjectOutputStream;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;I)V
    .locals 2
    .parameter
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    .line 591
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 586
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mPort:I

    .line 592
    iput p2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mPort:I

    .line 593
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mServerSocket:Ljava/net/ServerSocket;

    .line 594
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    .line 595
    return-void
.end method

.method private commandReceiveFromClient(Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;)V
    .locals 6
    .parameter "mRemoconData"

    .prologue
    const/16 v5, 0x4d

    const/4 v4, 0x0

    .line 703
    const/4 v1, 0x0

    .line 704
    .local v1, mCommand:Ljava/lang/String;
    const/4 v0, 0x0

    .line 706
    .local v0, mCameraHashData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 707
    invoke-virtual {p1}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->getCameraHashMapData()Ljava/util/HashMap;

    move-result-object v0

    .line 708
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #mCommand:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 711
    .restart local v1       #mCommand:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 712
    const-string v2, "snapshot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 713
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] Snapshot ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 715
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    const/16 v3, 0x45

    invoke-interface {v2, v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    .line 807
    :cond_1
    :goto_0
    return-void

    .line 718
    :cond_2
    const-string v2, "focus"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 720
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] focus ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 722
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x46

    .line 723
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_FOCUS_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 722
    invoke-interface {v3, v4, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    goto :goto_0

    .line 725
    :cond_3
    const-string v2, "cameraInfoUpdate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 726
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] cameraInfoUpdate ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 728
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    invoke-interface {v2, v5, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    goto :goto_0

    .line 730
    :cond_4
    const-string v2, "resolution"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 731
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] resolution ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 733
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x4a

    .line 734
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_RESOLUTION_REQ_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 733
    invoke-interface {v3, v4, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    goto :goto_0

    .line 736
    :cond_5
    const-string v2, "remocon_server_ready"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 737
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] remocon_server_ready ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 739
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    const/16 v3, 0x51

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_0

    .line 741
    :cond_6
    const-string v2, "cameraInfoUpdateComplete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 742
    const-string v2, "RemoteShot"

    .line 743
    const-string v3, "[CommandReceiveThread] camera_info_update_complete ~~~~~~~~~~~~~~~~~~~ !!!!! "

    .line 742
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 745
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    const/16 v3, 0x54

    invoke-interface {v2, v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 747
    :cond_7
    const-string v2, "flashMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 748
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] flashMode ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 750
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x56

    .line 751
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REMOCON_FLASH_MODE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 750
    invoke-interface {v3, v4, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 753
    :cond_8
    const-string v2, "terminate_client"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 754
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] TERMINATE_CLIENT ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 756
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    const/16 v3, 0x3e7

    invoke-interface {v2, v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    .line 757
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->registerCallBack(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;)V

    goto/16 :goto_0

    .line 759
    :cond_9
    const-string v2, "cameraDeleteImage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 760
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] CAMERA_DELETE_IMAGE ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 762
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x58

    .line 763
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_CAMERA_FILE_DELETE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 762
    invoke-interface {v3, v4, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 765
    :cond_a
    const-string v2, "remocon_image_receive_ready"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 766
    const-string v2, "RemoteShot"

    .line 767
    const-string v3, "[CommandReceiveThread] REMOCON_IMAGE_RECEIVE_READY ~~~~~~~~~~~~~~~~~~~ !!!!! "

    .line 766
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 769
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v3, 0x1

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$13(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 770
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    const/16 v3, 0x59

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_0

    .line 776
    :cond_b
    const-string v2, "remoconStopPreview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 777
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] REMOCON_STOP_PREVIEW ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 779
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    const/16 v3, 0x60

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_0

    .line 781
    :cond_c
    const-string v2, "remoconRestartPreview"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 782
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] REMOCON_RESTART_PREVIEW ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 784
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    const/16 v3, 0x61

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_0

    .line 786
    :cond_d
    const-string v2, "zoomValue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 787
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] ZOOM_VALUE ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 789
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x63

    .line 790
    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_ZOOM_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 789
    invoke-interface {v3, v4, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 792
    :cond_e
    const-string v2, "snapshotModeDone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 793
    const-string v2, "RemoteShot"

    const-string v3, "[CommandReceiveThread] SNAPSHOT_MODE_DONE ~~~~~~~~~~~~~~~~~~~ !!!!! "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 795
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    const/16 v3, 0x65

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_0

    .line 797
    :cond_f
    const-string v2, "remoconAllServerReady"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 798
    const-string v2, "RemoteShot"

    .line 799
    const-string v3, "[CommandReceiveThread] RECEIVE_REMOCON_ALL_SERVER_READY ~~~~~~~~~~~~~~~~~~~ !!!!! "

    .line 798
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 802
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v2

    invoke-interface {v2, v5, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 810
    const-string v1, "RemoteShot"

    const-string v2, "[CommandReceiveThread] cancel()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cancel"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :try_start_0
    const-string v1, "RemoteShot"

    const-string v2, "[CommandReceiveThread] cancel() : dos.close() ~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 818
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    if-eqz v1, :cond_1

    .line 821
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 822
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    .line 824
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    if-eqz v1, :cond_2

    .line 825
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 827
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_3

    .line 828
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 829
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :cond_3
    :goto_0
    :try_start_1
    const-string v1, "RemoteShot"

    const-string v2, "[CommandReceiveThread] cancel() : serverSocket.close() ~~~~~~~~~ "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_4

    .line 841
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 842
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mServerSocket:Ljava/net/ServerSocket;

    .line 844
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v2, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCommandReceiveThread:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$14(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;)V

    .line 851
    :goto_1
    return-void

    .line 831
    :catch_0
    move-exception v0

    .line 832
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RemoteShot"

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommandReceiveThread] cancel() : dos.close() of stream failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 832
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 835
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 836
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->cancel()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 846
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 848
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommandReceiveThread] cancel() : close() of server failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x5d

    .line 599
    const-string v1, "RemoteShot"

    const-string v2, "[CommandReceiveThread] CommandReceiveThread() : run()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v1, "CommandReceiveThread"

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->setName(Ljava/lang/String;)V

    .line 605
    :try_start_0
    const-string v1, "RemoteShot"

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommandReceiveThread] CommandReceiveThread() : run() : ServerSocket() : mPort : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance v1, Ljava/net/ServerSocket;

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mPort:I

    invoke-direct {v1, v2}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x41

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 628
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setWFDState(I)V

    .line 630
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-nez v1, :cond_4

    .line 698
    :cond_2
    :goto_1
    const-string v1, "RemoteShot"

    const-string v2, "END mAcceptThread"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_3
    :goto_2
    return-void

    .line 611
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RemoteShot"

    .line 614
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommandReceiveThread] CommandReceiveThread() : run() : IOException : ServerSocket() failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 615
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 614
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 612
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 618
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    goto :goto_2

    .line 631
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 636
    :try_start_1
    const-string v1, "RemoteShot"

    const-string v2, "[CommandReceiveThread] run() : serverSocket.accept() ~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    .line 640
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    if-nez v1, :cond_5

    .line 641
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v1, "RemoteShot"

    const-string v2, "[CommandReceiveThread] socket is null ~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 687
    :catch_1
    move-exception v0

    .line 688
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommandReceiveThread] run() : IOException [0] : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 691
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 692
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->cancel()V

    goto/16 :goto_1

    .line 647
    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    :try_start_2
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    .line 648
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 649
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    .line 651
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    if-eqz v1, :cond_6

    .line 652
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 654
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bBlockCommandFromRemocon:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$12(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 655
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->commandReceiveFromClient(Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 670
    :cond_6
    :try_start_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_7

    .line 671
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 672
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    .line 674
    :cond_7
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    if-eqz v1, :cond_8

    .line 675
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 676
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    .line 678
    :cond_8
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    if-eqz v1, :cond_9

    .line 679
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 682
    :cond_9
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 683
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 684
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->mSocket:Ljava/net/Socket;

    goto/16 :goto_0

    .line 658
    :catch_2
    move-exception v0

    .line 660
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 661
    const-string v1, "RemoteShot"

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommandReceiveThread] run() : ClassNotFoundException : readUTF failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 665
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandReceiveServerThread;->cancel()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method
