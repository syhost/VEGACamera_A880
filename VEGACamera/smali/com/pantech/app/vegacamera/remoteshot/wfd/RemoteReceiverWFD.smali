.class public Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;
.super Landroid/content/BroadcastReceiver;
.source "RemoteReceiverWFD.java"


# instance fields
.field private bChecked:Z

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V
    .locals 2
    .parameter "handler"
    .parameter "manager"
    .parameter "channel"
    .parameter "service"

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 26
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteReceiverWFD] RemoteReceiverWFD()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 28
    iput-object p3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 29
    iput-object p4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->bChecked:Z

    .line 31
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 35
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, action:Ljava/lang/String;
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[RemoteReceiverWFD] onReceive() : intent = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v4, "turnOnSignal"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 40
    .local v3, turnOnSingnal:Z
    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 41
    const-string v4, "RemoteShot"

    .line 42
    const-string v5, "[RemoteReceiverWFD] [CHECK_WFD] onReceive() : WIFI_P2P_STATE_CHANGED_ACTION ~~~~~~~~~"

    .line 41
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v4, "wifi_p2p_state"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 44
    .local v2, state:I
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[RemoteReceiverWFD] onReceive() : state = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 47
    const-string v4, "RemoteShot"

    const-string v5, "[RemoteReceiverWFD] onReceive() : WIFI_P2P_STATE_ENABLED "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    const-string v5, "Pref_State"

    const/16 v6, 0xb

    invoke-static {v4, v5, v6}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 53
    :cond_0
    :goto_0
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "P2P state : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .end local v2           #state:I
    :cond_1
    :goto_1
    return-void

    .line 49
    .restart local v2       #state:I
    :cond_2
    const-string v4, "Pref_State"

    invoke-static {p1, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 50
    const-string v4, "RemoteShot"

    const-string v5, "[RemoteReceiverWFD] onReceive() : STATE_NONE "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnTurnOn(Z)V

    goto :goto_0

    .line 55
    .end local v2           #state:I
    :cond_3
    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 56
    const-string v4, "RemoteShot"

    .line 57
    const-string v5, "[RemoteReceiverWFD] [CHECK_WFD] onReceive() : WIFI_P2P_PEERS_CHANGED_ACTION ~~~~~~~~~"

    .line 56
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_1

    .line 62
    :cond_4
    const-string v4, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 63
    const-string v4, "RemoteShot"

    .line 64
    const-string v5, "[RemoteReceiverWFD] [CHECK_WFD] onReceive() : WIFI_P2P_THIS_DEVICE_CHANGED_ACTION ~~~~~~~~~"

    .line 63
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v4, "RemoteShot"

    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getState : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "Pref_State"

    invoke-static {p1, v6}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "Pref_State"

    invoke-static {p1, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_1

    .line 68
    const-string v4, "RemoteShot"

    const-string v5, "---------------------------------------------------------------------------- "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v4, "RemoteShot"

    const-string v5, "[RemoteReceiverWFD] onReceive() : STATE_WFD_ON "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v4, "RemoteShot"

    const-string v5, "---------------------------------------------------------------------------- "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnDiscoveryDevice()V

    goto :goto_1

    .line 76
    :cond_5
    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 77
    const-string v4, "RemoteShot"

    .line 78
    const-string v5, "[RemoteReceiverWFD] [CHECK_WFD] onReceive() : WIFI_P2P_CONNECTION_CHANGED_ACTION ~~~~~~~~~"

    .line 77
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 82
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    const-string v4, "RemoteShot"

    const-string v5, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[RemoteReceiverWFD] [CHECK_WFD] onReceive() : networkInfo.isConnected = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v4, "RemoteShot"

    const-string v5, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[RemoteReceiverWFD] [CHECK_WFD] onReceive() : mConnected = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-boolean v6, v6, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 90
    const-string v4, "RemoteShot"

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[RemoteReceiverWFD] onReceive() : networkInfo.isConnected() : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 90
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->bChecked:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iget-boolean v4, v4, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bChangedPeers:Z

    if-nez v4, :cond_6

    .line 94
    const-string v4, "RemoteShot"

    const-string v5, "[RemoteReceiverWFD] [CHECK_WFD] onReceive() : removeGroup "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnRemoveGroup()V

    .line 100
    :goto_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iput-boolean v8, v4, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bConnected:Z

    .line 107
    :goto_3
    iput-boolean v8, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->bChecked:Z

    goto/16 :goto_1

    .line 97
    :cond_6
    const-string v4, "RemoteShot"

    const-string v5, "[RemoteReceiverWFD] [CHECK_WFD] onReceive() : requestConnectionInfo "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V

    goto :goto_2

    .line 103
    :cond_7
    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;->mService:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;

    iput-boolean v7, v4, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bConnected:Z

    .line 104
    const-string v4, "RemoteShot"

    const-string v5, "non connected"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
