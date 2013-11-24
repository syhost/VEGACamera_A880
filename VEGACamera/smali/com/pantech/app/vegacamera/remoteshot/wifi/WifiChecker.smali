.class public Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;
.super Ljava/lang/Object;
.source "WifiChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;,
        Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;
    }
.end annotation


# instance fields
.field protected listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mSDKVersion:I

.field private mWifiApState:I

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "SDKVersion"

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiState:I

    .line 30
    const/16 v0, 0xb

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiApState:I

    .line 105
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mContext:Landroid/content/Context;

    .line 106
    iput p2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mSDKVersion:I

    .line 108
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 115
    new-instance v0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;-><init>(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiStateReceiver;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 116
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mIntentFilter:Landroid/content/IntentFilter;

    .line 117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mRegistered:Z

    .line 121
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiState:I

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;)I
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiState:I

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;)I
    .locals 1
    .parameter

    .prologue
    .line 31
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mSDKVersion:I

    return v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiApState:I

    return-void
.end method


# virtual methods
.method public WifiChecState()V
    .locals 3

    .prologue
    .line 124
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WifiChecker] WifiChecState() : getWifiState = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WifiChecker] WifiChecState() : isWifiEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 128
    const-string v0, "RemoteShot"

    const-string v1, "[WifiChecker] WifiChecState() : WIFI_STATE_DISABLED "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v1, "WiFi_disable"

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v1, "WIFI_STATE_DISABLED"

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 132
    const-string v0, "RemoteShot"

    const-string v1, "[WifiChecker] WifiChecState() : WIFI_STATE_ENABLED "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v1, "WiFi_enable"

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    const-string v1, "WIFI_STATE_ENABLED"

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;->wifiCheckerMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getListener()Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    return-object v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 150
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [WifiChecker] pause() : mRegistered = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mRegistered:Z

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mRegistered:Z

    .line 156
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 139
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [WifiChecker] resume() : mRegistered = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mRegistered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mRegistered:Z

    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setDisableWifi(Z)V
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x0

    .line 235
    move v0, p1

    .line 237
    .local v0, desiredState:Z
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [WifiChecker] setDisableWifi() : desiredState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, success:Z
    const/4 v2, 0x0

    .line 242
    .local v2, success2:Z
    if-eqz v0, :cond_0

    .line 243
    const-string v3, "RemoteShot"

    const-string v4, " [WifiChecker] setDisableWifi() : mNfcAdapter.disable() ~~~~~~~~~~~~~~~~~ "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    .line 246
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [WifiChecker] setDisableWifi() : success =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v3, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v2

    .line 249
    const-string v3, "RemoteShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " [WifiChecker] setDisableWifi() : success2 =  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v3, "RemoteShot"

    const-string v4, " [WifiChecker] setDisableWifi() : mNfcAdapter.enable() ~~~~~~~~~~~~~~~~~ "

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableWifi(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 262
    move v0, p1

    .line 264
    .local v0, desiredState:Z
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [WifiChecker] setEnableWifi() : desiredState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, success:Z
    if-eqz v0, :cond_0

    .line 269
    const-string v2, "RemoteShot"

    const-string v3, " [WifiChecker] setEnableWifi() : WiFi enable ~~~~~~~~~~~~~~~~~ "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v1

    .line 272
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " [WifiChecker] setEnableWifi() : success =  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_0
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker;->listener:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiChecker$WifiCheckerListener;

    .line 185
    return-void
.end method
