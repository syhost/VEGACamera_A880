.class public Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;
.super Ljava/lang/Object;
.source "NFCBeamInterface.java"


# static fields
.field private static final ADDRESS_INTERVAL_TIME:I = 0x4

.field private static final JELLYBEAN_SDK:I = 0x10

.field private static final LOCAL_MAC_ADDRESS:Ljava/lang/String; = "Local_Mac_Address"

.field private static final REMOTE_SERVICE_BROADCAST:Ljava/lang/String; = "Service_Broadcast"

.field private static final TAG:Ljava/lang/String; = "RemoteShot"


# instance fields
.field private bIsLocalPlayBack:Z

.field private bReceivedMacAddress:Z

.field private bResisteredReceiver:Z

.field private iSDKVersion:I

.field private mCompleteCallBack:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

.field private mContext:Landroid/content/Context;

.field private mCreateNdefMessage:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

.field private mHandler:Landroid/os/Handler;

.field private mNdefAppRecord:Landroid/nfc/NdefRecord;

.field private mNdefMessage:Landroid/nfc/NdefMessage;

.field private mNdefMimeRecord:Landroid/nfc/NdefRecord;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mRemoteInitReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private sCameraVersion:Ljava/lang/String;

.field private sMacAddress:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLandroid/os/Handler;I)V
    .locals 5
    .parameter "context"
    .parameter "localPlayBack"
    .parameter "handler"
    .parameter "SDKVersion"

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMessage:Landroid/nfc/NdefMessage;

    .line 38
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMimeRecord:Landroid/nfc/NdefRecord;

    .line 39
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefAppRecord:Landroid/nfc/NdefRecord;

    .line 41
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 44
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bIsLocalPlayBack:Z

    .line 45
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;

    .line 46
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bResisteredReceiver:Z

    .line 47
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bReceivedMacAddress:Z

    .line 126
    new-instance v0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;-><init>(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mCreateNdefMessage:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    .line 196
    new-instance v0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;-><init>(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mCompleteCallBack:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    .line 229
    new-instance v0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;-><init>(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mRemoteInitReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    .line 55
    iput-boolean p2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bIsLocalPlayBack:Z

    .line 56
    iput-object p3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;

    .line 57
    iput p4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->iSDKVersion:I

    .line 58
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bReceivedMacAddress:Z

    .line 60
    const-string v0, "RemoteShot"

    const-string v1, "[NFCBeamInterface] NFCBeamInterface()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 62
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mCreateNdefMessage:Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    new-array v3, v4, [Landroid/app/Activity;

    invoke-virtual {v1, v2, v0, v3}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mCompleteCallBack:Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;

    check-cast p1, Landroid/app/Activity;

    .end local p1
    new-array v2, v4, [Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 68
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_RegisterNfcInitReceiver()V

    .line 69
    iget v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->iSDKVersion:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 76
    :cond_0
    const-string v0, "3"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sCameraVersion:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private OnCreateMimeRecord(Ljava/lang/String;[BLjava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 6
    .parameter "mimeType"
    .parameter "payload"
    .parameter "cameraVersion"

    .prologue
    .line 219
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[NFCBeamInterface] createMimeRecord() : mimeType = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 221
    .local v1, mimeBytes:[B
    const-string v3, "US-ASCII"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 222
    .local v0, id_cameraVersion:[B
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[NFCBeamInterface] [CHECK_WFD] createMimeRecord() : id_cameraVersion = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v1, v0, p2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 226
    .local v2, mimeRecord:Landroid/nfc/NdefRecord;
    return-object v2
.end method

.method private _CheckServiceRunning(Ljava/lang/String;)Z
    .locals 8
    .parameter "serviceName"

    .prologue
    .line 252
    const-string v5, "RemoteShot"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[NFCBeamInterface] checkServiceRunning() : serviceName = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v4, 0x0

    .line 255
    .local v4, serviceState:Z
    iget-object v5, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_0

    .line 256
    iget-object v5, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 257
    .local v2, manager:Landroid/app/ActivityManager;
    const v5, 0x7fffffff

    invoke-virtual {v2, v5}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 258
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 267
    .end local v0           #i:I
    .end local v1           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2           #manager:Landroid/app/ActivityManager;
    :cond_0
    :goto_1
    const-string v5, "RemoteShot"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "[NFCBeamInterface] checkServiceRunning() : serviceState = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return v4

    .line 259
    .restart local v0       #i:I
    .restart local v1       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2       #manager:Landroid/app/ActivityManager;
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 260
    .local v3, rInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 261
    const/4 v4, 0x1

    .line 262
    goto :goto_1

    .line 258
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private _RegisterNfcInitReceiver()V
    .locals 3

    .prologue
    .line 81
    const-string v1, "RemoteShot"

    const-string v2, "[NFCBeamInterface] _RegisterNfcInitReceiver()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 83
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bIsLocalPlayBack:Z

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "Service_Broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mRemoteInitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bResisteredReceiver:Z

    .line 90
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private _StartInitService()V
    .locals 3

    .prologue
    .line 118
    const-string v1, "RemoteShot"

    const-string v2, "[NFCBeamInterface] createNdefMessage() : startService : RemoteBeamInitService ~~~"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    const-class v2, Lcom/pantech/app/vegacamera/remoteshot/RemoteInitService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "method"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const-string v1, "SDKVersion"

    iget v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->iSDKVersion:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 124
    return-void
.end method

.method private _UnRegisterNfcInitReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 93
    const-string v0, "RemoteShot"

    const-string v1, "[NFCBeamInterface] _UnRegisterNfcInitReceiver()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mRemoteInitReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 96
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bIsLocalPlayBack:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bResisteredReceiver:Z

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mRemoteInitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    iget v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->iSDKVersion:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    .line 106
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-array v2, v4, [Landroid/app/Activity;

    invoke-virtual {v1, v3, v0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessageCallback(Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 107
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-array v2, v4, [Landroid/app/Activity;

    invoke-virtual {v1, v3, v0, v2}, Landroid/nfc/NfcAdapter;->setOnNdefPushCompleteCallback(Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 108
    iput-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 110
    :cond_1
    iput-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mRemoteInitReceiver:Landroid/content/BroadcastReceiver;

    .line 111
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bResisteredReceiver:Z

    .line 115
    :cond_2
    return-void
.end method

.method private _WifiAPStateCheck()V
    .locals 7

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 293
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 295
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[NFCBeamInterface] [WiFi] WifiCheckAPState() : getWifiState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[NFCBeamInterface] [WiFi] WifiCheckAPState() : getWifiApState = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 299
    const-string v1, "RemoteShot"

    const-string v2, "[NFCBeamInterface] [WiFi] WifiCheckAPState() : WIFI_STATE_DISABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 301
    const-string v1, "RemoteShot"

    const-string v2, "[NFCBeamInterface] [WiFi] WifiCheckAPState() : WIFI_AP_STATE_ENABLED : WiFi AP turn off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 305
    const-wide/16 v1, 0x7d0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 320
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 310
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 311
    const-string v1, "RemoteShot"

    const-string v2, "[NFCBeamInterface] [WiFi] WifiCheckAPState() : WIFI_STATE_ENABLED "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    const-string v1, "RemoteShot"

    const-string v2, "[NFCBeamInterface] [WiFi] WifiCheckAPState() : ignore "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 315
    const-string v1, "RemoteShot"

    const-string v2, "[NFCBeamInterface] [WiFi] WifiCheckAPState() : WIFI_AP_STATE_ENABLED : WiFi AP turn off"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto :goto_0
.end method

.method private _WifiStateCheck()V
    .locals 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 280
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NFCBeamInterface] [WiFi] WifiCheckState() : getWifiState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NFCBeamInterface] [WiFi] WifiCheckState() : isWifiEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 284
    const-string v0, "RemoteShot"

    const-string v1, "[NFCBeamInterface] [WiFi] WifiCheckState() : WIFI_STATE_DISABLED "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 290
    return-void

    .line 285
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 286
    const-string v0, "RemoteShot"

    const-string v1, "[NFCBeamInterface] [WiFi] WifiCheckState() : WIFI_STATE_ENABLED "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->iSDKVersion:I

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_CheckServiceRunning(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_WifiStateCheck()V

    return-void
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NdefMessage;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMessage:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sCameraVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;[BLjava/lang/String;)Landroid/nfc/NdefRecord;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->OnCreateMimeRecord(Ljava/lang/String;[BLjava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Landroid/nfc/NdefRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMimeRecord:Landroid/nfc/NdefRecord;

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Landroid/nfc/NdefRecord;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefAppRecord:Landroid/nfc/NdefRecord;

    return-void
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NdefRecord;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMimeRecord:Landroid/nfc/NdefRecord;

    return-object v0
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NdefRecord;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefAppRecord:Landroid/nfc/NdefRecord;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bReceivedMacAddress:Z

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_WifiAPStateCheck()V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_StartInitService()V

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Landroid/nfc/NdefMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMessage:Landroid/nfc/NdefMessage;

    return-void
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sMacAddress:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bReceivedMacAddress:Z

    return v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public OnReleaseNfcBeamInterface()V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_UnRegisterNfcInitReceiver()V

    .line 324
    return-void
.end method

.method protected RemoteShotApplicationMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    const-string v0, "RemoteShot"

    const-string v1, "[NFCBeamInterface] RemoteShotApplicationMimeType() "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "application/com.pantech.app.vegacamera"

    return-object v0
.end method
