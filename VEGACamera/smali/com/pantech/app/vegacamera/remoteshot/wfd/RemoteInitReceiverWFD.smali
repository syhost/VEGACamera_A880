.class public Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;
.super Landroid/content/BroadcastReceiver;
.source "RemoteInitReceiverWFD.java"


# instance fields
.field private mService:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)V
    .locals 2
    .parameter "handler"
    .parameter "manager"
    .parameter "channel"
    .parameter "service"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitReceiverWFD] RemoteInitReceiverWFD() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object p4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v6, 0xb

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[RemoteInitReceiverWFD] onReceive() : intent = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v3, "turnOnSignal"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 34
    .local v2, turnOnSingnal:Z
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[RemoteInitReceiverWFD] onReceive() : turnOnSingnal = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v3, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 37
    const-string v3, "RemoteShot"

    .line 38
    const-string v4, "[RemoteInitReceiverWFD] [CHECK_WFD] onReceive() : WIFI_P2P_STATE_CHANGED_ACTION ~~~~~~~~~"

    .line 37
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v3, "wifi_p2p_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 41
    .local v1, state:I
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[RemoteInitReceiverWFD] onReceive() : state = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 45
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteInitReceiverWFD] onReceive() : WIFI_P2P_STATE_ENABLED "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    const-string v4, "Pref_State"

    invoke-static {v3, v4, v6}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 56
    :cond_0
    :goto_0
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "P2P state : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v1           #state:I
    :cond_1
    :goto_1
    return-void

    .line 47
    .restart local v1       #state:I
    :cond_2
    const-string v3, "Pref_State"

    invoke-static {p1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 48
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteInitReceiverWFD] onReceive() : STATE_NONE "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    .line 51
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteInitReceiverWFD] onReceive() : WIFI_P2P_STATE_DISABLED"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->OnTurnOn(Z)V

    goto :goto_0

    .line 58
    .end local v1           #state:I
    :cond_4
    const-string v3, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 59
    const-string v3, "RemoteShot"

    .line 60
    const-string v4, "[RemoteInitReceiverWFD] [CHECK_WFD] onReceive() : WIFI_P2P_THIS_DEVICE_CHANGED_ACTION ~~~~~~~~~"

    .line 59
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v3, "RemoteShot"

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getState : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "Pref_State"

    invoke-static {p1, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    const-string v4, "Pref_State"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 64
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteInitReceiverWFD] onReceive() : STATE_WFD_ON "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->discoveryDevice()V

    .line 68
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    const-string v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->CheckThisDeviceStatus(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 70
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    const-string v3, "wifiP2pDevice"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->GetAddress(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1

    .line 74
    :cond_5
    const-string v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 76
    const-string v3, "RemoteShot"

    const-string v4, "[RemoteInitReceiverWFD] onReceive() : WIFI_P2P_PEERS_CHANGED_ACTION ~~~~~~~~~ None"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 78
    :cond_6
    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    const-string v3, "RemoteShot"

    .line 80
    const-string v4, "[RemoteInitReceiverWFD] onReceive() : WIFI_P2P_CONNECTION_CHANGED_ACTION ~~~~~~~~~ None"

    .line 79
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method
