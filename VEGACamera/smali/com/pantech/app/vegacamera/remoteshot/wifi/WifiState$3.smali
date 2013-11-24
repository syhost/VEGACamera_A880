.class Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$3;
.super Ljava/lang/Object;
.source "WifiState.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->WifiCheckState_New()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$3;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3
    .parameter "reasonCode"

    .prologue
    .line 455
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WifiState] [WiFi] [CHECK_WFD] disableConcurrentScan() : Failure : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 455
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 450
    const-string v0, "RemoteShot"

    const-string v1, "[WifiState] [WiFi] [CHECK_WFD] disableConcurrentScan() : Success"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method
