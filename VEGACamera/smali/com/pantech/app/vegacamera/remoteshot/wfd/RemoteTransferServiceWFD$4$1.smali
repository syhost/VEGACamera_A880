.class Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4$1;
.super Ljava/lang/Object;
.source "RemoteTransferServiceWFD.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->onFailure(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4$1;->this$1:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;

    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 723
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] [CHECK_WFD] cancelConnect onFailure"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4$1;->this$1:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnDiscoveryDevice()V

    .line 725
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 717
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] [CHECK_WFD] cancelConnect onSuccess"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4$1;->this$1:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnDiscoveryDevice()V

    .line 719
    return-void
.end method
