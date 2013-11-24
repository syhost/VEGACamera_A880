.class public Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;
.super Ljava/lang/Object;
.source "NfcDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteShot"


# instance fields
.field protected bForeGround:Z

.field protected mActivity:Landroid/app/Activity;

.field protected mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;

.field protected mMessage:Landroid/nfc/NdefMessage;

.field protected mNfcAdapter:Landroid/nfc/NfcAdapter;

.field protected mNfcPendingIntent:Landroid/app/PendingIntent;

.field protected mWriteTagFilters:[Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->bForeGround:Z

    .line 36
    const-string v0, "RemoteShot"

    const-string v1, "[NfcDetector] NfcDetector()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mActivity:Landroid/app/Activity;

    .line 39
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 40
    invoke-static {p1, v2, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcPendingIntent:Landroid/app/PendingIntent;

    .line 42
    return-void
.end method


# virtual methods
.method public GetListener()Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;

    return-object v0
.end method

.method public OnDisableForeground()V
    .locals 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->bForeGround:Z

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "RemoteShot"

    const-string v1, "[NfcDetector] disableForeground() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 65
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->bForeGround:Z

    .line 67
    :cond_1
    return-void
.end method

.method public OnEnableForeground()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 45
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->bForeGround:Z

    if-nez v3, :cond_1

    .line 46
    const-string v3, "RemoteShot"

    const-string v4, "[NfcDetector] enableForeground()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.TAG_DISCOVERED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 49
    .local v1, tagDetected:Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, ndefDetected:Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, techDetected:Landroid/content/IntentFilter;
    const/4 v3, 0x3

    new-array v3, v3, [Landroid/content/IntentFilter;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    aput-object v1, v3, v8

    const/4 v4, 0x2

    aput-object v2, v3, v4

    iput-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mWriteTagFilters:[Landroid/content/IntentFilter;

    .line 52
    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcPendingIntent:Landroid/app/PendingIntent;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mWriteTagFilters:[Landroid/content/IntentFilter;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 54
    :cond_0
    iput-boolean v8, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->bForeGround:Z

    .line 56
    .end local v0           #ndefDetected:Landroid/content/IntentFilter;
    .end local v1           #tagDetected:Landroid/content/IntentFilter;
    .end local v2           #techDetected:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public OnProcessIntent()V
    .locals 4

    .prologue
    .line 70
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[NfcDetector] processIntent() : intent = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    const-string v1, "RemoteShot"

    const-string v2, "[NfcDetector] Process NDEF discovered action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;

    const-string v2, "android.nfc.action.NDEF_DISCOVERED"

    invoke-interface {v1, v0, v2}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;->OnNfcIntentDetected(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    const-string v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    const-string v1, "RemoteShot"

    const-string v2, "[NfcDetector] Process TAG discovered action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;

    const-string v2, "android.nfc.action.TAG_DISCOVERED"

    invoke-interface {v1, v0, v2}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;->OnNfcIntentDetected(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_2
    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    const-string v1, "RemoteShot"

    const-string v2, "[NfcDetector] Process TECH discovered action"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;

    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    invoke-interface {v1, v0, v2}, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;->OnNfcIntentDetected(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[NfcDetector] Ignore action "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public OnRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 104
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mWriteTagFilters:[Landroid/content/IntentFilter;

    .line 105
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mNfcPendingIntent:Landroid/app/PendingIntent;

    .line 106
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mMessage:Landroid/nfc/NdefMessage;

    .line 107
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mActivity:Landroid/app/Activity;

    .line 108
    iput-object v0, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;

    .line 109
    return-void
.end method

.method public SetListener(Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector;->mListener:Lcom/pantech/app/vegacamera/nfcbeam/NfcDetector$NfcIntentListener;

    .line 100
    return-void
.end method
