.class Lcom/pantech/app/vegacamera/Remote$1;
.super Landroid/content/BroadcastReceiver;
.source "Remote.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Remote;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Remote;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Remote;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Remote$1;->this$0:Lcom/pantech/app/vegacamera/Remote;

    .line 135
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, action:Ljava/lang/String;
    const-string v2, "remote_toast"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, property:Ljava/lang/String;
    const-string v2, "RemoteShot"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Remote] mRemoteToastReceiver : onReceive() : intent = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    if-eqz v0, :cond_0

    const-string v2, "Remote_Toast_Broadcast"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const-string v2, "toast_wifi_ap_disable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const-string v2, "RemoteShot"

    const-string v3, "[Remote] [CHECK_WFD] mRemoteToastReceiver : REMOTE_TOAST_WIFI_AP_DISABLE"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote$1;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/Remote;->mRemoteData:Lcom/pantech/app/vegacamera/remoteshot/RemoteCameraData;

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/pantech/app/vegacamera/Remote$1;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/Remote$1;->this$0:Lcom/pantech/app/vegacamera/Remote;

    iget-object v3, v3, Lcom/pantech/app/vegacamera/Remote;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$string;->wifi_ap_disconnect:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 147
    const/4 v4, 0x1

    .line 146
    invoke-static {v2, v3, v4}, Lcom/pantech/app/vegacamera/util/Util;->ShowCustomStringToast(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 152
    :cond_0
    return-void
.end method
