.class public Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;
.super Landroid/app/Service;
.source "RemoteTransferServiceWFD.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteBinderWD;,
        Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteCameraCb;,
        Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;
    }
.end annotation


# static fields
.field private static final WFD_AVAILABLE:I = 0x3

.field private static final WFD_CONNECTED:I


# instance fields
.field private aPreviewData:[B

.field private bCameraStateUpdated:Z

.field public bChangedPeers:Z

.field public bConnected:Z

.field public bConnectedClient:Z

.field private bHasAddress:Z

.field private bInterrupt:Z

.field public bIsGroupOwner:Z

.field private bIsRegistedReceiver:Z

.field private bRemoconPauseState:Z

.field private bServiceHandlerStop:Z

.field private bSuccessDiscovery:Z

.field private bblockPreferenceUpdate:Z

.field private final binder:Landroid/os/IBinder;

.field private iSDKVersion:I

.field private iServiceStartId:I

.field private mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

.field private mCameraData:Lcom/pantech/app/vegacamera/data/AppData;

.field private mCameraHashData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field public mReceivedContentUri:Landroid/net/Uri;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

.field private mServiceHandler:Landroid/os/Handler;

.field private mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

.field private mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

.field public peers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private retryChannel:Z

.field public sMimeType:Ljava/lang/String;

.field private sRemoteMacAddress:Ljava/lang/String;

.field public sWFDAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    .line 52
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bInterrupt:Z

    .line 56
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 57
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 64
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteBinderWD;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteBinderWD;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->binder:Landroid/os/IBinder;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bCameraStateUpdated:Z

    .line 70
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bblockPreferenceUpdate:Z

    .line 71
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 72
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 74
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bRemoconPauseState:Z

    .line 278
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$1;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mServiceHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private OnRemoveGroupOnly()V
    .locals 3

    .prologue
    .line 652
    const-string v0, "RemoteShot"

    const-string v1, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] [CHECK_WFD] removeGroupOnly() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v0, "RemoteShot"

    const-string v1, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$3;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$3;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 668
    :cond_0
    return-void
.end method

.method private _InitialSetup()V
    .locals 4

    .prologue
    .line 588
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] \tInitialSetup() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 591
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifip2p"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 592
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 595
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mServiceHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteReceiverWFD;-><init>(Landroid/os/Handler;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mIntentFilter:Landroid/content/IntentFilter;

    .line 597
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 603
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 604
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bIsRegistedReceiver:Z

    .line 611
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bServiceHandlerStop:Z

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Z
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bblockPreferenceUpdate:Z

    return v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bblockPreferenceUpdate:Z

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 278
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bSuccessDiscovery:Z

    return-void
.end method


# virtual methods
.method public GetAddress(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    const/16 v3, 0xc

    .line 674
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] \tgetAddress() : device = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sWFDAddress:Ljava/lang/String;

    .line 677
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pref_State"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 679
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getAddress Receiver: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sWFDAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mServiceHandler:Landroid/os/Handler;

    const/16 v1, 0x15

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 681
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 682
    return-void
.end method

.method public GetCameraStateUpdated()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bCameraStateUpdated:Z

    return v0
.end method

.method public GetRemoconPauseState()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bRemoconPauseState:Z

    return v0
.end method

.method public GetServiceHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public GetWFDState()I
    .locals 3

    .prologue
    .line 923
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] \tgetState() : getState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->getWFDState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->getWFDState()I

    move-result v0

    return v0
.end method

.method public OnCommandStopPreview()V
    .locals 3

    .prologue
    .line 568
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] commandStopPreview()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;

    .line 571
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/16 v1, 0x5f

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    .line 573
    :cond_0
    return-void
.end method

.method public OnConnectDevice()V
    .locals 4

    .prologue
    .line 802
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] [CHECK_WFD]\tconnectDevice() ~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 805
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sRemoteMacAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 806
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x0

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 809
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] [CHECK_WFD]\tconnectDevice() : mRemoteMacAddress = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 810
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sRemoteMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 809
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_0

    .line 812
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$5;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$5;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 827
    :cond_0
    return-void
.end method

