.class Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;
.super Ljava/lang/Object;
.source "NFCBeamInterface.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$CreateNdefMessageCallback;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createNdefMessage(Landroid/nfc/NfcEvent;)Landroid/nfc/NdefMessage;
    .locals 9
    .parameter "arg0"

    .prologue
    const/16 v8, 0x38d

    const/16 v7, 0x10

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 130
    const-string v4, "RemoteShot"

    const-string v5, "------------------------------------------------------------------------------ "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v4, "RemoteShot"

    const-string v5, "[NFCBeamInterface] createNdefMessage() : Start "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v4, "RemoteShot"

    const-string v5, "------------------------------------------------------------------------------ "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->iSDKVersion:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$0(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)I

    move-result v4

    if-lt v4, v7, :cond_1

    .line 134
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    const-string v5, "com.pantech.app.vegacamera.remoteshot.wfd.RemoteTransferServiceWFD"

    #calls: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_CheckServiceRunning(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$1(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    const-string v4, "RemoteShot"

    const-string v5, "[NFCBeamInterface] createNdefMessage() : return "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    :goto_0
    return-object v3

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #setter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bReceivedMacAddress:Z
    invoke-static {v4, v6}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$2(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Z)V

    .line 142
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #calls: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_WifiAPStateCheck()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$3(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V

    .line 143
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #calls: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_StartInitService()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$4(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V

    .line 146
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #setter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMessage:Landroid/nfc/NdefMessage;
    invoke-static {v4, v3}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$5(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Landroid/nfc/NdefMessage;)V

    .line 148
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #setter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sMacAddress:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$6(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v4, 0x4

    if-lt v1, v4, :cond_4

    .line 165
    :goto_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->sMacAddress:Ljava/lang/String;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$8(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 166
    const-string v4, "RemoteShot"

    const-string v5, "[NFCBeamInterface] createNdefMessage() : failed to get MacAddress "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$9(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "failed to get MacAddress"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 168
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    const-string v5, "com.pantech.app.vegacamera.remoteshot.RemoteInitService"

    #calls: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_CheckServiceRunning(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$1(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 170
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$10(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$10(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 172
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$10(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 174
    const-string v4, "RemoteShot"

    const-string v5, "[NFCBeamInterface] createNdefMessage() : return "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #calls: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_WifiStateCheck()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$11(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)V

    .line 179
    :cond_3
    const-string v4, "RemoteShot"

    const-string v5, "-------------------------------------------------------------------------------------- "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v4, "RemoteShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[NFCBeamInterface] createNdefMessage() : End : mNdefMessage = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMessage:Landroid/nfc/NdefMessage;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$12(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NdefMessage;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v4, "RemoteShot"

    const-string v5, "-------------------------------------------------------------------------------------- "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->iSDKVersion:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$0(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)I

    move-result v4

    if-lt v4, v7, :cond_6

    .line 184
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    const-string v5, "com.pantech.app.vegacamera.remoteshot.wfd.RemoteTransferServiceWFD"

    #calls: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->_CheckServiceRunning(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$1(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 187
    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMessage:Landroid/nfc/NdefMessage;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$12(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NdefMessage;

    move-result-object v3

    goto/16 :goto_0

    .line 154
    :cond_4
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bReceivedMacAddress:Z
    invoke-static {v4}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$7(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 159
    iget-object v4, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #setter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->bReceivedMacAddress:Z
    invoke-static {v4, v6}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$2(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;Z)V

    .line 160
    const-string v4, "RemoteShot"

    const-string v5, "[NFCBeamInterface] createNdefMessage() : received MacAddress "

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 152
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 190
    :cond_6
    iget-object v3, p0, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface$1;->this$0:Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;

    #getter for: Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->mNdefMessage:Landroid/nfc/NdefMessage;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;->access$12(Lcom/pantech/app/vegacamera/nfcbeam/NFCBeamInterface;)Landroid/nfc/NdefMessage;

    move-result-object v3

    goto/16 :goto_0
.end method
