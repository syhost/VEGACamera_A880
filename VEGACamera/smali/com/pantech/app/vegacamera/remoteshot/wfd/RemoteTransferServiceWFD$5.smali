.class Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$5;
.super Ljava/lang/Object;
.source "RemoteTransferServiceWFD.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnConnectDevice()V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$5;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reason"

    .prologue
    .line 822
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] [CHECK_WFD]\tconnectDevice() : Connect Fail"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 816
    const-string v0, "RemoteShot"

    .line 817
    const-string v1, "[RemoteTransferServiceWFD] [CHECK_WFD]\tconnectDevice() : Connect Success"

    .line 816
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    return-void
.end method
