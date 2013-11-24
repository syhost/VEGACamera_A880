.class public Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;
.super Landroid/app/Service;
.source "RemoteInitService.java"


# instance fields
.field private bEntryPoint:Z

.field private bIsRegistedReceiver:Z

.field private iSDKVersion:I

.field private iStartId:I

.field public iThisDeviceStatus:I

.field private intentFilter:Landroid/content/IntentFilter;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mHandler:Landroid/os/Handler;

.field private mManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

.field private sLocalDeviceName:Ljava/lang/String;

.field private sLocalWDAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 28
    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 96
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$1;-><init>(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mHandler:Landroid/os/Handler;

    .line 20
    return-void
.end method

.method private InitialWFDSetup()V
    .locals 4

    .prologue
    .line 119
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] InitialWFDSetup()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 122
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 124
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteInitReceiverWFD;-><init>(Landroid/os/Handler;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->intentFilter:Landroid/content/IntentFilter;

    .line 128
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->intentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->intentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->bIsRegistedReceiver:Z

    .line 137
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->sLocalWDAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->sLocalDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->broadcastWithBTAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)Z
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->bIsRegistedReceiver:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;Landroid/content/BroadcastReceiver;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->bIsRegistedReceiver:Z

    return-void
.end method

.method private broadcastWithBTAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "property"
    .parameter "address"
    .parameter "deviceName"

    .prologue
    .line 87
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteInitService] broadcastWithBTAddress()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "Service_Broadcast"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "property"

    const-string v2, "Local_Mac_Address"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v1, "devicename"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->sendBroadcast(Landroid/content/Intent;)V

    .line 93
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteInitService] sended local broadcast bt address"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-void
.end method


# virtual methods
.method public CheckThisDeviceStatus(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 198
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] [CHECK_WFD] checkThisDeviceStatus() : This device = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->iThisDeviceStatus:I

    .line 201
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] [CHECK_WFD] checkThisDeviceStatus() : mThisDeviceStatus = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 202
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->iThisDeviceStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public GetAddress(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .parameter "device"

    .prologue
    const/16 v4, 0xc

    .line 158
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteInitService] getAddress() : This device = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 162
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->sLocalWDAddress:Ljava/lang/String;

    .line 163
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->sLocalDeviceName:Ljava/lang/String;

    .line 164
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteInitService] [CHECK_WFD] getAddress() : deviceAddress : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->sLocalWDAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 167
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 168
    return-void
.end method

.method public OnTurnOn(Z)V
    .locals 4
    .parameter "turnOnSignal"

    .prologue
    const/4 v3, 0x1

    .line 140
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] turnOn() : turnOnSignal = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eqz p1, :cond_0

    .line 142
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] TurnOn!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pref_wifidirect_on"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 145
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->iSDKVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] [WiFi] turnOn() : WIFI On "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 155
    :cond_0
    return-void
.end method

.method public discoveryDevice()V
    .locals 4

    .prologue
    .line 172
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteInitService] discoveryDevice()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteInitService] [CHECK_WFD] discoveryDevice() : discoverPeers() ~~~~~~~~~~~~~~!!!"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$2;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService$2;-><init>(Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 195
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 38
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] onBind() : intent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] ~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] ~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] Step_1 ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    if-eqz v0, :cond_0

    .line 78
    iput-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    .line 81
    :cond_0
    iput-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 83
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 84
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 44
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] ~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] onStartCommand() : intent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 46
    const-string v2, " startId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteInitService] ~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz p1, :cond_1

    .line 50
    const-string v0, "method"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->bEntryPoint:Z

    .line 51
    const-string v0, "SDKVersion"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->iSDKVersion:I

    .line 53
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    iget v1, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->iSDKVersion:I

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->WifiCheckState_New()V

    .line 57
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] Init onStartCommand mEntryPoint : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->bEntryPoint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->bEntryPoint:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pref_State"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 61
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->InitialWFDSetup()V

    .line 63
    :cond_0
    iput p3, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->iStartId:I

    .line 64
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] start init service - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->iStartId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteInitService] mSDKVersion : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;->iSDKVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_1
    const/4 v0, 0x2

    return v0
.end method
