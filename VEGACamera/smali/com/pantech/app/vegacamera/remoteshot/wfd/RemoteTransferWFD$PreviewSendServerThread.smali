.class Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;
.super Ljava/lang/Thread;
.source "RemoteTransferWFD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewSendServerThread"
.end annotation


# instance fields
.field private buffer:[B

.field private format:I

.field private h:I

.field private mClientInetAddress:Ljava/net/InetAddress;

.field private mClientPort:I

.field private mDataSocket:Ljava/net/DatagramSocket;

.field private mDatagramPort:I

.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

.field private w:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;I)V
    .locals 2
    .parameter
    .parameter "port"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 378
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 373
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->buffer:[B

    .line 380
    iput p2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDatagramPort:I

    .line 381
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    .line 382
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientInetAddress:Ljava/net/InetAddress;

    .line 383
    iput v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientPort:I

    .line 384
    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bReceiveInfo:Z
    invoke-static {p1, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 385
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 566
    const-string v0, "RemoteShot"

    const-string v1, "[Camera] PreviewSendThread() : cancel()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancel"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v0, "RemoteShot"

    const-string v1, "[Camera] PreviewSendThread() : cancel() : dos.close() ~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v1, 0x1

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bReceiveInfo:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 570
    const-string v0, "RemoteShot"

    const-string v1, "[Camera] PreviewSendThread() : cancel() : serverSocket.close() ~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$5(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$7(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;[B)V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->disconnect()V

    .line 576
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 577
    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    .line 579
    :cond_1
    return-void
.end method

.method public run()V
    .locals 15

    .prologue
    .line 389
    const-string v1, "RemoteShot"

    const-string v2, "[Camera] PreviewSendThread() : run()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "PreviewSendThread"

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->setName(Ljava/lang/String;)V

    .line 394
    :try_start_0
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] PreviewSendThread() : run() : DatagramSocket() :: mDatagramPort : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    iget v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDatagramPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v1, Ljava/net/DatagramSocket;

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDatagramPort:I

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCameraData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    if-nez v1, :cond_3

    .line 561
    :cond_1
    :goto_1
    const-string v1, "RemoteShot"

    const-string v2, "END PreviewSendThread"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->cancel()V

    .line 563
    :cond_2
    :goto_2
    return-void

    .line 398
    :catch_0
    move-exception v8

    .line 399
    .local v8, e:Ljava/io/IOException;
    const-string v1, "RemoteShot"

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] PreviewSendThread() : run() : IOException : DatagramSocket() failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    goto :goto_2

    .line 408
    .end local v8           #e:Ljava/io/IOException;
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCameraData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bReceiveInfo:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 413
    const/16 v1, 0x64

    :try_start_1
    new-array v11, v1, [B

    .line 414
    .local v11, rbuffer:[B
    new-instance v12, Ljava/net/DatagramPacket;

    array-length v1, v11

    invoke-direct {v12, v11, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 417
    .local v12, receivePacket:Ljava/net/DatagramPacket;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_4

    .line 418
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v12}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 421
    :cond_4
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getLength()I

    move-result v1

    new-array v9, v1, [B

    .line 423
    .local v9, msg:[B
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getLength()I

    move-result v4

    invoke-static {v1, v2, v9, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .line 426
    .local v10, preview_ready:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientInetAddress:Ljava/net/InetAddress;

    .line 427
    invoke-virtual {v12}, Ljava/net/DatagramPacket;->getPort()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientPort:I

    .line 429
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientInetAddress:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientPort:I

    if-lez v1, :cond_0

    .line 430
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->setNotGroupOwnerIpAddress(Ljava/lang/String;)V

    .line 431
    iget v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientPort:I

    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->setNotGroupOwnerPort(I)V

    .line 432
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v2, 0x1

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bReceiveInfo:Z
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 434
    const-string v1, "RemoteShot"

    .line 435
    const-string v2, "****************************************************************************"

    .line 434
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] PreviewSendThread() : mClientInetAddress = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 437
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientInetAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mClientPort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] PreviewSendThread() : preview_ready = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v1, "RemoteShot"

    .line 440
    const-string v2, "****************************************************************************"

    .line 439
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getGroupOwner()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 443
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->getWFDState()I

    move-result v1

    const/16 v2, 0x18

    if-eq v1, v2, :cond_5

    .line 444
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x44

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 449
    :cond_5
    :goto_3
    const/4 v12, 0x0

    .line 450
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PreviewSender - isRemoconParametersUpdated : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bRemoconParametersUpdated:Z
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mDataSocket : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mPreviewData : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 452
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$5(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isCameraState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCameraState:Z
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$6(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 454
    .end local v9           #msg:[B
    .end local v10           #preview_ready:Ljava/lang/String;
    .end local v11           #rbuffer:[B
    .end local v12           #receivePacket:Ljava/net/DatagramPacket;
    :catch_1
    move-exception v8

    .line 455
    .restart local v8       #e:Ljava/io/IOException;
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] PreviewSendThread() : run() : IOException : receive failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 455
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 459
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->cancel()V

    goto/16 :goto_1

    .line 447
    .end local v8           #e:Ljava/io/IOException;
    .restart local v9       #msg:[B
    .restart local v10       #preview_ready:Ljava/lang/String;
    .restart local v11       #rbuffer:[B
    .restart local v12       #receivePacket:Ljava/net/DatagramPacket;
    :cond_6
    :try_start_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x44

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 468
    .end local v9           #msg:[B
    .end local v10           #preview_ready:Ljava/lang/String;
    .end local v11           #rbuffer:[B
    .end local v12           #receivePacket:Ljava/net/DatagramPacket;
    :cond_7
    :try_start_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bRemoconParametersUpdated:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 469
    const-string v1, "RemoteShot"

    const-string v2, "PreviewSender - WAIT!!"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    monitor-enter p0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 471
    :try_start_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v2, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$7(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;[B)V

    .line 472
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 470
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 474
    :try_start_5
    const-string v1, "RemoteShot"

    const-string v2, "PreviewSender - WAKE UP!!"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :cond_8
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mCameraData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/data/AppData;->GetParam()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$8(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Landroid/hardware/Camera$Parameters;)V

    .line 478
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 479
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bRemoconParametersUpdated:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #calls: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->getPreviewData()[B
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$10(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    .line 481
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->aPreviewData:[B
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$5(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)[B

    move-result-object v1

    if-eqz v1, :cond_9

    .line 482
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #calls: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->getPreviewData()[B
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$10(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->buffer:[B

    .line 484
    :cond_9
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 485
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->format:I

    .line 487
    :cond_a
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 488
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iput v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->w:I

    .line 490
    :cond_b
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 491
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iput v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->h:I

    .line 493
    :cond_c
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 497
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->buffer:[B

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->format:I

    iget v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->w:I

    iget v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->h:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 500
    .local v0, yuv_image:Landroid/graphics/YuvImage;
    new-instance v13, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->w:I

    iget v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->h:I

    invoke-direct {v13, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 502
    .local v13, rect:Landroid/graphics/Rect;
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 503
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x28

    invoke-virtual {v0, v13, v1, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 504
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 505
    .local v7, byteBuf:[B
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 506
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 511
    array-length v1, v7

    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$11()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bRemoconParametersUpdated:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    :try_start_6
    iget v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientPort:I

    if-eqz v1, :cond_0

    .line 514
    new-instance v14, Ljava/net/DatagramPacket;

    .line 515
    array-length v1, v7

    .line 516
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientInetAddress:Ljava/net/InetAddress;

    .line 517
    iget v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mClientPort:I

    .line 514
    invoke-direct {v14, v7, v1, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 521
    .local v14, sendPacket:Ljava/net/DatagramPacket;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->mDataSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v14}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 525
    .end local v14           #sendPacket:Ljava/net/DatagramPacket;
    :catch_2
    move-exception v8

    .line 527
    .restart local v8       #e:Ljava/io/IOException;
    :try_start_7
    const-string v1, "RemoteShot"

    .line 528
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] PreviewSendThread() : run() : IOException : mDataSocket send failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 528
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 531
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 533
    :cond_d
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->cancel()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_1

    .line 540
    .end local v0           #yuv_image:Landroid/graphics/YuvImage;
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #byteBuf:[B
    .end local v8           #e:Ljava/io/IOException;
    .end local v13           #rect:Landroid/graphics/Rect;
    :catch_3
    move-exception v8

    .line 541
    .restart local v8       #e:Ljava/io/IOException;
    const-string v1, "RemoteShot"

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] PreviewSendThread() : run() : IOException [0] : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 541
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 544
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 546
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->cancel()V

    goto/16 :goto_1

    .line 470
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_4

    .line 549
    :catch_4
    move-exception v8

    .line 551
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v1, "RemoteShot"

    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Camera] PreviewSendThread() : run() : InterruptedException [0] : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 551
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 554
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$PreviewSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 556
    :cond_e
    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
