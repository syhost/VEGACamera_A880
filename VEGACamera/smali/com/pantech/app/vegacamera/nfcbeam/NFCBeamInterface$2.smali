.class Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;
.super Ljava/lang/Object;
.source "NFCBeamInterface.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$OnNdefPushCompleteCallback;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNdefPushComplete(Landroid/nfc/NfcEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    const/16 v3, 0x38f

    .line 200
    const-string v1, "RemoteShot"

    const-string v2, "[NFCBeamInterface] onNdefPushComplete()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$10(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$10(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 204
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$10(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 205
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$10(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->iSDKVersion:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$0(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 208
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    const-string v2, "com.pantech.app.vegacamera.remoteshot.wfd.RemoteTransferServiceWFD"

    #calls: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_CheckServiceRunning(Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$1(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$13(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$2;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$13(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 214
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method
