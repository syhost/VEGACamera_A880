.class Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$3;
.super Ljava/lang/Object;
.source "RemoteTransferServiceWFD.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnRemoveGroupOnly()V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$3;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 664
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] [CHECK_WFD] removeGroupOnly() Fail : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 659
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] [CHECK_WFD] removeGroupOnly() : Success!"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    return-void
.end method
