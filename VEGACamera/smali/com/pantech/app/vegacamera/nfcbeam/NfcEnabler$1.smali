.class Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, action:Ljava/lang/String;
    const-string v1, "RemoteShot"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[NfcEnabler] onReceive() : action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->access$0(Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 35
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->access$0(Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;

    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->_HandleNfcStateChanged(I)V
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;->access$1(Lcom/pantech/app/vegacamera/nfcbeam/NfcEnabler;I)V

    .line 40
    :cond_1
    return-void
.end method
