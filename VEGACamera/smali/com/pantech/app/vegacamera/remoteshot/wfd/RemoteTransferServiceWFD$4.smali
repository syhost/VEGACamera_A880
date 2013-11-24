.class Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;
.super Ljava/lang/Object;
.source "RemoteTransferServiceWFD.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnDiscoveryDevice()V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    .locals 1
    .parameter

    .prologue
    .line 702
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    return-object v0
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reasonCode"

    .prologue
    .line 711
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] [CHECK_WFD] discoverPeers() : Failure : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 711
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$10(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$11(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4$1;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 727
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 705
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] [CHECK_WFD] discoverPeers() : Success"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    const/4 v1, 0x1

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bSuccessDiscovery:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Z)V

    .line 707
    return-void
.end method
