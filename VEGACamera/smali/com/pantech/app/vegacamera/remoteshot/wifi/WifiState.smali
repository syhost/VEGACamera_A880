.class public Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;
.super Ljava/lang/Object;
.source "WifiState.java"


# static fields
.field private static final WIFI_AP_DISCONNECT_TOAST:I = 0xa


# instance fields
.field private iWifiToastCnt:I

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRegistered:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private networkInfo:Landroid/net/NetworkInfo;

.field private networkState:Landroid/net/NetworkInfo$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "SDKVersion"

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->iWifiToastCnt:I

    .line 40
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$1;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    .line 63
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 66
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mRegistered:Z

    .line 67
    return-void
.end method

.method private BroadcastRemoconToast()V
    .locals 3

    .prologue
    .line 536
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] broadcastRemoconToast()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Remote_Toast_Broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "remote_toast"

    const-string v2, "toast_wifi_ap_disable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 539
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 540
    return-void
.end method

.method private _DisableNetwork(Z)V
    .locals 7
    .parameter "wifi_on"

    .prologue
    const/16 v6, 0xa

    .line 469
    const-string v2, "RemoteShot"

    const-string v3, "[WifiState] [WiFi] disableNetwork() :  ~~~~~~~~~~~~~~~~~ "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 473
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 474
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 487
    :cond_1
    return-void

    .line 474
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 475
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[WifiState] [WiFi] disableNetwork() :  networkId =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 477
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v4, "Pref_wifi_network_state"

    .line 478
    const/16 v5, 0x1b

    .line 477
    invoke-static {v3, v4, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 480
    if-eqz p1, :cond_0

    .line 481
    const/4 v3, 0x0

    iput v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->iWifiToastCnt:I

    .line 482
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 483
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private _EnableNetwork()V
    .locals 6

    .prologue
    .line 491
    const-string v2, "RemoteShot"

    const-string v3, "[WifiState] [WiFi] enableNetwork() :  ~~~~~~~~~~~~~~~~~ "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 495
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_0

    .line 496
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 501
    :cond_0
    return-void

    .line 496
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 497
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[WifiState] [WiFi] enableNetwork() :  networkId =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)V
    .locals 0
    .parameter

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->BroadcastRemoconToast()V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)I
    .locals 1
    .parameter

    .prologue
    .line 38
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->iWifiToastCnt:I

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->iWifiToastCnt:I

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public OnRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mHandler:Landroid/os/Handler;

    .line 530
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 531
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    .line 532
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkState:Landroid/net/NetworkInfo$State;

    .line 533
    return-void
.end method

