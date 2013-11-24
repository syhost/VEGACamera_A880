.class public Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteShot"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field protected mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$1;-><init>(Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 47
    const-string v0, "RemoteShot"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " [NfcEnabler] NfcEnabler() : mNfcAdapter = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 50
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->_RegisterNfcEnableReceiver()V

    .line 51
    return-void
.end method

.method private SetDisableNfcRw()V
    .locals 3

    .prologue
    .line 262
    const-string v1, "RemoteShot"

    const-string v2, " [NfcEnabler] SetDisableNfcRw()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable_RWP2P()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 270
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RemoteShot"

    const-string v2, "[NfcEnabler] SetDisableNfcRw() Exception : "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "RemoteShot"

    const-string v2, "[NfcEnabler] SetDisableNfcRw() NoSuchMethodError : "

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private SetEnableNfcRw()V
    .locals 3

    .prologue
    .line 249
    const-string v1, "RemoteShot"

    const-string v2, " [NfcEnabler] SetEnableNfcRw()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable_RWP2P()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 258
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "RemoteShot"

    const-string v2, "[NfcEnabler] SetEnableNfcRw() Exception"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 256
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "RemoteShot"

    const-string v2, "[NfcEnabler] SetEnableNfcRw() NoSuchMethodError"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _HandleNfcStateChanged(I)V
    .locals 5
    .parameter "newState"

    .prologue
    .line 175
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[NfcEnabler] handleNfcStateChanged() : newState = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    .line 178
    .local v0, bResult:Z
    packed-switch p1, :pswitch_data_0

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 180
    :pswitch_0
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] handleNfcStateChanged() : NfcAdapter.STATE_OFF"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;

    const-string v3, "NFC_disable"

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;->OnNfcEnablerMessage(Ljava/lang/String;)V

    .line 183
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;

    const-string v3, "NFC_dialog"

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;->OnNfcEnablerMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :pswitch_1
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] handleNfcStateChanged() : NfcAdapter.STATE_ON"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->_IsRWP2PMethod()Z

    move-result v0

    .line 190
    if-eqz v0, :cond_0

    .line 194
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled_RWP2P()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 195
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] handleNfcStateChanged() : isEnabled_RWP2P"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] handleNfcStateChanged() : enableNdefPush() ~~~~~~~~~~~~~~~~~~"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;

    const-string v3, "NFC_enable"

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;->OnNfcEnablerMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, ex:Ljava/lang/NoSuchMethodError;
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] NoSuchMethodError : "

    invoke-static {v2, v3, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 204
    .end local v1           #ex:Ljava/lang/NoSuchMethodError;
    :cond_2
    :try_start_1
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] handleNfcStateChanged() : isDisabled_RWP2P"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->SetEnableNfcRw()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 215
    :pswitch_2
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] handleNfcStateChanged() : NfcAdapter.STATE_TURNING_ON"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :pswitch_3
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] handleNfcStateChanged() : NfcAdapter.STATE_TURNING_OFF"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :pswitch_4
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] handleNfcStateChanged() : NfcAdapter.STATE_RWP2P_ON"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :pswitch_5
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] handleNfcStateChanged() : NfcAdapter.STATE_RWP2P_OFF"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private _IsRWP2PMethod()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 163
    :try_start_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled_RWP2P()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 164
    const/4 v1, 0x1

    .line 170
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] checkRWP2PMethod() Exception : "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v2, "RemoteShot"

    const-string v3, "[NfcEnabler] checkRWP2PMethod() NoSuchMethodError : "

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private _RegisterNfcEnableReceiver()V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method private _UnregisterNfcEnableReceiver()V
    .locals 3

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v1, "RemoteShot"

    const-string v2, " [NfcEnabler] ReleaseNFCReceiver() :: IllegalArgumentException occur !"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;)Landroid/nfc/NfcAdapter;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->_HandleNfcStateChanged(I)V

    return-void
.end method


# virtual methods
.method public GetListener()Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;

    return-object v0
.end method

.method public InitNfcStateChanged()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->_HandleNfcStateChanged(I)V

    .line 55
    return-void
.end method

.method public OnReleaseNfcEnabler()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->_UnregisterNfcEnableReceiver()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;

    .line 82
    return-void
.end method

.method public SetListener(Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;

    .line 76
    return-void
.end method

.method public SetNfcDisable()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "RemoteShot"

    const-string v1, " [NfcEnabler] setEnableNfc() : mNfcAdapter.disable()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 246
    return-void
.end method

.method public SetNfcEnable()V
    .locals 3

    .prologue
    .line 234
    const-string v1, "RemoteShot"

    const-string v2, " [NfcEnabler] setEnableNfc() : mNfcAdapter.enable()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, success:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    .line 238
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;

    const-string v2, "nfc_on"

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$NfcEnablerListener;->OnNfcEnablerMessage(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method