.method public OnDiscoveryDevice()V
    .locals 4

    .prologue
    .line 686
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] discoveryDevice()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mServiceHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 689
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] discoveryDevice() : mConnected = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :goto_0
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    const-string v1, "RemoteShot"

    .line 699
    const-string v2, "[RemoteTransferServiceWFD] [CHECK_WFD] discoveryDevice() : discoverPeers() ~~~~~~~~~~~~~~!!!"

    .line 698
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$4;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 729
    return-void

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public OnExitRemoteService()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 928
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] [CHECK_WFD] exitRemoteService()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    .line 933
    const/4 v3, -0x5

    .line 932
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 936
    invoke-static {v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->setGroupOwner(Z)V

    .line 937
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v1, :cond_0

    .line 938
    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->setCameraStateUpdated(Z)V

    .line 939
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->releaseCallBack()V

    .line 940
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->stop()V

    .line 941
    iput-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    .line 943
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->OnRemoveGroupOnly()V

    .line 945
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bIsRegistedReceiver:Z

    if-eqz v1, :cond_1

    .line 946
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 947
    iput-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 948
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bIsRegistedReceiver:Z

    .line 952
    :cond_1
    const-wide/16 v1, 0x12c

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 957
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_wifidirect_on"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 958
    iget v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->iSDKVersion:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 961
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] [WiFi] exitRemoteService() : WIFI Off "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 964
    iput-object v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 966
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_wifidirect_on"

    invoke-static {v1, v2, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 974
    :goto_1
    iget v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->iServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->stopSelf(I)V

    .line 975
    return-void

    .line 953
    :catch_0
    move-exception v0

    .line 954
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 970
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_3
    const-string v1, "RemoteShot"

    .line 971
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] exitRemoteService() : state : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Pref_wifidirect_on"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 971
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 969
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public OnRemoveGroup()V
    .locals 3

    .prologue
    .line 632
    const-string v0, "RemoteShot"

    const-string v1, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] [CHECK_WFD] removeGroup() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    const-string v0, "RemoteShot"

    const-string v1, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$2;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 649
    return-void
.end method

.method public OnTurnOn(Z)V
    .locals 4
    .parameter "turnOnSignal"

    .prologue
    const/4 v3, 0x1

    .line 614
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] \tturnOn() : turnOnSignal = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    if-eqz p1, :cond_0

    .line 616
    const-string v0, "RemoteShot"

    const-string v1, "TurnOn!"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pref_wifidirect_on"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 619
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->iSDKVersion:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 622
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] [WiFi] turnOn() : WIFI On "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 629
    :cond_0
    return-void
.end method

.method public SetBlockPreference(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 584
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bblockPreferenceUpdate:Z

    .line 585
    return-void
.end method

.method public SetCameraStateUpdated2(Z)V
    .locals 3
    .parameter "isParametersUpdated"

    .prologue
    .line 251
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] setCameraStateUpdated2() : isParametersUpdated = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v0, :cond_0

    .line 254
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bCameraStateUpdated:Z

    .line 255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bCameraStateUpdated:Z

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setCameraParametersUpdated(Z)V

    .line 257
    :cond_0
    return-void
.end method

.method public SetRemoconParametersUpdatedFlagOnly(Z)V
    .locals 3
    .parameter "set"

    .prologue
    .line 266
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] setRemoconParametersUpdatedFlagOnly() : set = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bCameraStateUpdated:Z

    .line 268
    return-void
.end method

.method public SetRemoconPauseState(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bRemoconPauseState:Z

    .line 577
    return-void
.end method

.method public SetServiceHandlerStop(Z)V
    .locals 0
    .parameter "stop"

    .prologue
    .line 271
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bServiceHandlerStop:Z

    .line 272
    return-void
.end method

.method public SetWFDState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 916
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] \tsetState() : state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setWFDState(I)V

    .line 920
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .parameter "intent"

    .prologue
    .line 99
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] onBind() : intent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "RemoteShot"

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onChannelDisconnected()V
    .locals 2

    .prologue
    .line 900
    const-string v0, "RemoteShot"

    const-string v1, "---------------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] \tonChannelDisconnected()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const-string v0, "RemoteShot"

    const-string v1, "---------------------------------------------------------------------------"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->retryChannel:Z

    if-nez v0, :cond_0

    .line 905
    const-string v0, "RemoteShot"

    const-string v1, "Channel lost. Trying again"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 907
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->retryChannel:Z

    .line 908
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 913
    :cond_0
    return-void
