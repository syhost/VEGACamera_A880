.class Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$2;
.super Ljava/lang/Object;
.source "RemoteInitService.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->discoveryDevice()V
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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$2;->this$0:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reasonCode"

    .prologue
    .line 192
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] [CHECK_WFD] discoverPeers() : Failure : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 187
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] [CHECK_WFD] discoverPeers() : Success"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method
