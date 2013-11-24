.class Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;
.super Landroid/content/BroadcastReceiver;
.source "NFCBeamInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    .line 229
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, action:Ljava/lang/String;
    const-string v2, "property"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, property:Ljava/lang/String;
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[NFCBeamInterface] mRemoteInitReceiver onReceive() : intent = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    if-eqz v0, :cond_0

    const-string v2, "Service_Broadcast"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    const-string v2, "Local_Mac_Address"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    const-string v3, "address"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sMacAddress:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$6(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->RemoteShotApplicationMimeType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sMacAddress:Ljava/lang/String;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$8(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sCameraVersion:Ljava/lang/String;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$14(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->OnCreateMimeRecord(Ljava/lang/String;[BLjava/lang/String;)Landroid/nfc/NdefRecord;
    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$15(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;[BLjava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v3

    #setter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMimeRecord:Landroid/nfc/NdefRecord;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$16(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Landroid/nfc/NdefRecord;)V

    .line 240
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    const-string v3, "com.pantech.app.vegaremoteshot"

    invoke-static {v3}, Landroid/nfc/NdefRecord;->createApplicationRecord(Ljava/lang/String;)Landroid/nfc/NdefRecord;

    move-result-object v3

    #setter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefAppRecord:Landroid/nfc/NdefRecord;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$17(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Landroid/nfc/NdefRecord;)V

    .line 241
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    new-instance v3, Landroid/nfc/NdefMessage;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/nfc/NdefRecord;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMimeRecord:Landroid/nfc/NdefRecord;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$18(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefAppRecord:Landroid/nfc/NdefRecord;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$19(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NdefRecord;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-direct {v3, v4}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    #setter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMessage:Landroid/nfc/NdefMessage;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$5(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Landroid/nfc/NdefMessage;)V

    .line 243
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[NFCBeamInterface] mRemoteInitReceiver : =>mMacAddress:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sMacAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$8(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$3;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #setter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bReceivedMacAddress:Z
    invoke-static {v2, v7}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$2(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Z)V

    .line 248
    :cond_0
    return-void
.end method