.end method

.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 7
    .parameter "info"

    .prologue
    const/16 v6, 0x231c

    const/16 v5, 0xd

    .line 855
    const-string v1, "RemoteShot"

    const-string v2, "---------------------------------------------------------------------------"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] [CHECK_WFD] onConnectionInfoAvailable() : GroupOwner :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 857
    iget-boolean v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 856
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    const-string v1, "RemoteShot"

    const-string v2, "---------------------------------------------------------------------------"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    invoke-static {v1, v2, v5}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 863
    const-string v1, "RemoteShot"

    .line 864
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onConnectionInfoAvailable() : getState :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Pref_State"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 864
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 862
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "                                 GroupOwner : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Pref_State"

    .line 874
    const/16 v3, 0xe

    .line 873
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 876
    iget-boolean v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    if-eqz v1, :cond_1

    .line 877
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] onConnectionInfoAvailable() : info.groupFormed : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 878
    iget-boolean v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", info.isGroupOwner : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 877
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->setGroupOwner(Z)V

    .line 881
    const-string v1, "RemoteShot"

    .line 882
    const-string v2, "[RemoteTransferServiceWFD] onConnectionInfoAvailable() : Normal listen() ~~~~~~~~~~~~~~~~~~~~~"

    .line 881
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v1, :cond_0

    .line 884
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->listen()V

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    iget-boolean v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    if-eqz v1, :cond_0

    .line 888
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->setGroupOwner(Z)V

    .line 889
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 890
    .local v0, groupOwnerIp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteConstants;->GROUP_OWNER_PORT:Ljava/lang/String;

    invoke-static {v1, v2, v6}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 892
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v1, v0, v6}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->connect(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] ~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] onCreate() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] ~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bInterrupt:Z

    .line 138
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mServiceHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;-><init>(Landroid/os/Handler;Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    .line 139
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;

    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransferCallBack:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD$RemoteTransferWFDCb;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->registerCallBack(Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD$RemoteTransferCb;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 191
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] ~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] [CHECK_WFD] onDestroy() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] ~~~~~~~~~~~~~~~~~~~~~ "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDestroy() - Exit file transfer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->iServiceStartId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->OnWifiStateEnd_New()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    .line 203
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bConnectedClient:Z

    .line 204
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 205
    return-void
.end method