.method public OnWifiStateEnd()V
    .locals 6

    .prologue
    const/16 v5, 0x1b

    const/4 v4, 0x1

    .line 155
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiStateEnd() : getWifiState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiStateEnd() : isWifiEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v2, "Pref_wifi_state"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_EnableNetwork()V

    .line 163
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiStateEnd() : WIFI Off "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 221
    :cond_0
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v2, "Pref_wifi_state"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_5

    .line 173
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiStateEnd() : WIFI On "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 178
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 184
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_EnableNetwork()V

    .line 186
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v2, "Pref_wifi_network_state"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 188
    const-wide/16 v1, 0x5dc

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 195
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v2, "Pref_wifi_network_state"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 197
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 199
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    .line 200
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_4

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :goto_4
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkState:Landroid/net/NetworkInfo$State;

    .line 202
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiStateEnd() : networkState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiStateEnd() : Network reconnect()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto/16 :goto_1

    .line 179
    :catch_1
    move-exception v0

    .line 180
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 190
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 191
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 200
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    goto :goto_4

    .line 219
    :cond_5
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] WifiStateEnd() : ignore "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public OnWifiStateEnd_New()V
    .locals 4

    .prologue
    .line 224
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiStateEnd_New() : getWifiState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const-string v1, "RemoteShot"

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiStateEnd_New() : isWifiEnabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$2;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$2;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->enableConcurrentScan(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v2, "Pref_wifi_state"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_1

    .line 250
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_EnableNetwork()V

    .line 252
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiStateEnd_New() : WIFI Off "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 275
    :cond_0
    :goto_1
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "RemoteShot"

    .line 245
    const-string v2, "[WifiState] [WiFi] [CHECK_WFD] WifiStateEnd_New() : NoSuchMethodError :: enableConcurrentScan"

    .line 244
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v2, "Pref_wifi_state"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x19

    if-ne v1, v2, :cond_3

    .line 257
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 258
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiStateEnd_New() : WIFI On "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 262
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 269
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_EnableNetwork()V

    .line 271
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_1

    .line 263
    :catch_1
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 273
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] WifiStateEnd_New() : ignore "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public OnWifiStateStart()V
    .locals 6

    .prologue
    const/16 v5, 0x1a

    const/4 v4, 0x1

    const/16 v3, 0x1c

    .line 85
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WifiState] [WiFi] WifiStateStart() : getWifiState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v0, "RemoteShot"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WifiState] [WiFi] WifiStateStart() : getWifiApState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 91
    const-string v0, "RemoteShot"

    const-string v1, "[WifiState] [WiFi] WifiStateStart() : WIFI_STATE_DISABLED "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_state"

    invoke-static {v0, v1, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_network_state"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 125
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 97
    const-string v0, "RemoteShot"

    const-string v1, "[WifiState] [WiFi] WifiStateStart() : WIFI_STATE_ENABLED "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_state"

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 100
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    .line 103
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_1

    sget-object v0, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :goto_1
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkState:Landroid/net/NetworkInfo$State;

    .line 106
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WifiState] [WiFi] WifiStateStart() : networkState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkState:Landroid/net/NetworkInfo$State;

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_2

    .line 110
    const-string v0, "RemoteShot"

    const-string v1, "[WifiState] [WiFi] WifiStateStart() : Network CONNECTED"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_network_state"

    .line 113
    const/16 v2, 0x1b

    .line 112
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    goto :goto_1

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_network_state"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 120
    :cond_3
    const-string v0, "RemoteShot"

    const-string v1, "[WifiState] WifiStateStart() : ignore "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_state"

    invoke-static {v0, v1, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_network_state"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public OnWifiStateStart_New()V
    .locals 5

    .prologue
    const/16 v4, 0x1a

    const/16 v3, 0x1c

    .line 128
    const-string v0, "RemoteShot"

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WifiState] [WiFi] WifiStateStart_New() : getWifiState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "RemoteShot"

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WifiState] [WiFi] WifiStateStart_New() : getWifiApState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 135
    const-string v0, "RemoteShot"

    const-string v1, "[WifiState] [WiFi] WifiStateStart_New() : WIFI_STATE_DISABLED "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_state"

    invoke-static {v0, v1, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_network_state"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 152
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 141
    const-string v0, "RemoteShot"

    const-string v1, "[WifiState] [WiFi] WifiStateStart_New() : WIFI_STATE_ENABLED "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_state"

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 143
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_network_state"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0

    .line 147
    :cond_1
    const-string v0, "RemoteShot"

    const-string v1, "[WifiState] WifiStateStart_New() : ignore "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_state"

    invoke-static {v0, v1, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 149
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v1, "Pref_wifi_network_state"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public SetEnableWifi(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 504
    move v0, p1

    .line 506
    .local v0, desiredState:Z
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [WifiState] setEnableWifi() : desiredState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const/4 v1, 0x0

    .line 509
    .local v1, success:Z
    const/4 v2, 0x0

    .line 511
    .local v2, success2:Z
    if-eqz v0, :cond_0

    .line 512
    const-string v3, "RemoteShot"

    const-string v4, " [WifiState] setEnableWifi() : WiFi enable ~~~~~~~~~~~~~~~~~ "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    .line 515
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [WifiState] setEnableWifi() : success =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v8, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    .line 518
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [WifiState] setDisableWifi() : success2 =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :goto_0
    return-void

    .line 521
    :cond_0
    const-string v3, "RemoteShot"

    const-string v4, " [WifiState] setDisableWifi() : WiFi disable ~~~~~~~~~~~~~~~~~ "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    .line 523
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v8, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public WifiCheckState()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xd

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 278
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiCheckState() : getWifiState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "RemoteShot"

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiCheckState() : getWifiApState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 284
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState() : WIFI_STATE_DISABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 287
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState() : WIFI_AP_STATE_ENABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WiFi AP turn off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v7, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 292
    :cond_0
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] [CHECK_WFD] WiFi turn on "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 296
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_DisableNetwork(Z)V

    .line 366
    :goto_1
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 304
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState() : WIFI_STATE_ENABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 315
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    .line 316
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    if-nez v1, :cond_3

    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    :goto_2
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkState:Landroid/net/NetworkInfo$State;

    .line 318
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiCheckState() : networkState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkState:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkState:Landroid/net/NetworkInfo$State;

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_2

    .line 321
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState() : Network CONNECTED"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState() : Network disconnect()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 333
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    :cond_2
    :goto_3
    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_DisableNetwork(Z)V

    goto :goto_1

    .line 316
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    goto :goto_2

    .line 334
    :catch_1
    move-exception v0

    .line 335
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 345
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState() : WIFI_STATE_UNKNOWN "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v6, :cond_5

    .line 348
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState() : WIFI_AP_STATE_ENABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WiFi AP turn off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v7, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 353
    :cond_5
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] [CHECK_WFD] WiFi turn on "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 357
    const-wide/16 v1, 0x3e8

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 362
    :goto_4
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_DisableNetwork(Z)V

    goto/16 :goto_1

    .line 358
    :catch_2
    move-exception v0

    .line 359
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4
.end method

.method public WifiCheckState_New()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xd

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 369
    const-string v1, "RemoteShot"

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiCheckState_New() : getWifiState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string v1, "RemoteShot"

    .line 372
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[WifiState] [WiFi] WifiCheckState_New() : getWifiApState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 371
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 396
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState_New() : WIFI_STATE_DISABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 399
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState_New() : WIFI_AP_STATE_ENABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WiFi AP turn off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v7, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 404
    :cond_0
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] [CHECK_WFD] WiFi turn on "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 408
    const-wide/16 v1, 0x5dc

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_DisableNetwork(Z)V

    .line 446
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$3;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$3;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->disableConcurrentScan(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_2

    .line 464
    :goto_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 466
    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 415
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 416
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState_New() : WIFI_STATE_ENABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_DisableNetwork(Z)V

    goto :goto_1

    .line 423
    :cond_2
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState_New() : WIFI_STATE_UNKNOWN "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v6, :cond_3

    .line 426
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WifiCheckState_New() : WIFI_AP_STATE_ENABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] WiFi AP turn off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v7, v4}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 431
    :cond_3
    const-string v1, "RemoteShot"

    const-string v2, "[WifiState] [WiFi] [CHECK_WFD] WiFi turn on "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 435
    const-wide/16 v1, 0x3e8

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 440
    :goto_3
    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->_DisableNetwork(Z)V

    goto :goto_1

    .line 436
    :catch_1
    move-exception v0

    .line 437
    .restart local v0       #e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 459
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "RemoteShot"

    .line 461
    const-string v2, "[WifiState] [WiFi] [CHECK_WFD] WifiStateStart_New() : NoSuchMethodError :: disableConcurrentScan"

    .line 460
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
