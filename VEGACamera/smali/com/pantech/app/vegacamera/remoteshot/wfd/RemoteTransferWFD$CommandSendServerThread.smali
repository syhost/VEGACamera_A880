.class Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;
.super Ljava/lang/Thread;
.source "RemoteTransferWFD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandSendServerThread"
.end annotation


# instance fields
.field private isSendVersionInfo:Z

.field private isSnapShotDone:Z

.field private mCopyFileResult:Z

.field private mFileUri:Landroid/net/Uri;

.field private final mHost:Ljava/lang/String;

.field private final mPort:I

.field private mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

.field private mSendCommandStr:Ljava/lang/String;

.field private mSocket:Ljava/net/Socket;

.field private mSocketAddr:Ljava/net/SocketAddress;

.field private mmInputStream:Ljava/io/InputStream;

.field private mmObjectInputStream:Ljava/io/ObjectInputStream;

.field private mmObjectOutputStream:Ljava/io/ObjectOutputStream;

.field private mmOutputStream:Ljava/io/OutputStream;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "ipAddress"
    .parameter "port"

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 875
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 856
    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    .line 861
    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmOutputStream:Ljava/io/OutputStream;

    .line 862
    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmInputStream:Ljava/io/InputStream;

    .line 866
    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    .line 867
    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    .line 869
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->isSnapShotDone:Z

    .line 871
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->isSendVersionInfo:Z

    .line 873
    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 876
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CommandSendServerThread] CommandSendThread() : groupOwnerIp = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    .line 878
    iput-object p2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mHost:Ljava/lang/String;

    .line 879
    iput p3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mPort:I

    .line 880
    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z
    .locals 7
    .parameter "mmFileInputStream"
    .parameter "mmFileOutputStream"

    .prologue
    const/4 v3, 0x0

    .line 1315
    const-string v4, "RemoteShot"

    const-string v5, "[RemoteTransferWFD] copyFile() "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    const/16 v4, 0x400

    new-array v0, v4, [B

    .line 1319
    .local v0, buf:[B
    if-eqz p1, :cond_0

    .line 1320
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .local v2, len:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 1323
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 1324
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    .end local v2           #len:I
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1336
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onCommandReceiveServerCb(ILjava/lang/Object;)V

    .line 1338
    :cond_1
    const-string v3, "RemoteShot"

    const-string v4, "[CommandSendServerThread] copyFile() : Success !!!!!!!!!!!!"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 1321
    .restart local v2       #len:I
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p2, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1326
    .end local v2           #len:I
    :catch_0
    move-exception v1

    .line 1328
    .local v1, e:Ljava/io/IOException;
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[CommandSendServerThread] copyFile() : IOException = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    const/16 v4, 0x5d

    .line 1345
    :try_start_0
    const-string v1, "RemoteShot"

    .line 1346
    const-string v2, "[CommandSendServerThread] CommandSendThread() : cancel() : dos.close() ~~~~~~~~"

    .line 1345
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->isSnapShotDone:Z

    .line 1348
    const-string v1, "RemoteShot"

    .line 1349
    const-string v2, "[CommandSendServerThread] COMMAND_CAMERA_IMAGE_SEND :: isSnapShotDone :: FALSE"

    .line 1348
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v2, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$13(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 1352
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 1353
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 1354
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmOutputStream:Ljava/io/OutputStream;

    .line 1356
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 1357
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1358
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmInputStream:Ljava/io/InputStream;

    .line 1360
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_2

    .line 1361
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 1362
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    .line 1364
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    if-eqz v1, :cond_3

    .line 1365
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    .line 1366
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    .line 1368
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    if-eqz v1, :cond_4

    .line 1369
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :cond_4
    :goto_0
    :try_start_1
    const-string v1, "RemoteShot"

    .line 1382
    const-string v2, "[CommandSendServerThread] CommandSendThread() : cancel() : mmSocket.close() ~~~~~~~~ "

    .line 1381
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_5

    .line 1384
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 1385
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    .line 1397
    :cond_5
    :goto_1
    return-void

    .line 1371
    :catch_0
    move-exception v0

    .line 1373
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RemoteShot"

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommandSendServerThread] CommandSendThread() : cancel() : dos.close() of stream failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1375
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1374
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1372
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1377
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1388
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1390
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "RemoteShot"

    .line 1391
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CommandSendServerThread] CommandSendThread() : cancel() : close() of connect socket failed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1391
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1389
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1394
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    goto :goto_1
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 884
    const-string v3, "RemoteShot"

    const-string v4, "[CommandSendServerThread] CommandSendThread() : run() "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v3, "CommandSendThread"

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->setName(Ljava/lang/String;)V

    .line 887
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1078
    :goto_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V

    .line 1079
    :goto_2
    return-void

    .line 888
    :cond_0
    monitor-enter p0

    .line 890
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-nez v3, :cond_1

    .line 891
    monitor-exit p0

    goto :goto_1

    .line 888
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 894
    :cond_1
    :try_start_1
    new-instance v3, Ljava/net/Socket;

    invoke-direct {v3}, Ljava/net/Socket;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    .line 895
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 896
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 899
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mHost:Ljava/lang/String;

    if-nez v3, :cond_2

    iget v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mPort:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    if-ge v3, v6, :cond_2

    .line 900
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 902
    :cond_2
    :try_start_3
    new-instance v3, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mHost:Ljava/lang/String;

    iget v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocketAddr:Ljava/net/SocketAddress;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 904
    :try_start_4
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocketAddr:Ljava/net/SocketAddress;

    const/16 v5, 0x2710

    invoke-virtual {v3, v4, v5}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 906
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    if-nez v3, :cond_3

    .line 907
    const-string v3, "RemoteShot"

    .line 908
    const-string v4, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    .line 907
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v3, "RemoteShot"

    .line 910
    const-string v4, "[CommandSendServerThread] CommandSendThread() : socket is null ~~~~~~~~~~~~~~~~~~~"

    .line 909
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v3, "RemoteShot"

    .line 912
    const-string v4, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    .line 911
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 913
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 915
    :cond_3
    :try_start_6
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->isSendVersionInfo:Z

    if-nez v3, :cond_4

    .line 916
    invoke-static {}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getGroupOwner()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 917
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x4e

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 924
    :goto_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->isSendVersionInfo:Z

    .line 927
    :cond_4
    const-string v3, "RemoteShot"

    const-string v4, "[CommandSendServerThread] mCommandSendThread() WAIT !!!"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 929
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 931
    :cond_5
    const-string v3, "RemoteShot"

    .line 932
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] mCommandSendThread() WAKE UP !!! mSendCommandStr :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    iget-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 932
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 931
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2

    .line 973
    :try_start_7
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->isSnapShotDone:Z

    if-nez v3, :cond_12

    .line 974
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 975
    const-string v3, "RemoteShot"

    .line 976
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] mCommandSendThread() SEND Message !!! :: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 975
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 979
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    if-eqz v3, :cond_6

    .line 980
    new-instance v3, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    .line 981
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 982
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    .line 984
    :cond_6
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 986
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v3, :cond_7

    .line 987
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 988
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 991
    :cond_7
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    if-eqz v3, :cond_8

    .line 992
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 993
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectOutputStream:Ljava/io/ObjectOutputStream;

    .line 995
    :cond_8
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    if-eqz v3, :cond_9

    .line 996
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 997
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmObjectInputStream:Ljava/io/ObjectInputStream;

    .line 999
    :cond_9
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    if-eqz v3, :cond_a

    .line 1000
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 1001
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 888
    :cond_a
    :goto_4
    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 919
    :cond_b
    :try_start_9
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->setNotGroupOwnerIpAddress(Ljava/lang/String;)V

    .line 920
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getLocalPort()I

    move-result v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->setNotGroupOwnerPort(I)V

    .line 922
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x67

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_3

    .line 935
    :catch_0
    move-exception v2

    .line 936
    .local v2, ue:Ljava/net/UnknownHostException;
    :try_start_a
    const-string v3, "RemoteShot"

    .line 937
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] CommandSendThread() : run() : UnknownHostException : socket.connect() failed : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 938
    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 937
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 936
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 940
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 941
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 943
    :cond_c
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 945
    :cond_d
    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 946
    .end local v2           #ue:Ljava/net/UnknownHostException;
    :catch_1
    move-exception v1

    .line 947
    .local v1, ie:Ljava/io/IOException;
    :try_start_c
    const-string v3, "RemoteShot"

    .line 948
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] CommandSendThread() : run() : IOException : socket.connect() failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 948
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 947
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 951
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 952
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 954
    :cond_e
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 956
    :cond_f
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_1

    .line 957
    .end local v1           #ie:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 960
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_e
    const-string v3, "RemoteShot"

    .line 961
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] CommandSendThread() : run() : InterruptedException :  : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 962
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 961
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 959
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 964
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 965
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 968
    :cond_10
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 970
    :cond_11
    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 1008
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_12
    :try_start_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$15(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getLastFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mFileUri:Landroid/net/Uri;

    .line 1009
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] mFileUri : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$15(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1013
    :try_start_11
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmOutputStream:Ljava/io/OutputStream;

    .line 1014
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$15(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mFileUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmInputStream:Ljava/io/InputStream;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 1030
    :cond_13
    :goto_5
    :try_start_12
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmInputStream:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmOutputStream:Ljava/io/OutputStream;

    invoke-direct {p0, v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mCopyFileResult:Z

    if-nez v3, :cond_15

    .line 1031
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->isSnapShotDone:Z

    .line 1032
    const-string v3, "RemoteShot"

    .line 1033
    const-string v4, "[CommandSendServerThread] COMMAND_CAMERA_IMAGE_SEND :: isSnapShotDone :: FALSE"

    .line 1032
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v4, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$13(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 1035
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v4, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCommandSnap:Z
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$16(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 1036
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4

    .line 1037
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    .line 1016
    :catch_3
    move-exception v0

    .line 1018
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_14
    const-string v3, "RemoteShot"

    .line 1019
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] CommandSendServerThread() : FileNotFoundException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1019
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1017
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    goto :goto_5

    .line 1064
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v0

    .line 1065
    .local v0, e:Ljava/io/IOException;
    :try_start_15
    const-string v3, "RemoteShot"

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] CommandSendThread() : run() : IOException [0] : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1065
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1068
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_14

    .line 1069
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    .line 1070
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->cancel()V

    .line 1072
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_1

    .line 1021
    .end local v0           #e:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 1023
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_16
    const-string v3, "RemoteShot"

    .line 1024
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] CommandSendServerThread() : IOException : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1024
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1023
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1027
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;->onSendMessgeHandlerCb(I)V

    goto/16 :goto_5

    .line 1040
    .end local v0           #e:Ljava/io/IOException;
    :cond_15
    const-string v3, "RemoteShot"

    .line 1041
    const-string v4, "[CommandSendServerThread] COMMAND_CAMERA_IMAGE_SEND :: isSnapShotDone :: FALSE"

    .line 1040
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->isSnapShotDone:Z

    .line 1043
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v4, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$13(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 1044
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v4, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCommandSnap:Z
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$16(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 1046
    const-string v3, "RemoteShot"

    .line 1047
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CommandSendServerThread] CommandSendServerThread() : run() : send jpg file : completed ~~~~~~~~~~~~~~~~ result : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1048
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mCopyFileResult:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1047
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1046
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmOutputStream:Ljava/io/OutputStream;

    if-eqz v3, :cond_16

    .line 1051
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 1052
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmOutputStream:Ljava/io/OutputStream;

    .line 1054
    :cond_16
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmInputStream:Ljava/io/InputStream;

    if-eqz v3, :cond_17

    .line 1055
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1056
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mmInputStream:Ljava/io/InputStream;

    .line 1058
    :cond_17
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    if-eqz v3, :cond_a

    .line 1059
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 1060
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_4

    goto/16 :goto_4
.end method

.method public sendCommandFlagFunction(ILjava/util/HashMap;)V
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
    .line 1083
    .local p2, mCameraHashData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sparse-switch p1, :sswitch_data_0

    .line 1308
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] sendCommandFlagFunction Error"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_0
    :goto_0
    return-void

    .line 1086
    :sswitch_0
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_FOCUS_DONE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    monitor-enter p0

    .line 1088
    :try_start_0
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "focus_done"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1089
    const-string v0, "focus_done"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1090
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1091
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1093
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1087
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1097
    :sswitch_1
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_SNAPSHOT_DONE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_1
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    .line 1100
    const-string v1, "snapshot_done"

    .line 1099
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v0, "snapshot_done"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v1, 0x1

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCommandSnap:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$16(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 1104
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1107
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1098
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 1111
    :sswitch_2
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_SNAPSHOT_SEND"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    monitor-enter p0

    .line 1113
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1115
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1112
    monitor-exit p0

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    .line 1119
    :sswitch_3
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_CAMERA_INFO_UPDATE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    monitor-enter p0

    .line 1122
    :try_start_3
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraInfoUpdate"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const-string v0, "cameraInfoUpdate"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCommandSnap:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$16(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 1125
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1128
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1120
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    .line 1132
    :sswitch_4
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] REMOCON_SEND_SERVER_CONNECTED"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    monitor-enter p0

    .line 1134
    :try_start_4
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraServerReady"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    const-string v0, "cameraServerReady"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1136
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1139
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1133
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    .line 1143
    :sswitch_5
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_CHANGE_PICTURE_SIZE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    monitor-enter p0

    .line 1145
    :try_start_5
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraPictureSizeChange"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string v0, "cameraPictureSizeChange"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1147
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1144
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    .line 1155
    :sswitch_6
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_CAMERA_ORIENTATION_CHANGE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    monitor-enter p0

    .line 1157
    :try_start_6
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraPreviewDegreeChange"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const-string v0, "cameraPreviewDegreeChange"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1159
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1162
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1156
    monitor-exit p0

    goto/16 :goto_0

    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v0

    .line 1166
    :sswitch_7
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_CAMERA_FLASH_MODE_CHANGE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    monitor-enter p0

    .line 1168
    :try_start_7
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraFlashModeChange"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    const-string v0, "cameraFlashModeChange"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1170
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1171
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1173
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1167
    monitor-exit p0

    goto/16 :goto_0

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v0

    .line 1177
    :sswitch_8
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_CAMERA_ID_CHANGE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    monitor-enter p0

    .line 1179
    :try_start_8
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraIdChange"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    const-string v0, "cameraIdChange"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1181
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1184
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1178
    monitor-exit p0

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v0

    .line 1188
    :sswitch_9
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_TERMINATE_SERVER"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    monitor-enter p0

    .line 1190
    :try_start_9
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "terminate_server"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string v0, "terminate_server"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1192
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1193
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1195
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1189
    monitor-exit p0

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v0

    .line 1199
    :sswitch_a
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_CAMERA_IMAGE_SEND"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    const-string v0, "RemoteShot"

    .line 1202
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CommandSendServerThread] COMMAND_CAMERA_IMAGE_SEND :: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$15(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1203
    const-string v2, ", mRemoteData.getLastFilePath() :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$15(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getLastFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1202
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1201
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$15(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$15(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->getLastFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1208
    const-string v0, "RemoteShot"

    .line 1209
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CommandSendServerThread] COMMAND_CAMERA_IMAGE_SEND :: isCheckedFileSendReady : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1210
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$17(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1209
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1208
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$17(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    monitor-enter p0

    .line 1213
    :try_start_a
    const-string v0, "RemoteShot"

    .line 1214
    const-string v1, "[CommandSendServerThread] COMMAND_CAMERA_IMAGE_SEND :: isSnapShotDone :: TRUE"

    .line 1213
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->isSnapShotDone:Z

    .line 1216
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$13(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 1217
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1212
    monitor-exit p0

    goto/16 :goto_0

    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v0

    .line 1222
    :sswitch_b
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_STOP_PREVIEW"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    monitor-enter p0

    .line 1224
    :try_start_b
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    .line 1225
    const-string v1, "stopCameraPreview"

    .line 1224
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const-string v0, "stopCameraPreview"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1227
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1228
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1229
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->GetCommandSnap()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1230
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1223
    :cond_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v0

    .line 1235
    :sswitch_c
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_RESTART_PREVIEW"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    monitor-enter p0

    .line 1237
    :try_start_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->bCheckedFileSendReady:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->access$13(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;Z)V

    .line 1238
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    .line 1239
    const-string v1, "restartCameraPreview"

    .line 1238
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const-string v0, "restartCameraPreview"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1241
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1242
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1244
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1236
    monitor-exit p0

    goto/16 :goto_0

    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v0

    .line 1248
    :sswitch_d
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_ZOOM_VALUE_CHANGE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    monitor-enter p0

    .line 1250
    :try_start_d
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "zoomValue"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    const-string v0, "zoomValue"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1252
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1255
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1249
    monitor-exit p0

    goto/16 :goto_0

    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v0

    .line 1259
    :sswitch_e
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_CAMERA_PRE_ID_CHANGE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    monitor-enter p0

    .line 1261
    :try_start_e
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraPreIdChange"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    const-string v0, "cameraPreIdChange"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1263
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1264
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1266
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1260
    monitor-exit p0

    goto/16 :goto_0

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v0

    .line 1271
    :sswitch_f
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] COMMAND_CAMERA_KEY_VALUE_UPDATE"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    monitor-enter p0

    .line 1273
    :try_start_f
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraKeyValueUpdate"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const-string v0, "cameraKeyValueUpdate"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1275
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1276
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1278
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1272
    monitor-exit p0

    goto/16 :goto_0

    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v0

    .line 1282
    :sswitch_10
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] CAMERA_SEND_SERVER_READY"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    monitor-enter p0

    .line 1284
    :try_start_10
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraSendServerReady"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_NOT_GROUP_OWNER_IP:Ljava/lang/String;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_NOT_GROUP_OWNER_PORT:Ljava/lang/String;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getLocalPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string v0, "cameraSendServerReady"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1289
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1290
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1292
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1283
    monitor-exit p0

    goto/16 :goto_0

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v0

    .line 1297
    :sswitch_11
    const-string v0, "RemoteShot"

    const-string v1, "[CommandSendServerThread] REMOCON_PREFERENCE_UPDATED"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    monitor-enter p0

    .line 1299
    :try_start_11
    sget-object v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->KEY_REQUEST_COMMAND:Ljava/lang/String;

    const-string v1, "cameraPreferenceUpdated"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1300
    const-string v0, "cameraPreferenceUpdated"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mSendCommandStr:Ljava/lang/String;

    .line 1301
    new-instance v0, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-direct {v0}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    .line 1302
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$CommandSendServerThread;->mRemoconData:Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegaremoteshot/etc/VegaRemoteData;->setCameraHashMapData(Ljava/util/HashMap;)V

    .line 1304
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1298
    monitor-exit p0

    goto/16 :goto_0

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v0

    .line 1083
    nop

    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_0
        0x4b -> :sswitch_1
        0x4c -> :sswitch_2
        0x4d -> :sswitch_3
        0x4e -> :sswitch_4
        0x50 -> :sswitch_11
        0x52 -> :sswitch_5
        0x53 -> :sswitch_6
        0x55 -> :sswitch_7
        0x57 -> :sswitch_8
        0x5a -> :sswitch_a
        0x5e -> :sswitch_c
        0x5f -> :sswitch_b
        0x62 -> :sswitch_d
        0x64 -> :sswitch_e
        0x66 -> :sswitch_f
        0x67 -> :sswitch_10
        0x3e6 -> :sswitch_9
    .end sparse-switch
.end method