.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 5
    .parameter "group"

    .prologue
    .line 831
    const-string v2, "RemoteShot"

    .line 832
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[RemoteTransferServiceWFD] [CHECK_WFD] onGroupInfoAvailable() : GroupOwner :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 831
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->isClientListEmpty()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v1, peers:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 840
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scanned Peers Size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 843
    const-string v2, "RemoteShot"

    const-string v3, "No devices found"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    :cond_0
    return-void

    .line 845
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 847
    const-string v3, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sWFDAddress:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 6
    .parameter "peerList"

    .prologue
    const/4 v5, 0x1

    .line 733
    const-string v1, "RemoteShot"

    const-string v2, "[RemoteTransferServiceWFD] \tonPeersAvailable() "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onPeersAvailable() mIsSender : TRUE  mInterrupt : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bInterrupt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] [CHECK_WFD] onPeersAvailable() : peerList = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "RemoteShot"

    const-string v2, "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v1, "RemoteShot"

    .line 742
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Util PREF_STATE : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Pref_State"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->getIntSharedPreference(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 742
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 741
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bChangedPeers:Z

    .line 747
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bInterrupt:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bSuccessDiscovery:Z

    if-eqz v1, :cond_0

    .line 748
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 749
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 750
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scanned Peers Size = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 752
    const-string v1, "RemoteShot"

    const-string v2, "No devices found"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 756
    const-string v2, "RemoteShot"

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v1, :cond_2

    .line 759
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sRemoteMacAddress:Ljava/lang/String;

    .line 760
    const-string v1, "RemoteShot"

    .line 761
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[RemoteTransferServiceWFD] [CHECK_WFD] onPeersAvailable() : connected Device : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 762
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sRemoteMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 761
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 760
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bInterrupt:Z

    goto :goto_0

    .line 766
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sRemoteMacAddress:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 767
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sRemoteMacAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->peers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 782
    const-string v1, "RemoteShot"

    const-string v2, "onPeersAvailable() : Discovered ~~~~~~~~~~~~~~~~!!!"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v1, "RemoteShot"

    .line 784
    const-string v2, "[RemoteTransferServiceWFD] [CHECK_WFD] onPeersAvailable() : disconnectDevice ~~~~~ "

    .line 783
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->sRemoteMacAddress:Ljava/lang/String;

    .line 787
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    if-eqz v1, :cond_3

    .line 788
    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;->onSendMessgeHandlerCb(I)V

    .line 755
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v3, 0x0

    .line 148
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] onStartCommand() : intent = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    const-string v2, " startId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iput p3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->iServiceStartId:I

    .line 152
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bInterrupt:Z

    .line 153
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bChangedPeers:Z

    .line 154
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bblockPreferenceUpdate:Z

    .line 156
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v0, :cond_0

    .line 157
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] onStartCommand() : mIsSender = true"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setIsSender(Z)V

    .line 160
    const-string v0, "SDKVersion"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->iSDKVersion:I

    .line 161
    const-string v0, "hasAddress"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bHasAddress:Z

    .line 163
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    iget v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->iSDKVersion:I

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mWifiState:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    .line 165
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasAddress = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bHasAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] onStartCommand() : mSDKVersion =  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->iSDKVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bHasAddress:Z

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pref_State"

    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/remoteshot/RemoteShotUtil;->putSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 176
    :goto_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->_InitialSetup()V

    .line 177
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->initThreads()V

    .line 179
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bConnectedClient:Z

    .line 186
    :cond_0
    const/4 v0, 0x2

    return v0

    .line 172
    :cond_1
    const-string v0, "RemoteShot"

    .line 173
    const-string v1, "[RemoteTransferServiceWFD] onStartCommand() : CAMERA_STATE = STATE_WFD_CONNECTING"

    .line 172
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCameraCallBack(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;)V
    .locals 2
    .parameter "cameraCallBack"

    .prologue
    .line 230
    const-string v0, "RemoteShot"

    const-string v1, "[RemoteTransferServiceWFD] setCameraCallBack() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraCallBack:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraController$RemoteServiceCameraCb;

    .line 232
    return-void
.end method

.method public setCameraData(Lcom/pantech/app/vegacamera/data/AppData;)V
    .locals 2
    .parameter "mCamData"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v0, :cond_0

    .line 209
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraData:Lcom/pantech/app/vegacamera/data/AppData;

    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setCameraData(Lcom/pantech/app/vegacamera/data/AppData;)V

    .line 212
    :cond_0
    return-void
.end method

.method public setCameraStateUpdated(Z)V
    .locals 3
    .parameter "isParametersUpdated"

    .prologue
    .line 235
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[RemoteTransferServiceWFD] setCameraStateUpdated() : isParametersUpdated = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v0, :cond_0

    .line 238
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bCameraStateUpdated:Z

    .line 239
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->bCameraStateUpdated:Z

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setCameraParametersUpdated(Z)V

    .line 240
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;->isCameraPause()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 241
    const-string v0, "RemoteShot"

    .line 242
    const-string v1, "[RemoteTransferServiceWFD] setCameraStateUpdated() : REMOCON_PREFERENCE_UPDATED"

    .line 241
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;

    .line 244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    const/16 v1, 0x50

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mCameraHashData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->sendCommandSendSocketMessage(ILjava/util/HashMap;)V

    .line 248
    :cond_0
    return-void
.end method

.method public setPreviewData([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v0, :cond_0

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->aPreviewData:[B

    .line 224
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->aPreviewData:[B

    .line 225
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->aPreviewData:[B

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setPreviewData([B)V

    .line 227
    :cond_0
    return-void
.end method

.method public setRemoteData(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;)V
    .locals 2
    .parameter "mReData"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    if-eqz v0, :cond_0

    .line 216
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    .line 217
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mTransfer:Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferServiceWFD;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/RemoteTransferWFD;->setRemoteData(Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;)V

    .line 219
    :cond_0
    return-void
.end method
