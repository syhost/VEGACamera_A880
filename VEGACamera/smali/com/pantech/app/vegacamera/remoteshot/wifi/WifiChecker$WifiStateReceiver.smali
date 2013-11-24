.class Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, action:Ljava/lang/String;
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiChecker] onReceive() : action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-eqz v0, :cond_3

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    const-string v1, "RemoteShot"

    const-string v2, "[WifiChecker] onReceive() : WIFI_STATE_CHANGED_ACTION "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    const-string v2, "wifi_state"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiState:I
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;I)V

    .line 68
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiChecker] onReceive() : mWifiState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiState:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiState:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiState:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 71
    :cond_0
    const-string v1, "RemoteShot"

    const-string v2, "[WifiChecker] WIFI_STATE_ENABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v2, "WiFi_enable"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v2, "WIFI_STATE_ENABLED"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    .line 75
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mSDKVersion:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    .line 77
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v2, "WiFi_dialog"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 80
    :cond_2
    const-string v1, "RemoteShot"

    const-string v2, "[WifiChecker] WIFI_STATE_DISABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v2, "WiFi_disable"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v2, "WIFI_STATE_DISABLED"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_3
    if-eqz v0, :cond_1

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const-string v1, "RemoteShot"

    const-string v2, "[WifiChecker] onReceive() : WIFI_AP_STATE_CHANGED_ACTION "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    const-string v2, "wifi_state"

    const/16 v3, 0xb

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiApState:I
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;I)V

    .line 90
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiState:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 91
    const-string v1, "RemoteShot"

    const-string v2, "[WifiChecker] WIFI_AP_STATE_ENABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v2, "WiFi_enable"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v2, "WIFI_AP_STATE_ENABLED"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_4
    const-string v1, "RemoteShot"

    const-string v2, "[WifiChecker] WIFI_AP_STATE_DISABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v2, "WiFi_disable"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v2, "WIFI_AP_STATE_DISABLED"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
