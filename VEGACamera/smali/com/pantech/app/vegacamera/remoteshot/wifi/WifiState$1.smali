.class Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$1;
.super Landroid/os/Handler;
.source "WifiState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    .line 40
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 43
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 46
    :pswitch_0
    const-string v0, "RemoteShot"

    const-string v1, "[WifiState] [WiFi] handleMessage() : WIFI_AP_DISCONNECT_TOAST "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    #calls: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->BroadcastRemoconToast()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)V

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->iWifiToastCnt:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    const/4 v1, 0x0

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->iWifiToastCnt:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->iWifiToastCnt:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->iWifiToastCnt:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;I)V

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wifi/WifiState;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
