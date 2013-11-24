.class Lcom/pantech/app/vegacamera/BroadcastManager$1;
.super Landroid/content/BroadcastReceiver;
.source "BroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/BroadcastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/BroadcastManager;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/BroadcastManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/BroadcastManager$1;->this$0:Lcom/pantech/app/vegacamera/BroadcastManager;

    .line 81
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, -0x1

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, action:Ljava/lang/String;
    const-string v3, "BroadcastManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onReceive action = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v3, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, extra:Ljava/lang/String;
    const/4 v1, -0x1

    .line 90
    .local v1, callState:I
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 91
    const/4 v1, 0x0

    .line 97
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/BroadcastManager$1;->this$0:Lcom/pantech/app/vegacamera/BroadcastManager;

    #getter for: Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/BroadcastManager;->access$0(Lcom/pantech/app/vegacamera/BroadcastManager;)Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/pantech/app/vegacamera/BroadcastManager$Listener;->CallStateChanged(I)V

    .line 120
    .end local v1           #callState:I
    .end local v2           #extra:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 92
    .restart local v1       #callState:I
    .restart local v2       #extra:Ljava/lang/String;
    :cond_2
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 93
    const/4 v1, 0x2

    .line 94
    goto :goto_0

    :cond_3
    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    const/4 v1, 0x1

    goto :goto_0

    .line 98
    .end local v1           #callState:I
    .end local v2           #extra:Ljava/lang/String;
    :cond_4
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 99
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 101
    :cond_5
    const-string v3, "BroadcastManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "media extra "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v3, p0, Lcom/pantech/app/vegacamera/BroadcastManager$1;->this$0:Lcom/pantech/app/vegacamera/BroadcastManager;

    #getter for: Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/BroadcastManager;->access$0(Lcom/pantech/app/vegacamera/BroadcastManager;)Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/BroadcastManager$Listener;->MediaStateChanged()V

    goto :goto_1

    .line 103
    :cond_6
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 105
    iget-object v3, p0, Lcom/pantech/app/vegacamera/BroadcastManager$1;->this$0:Lcom/pantech/app/vegacamera/BroadcastManager;

    #getter for: Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/BroadcastManager;->access$0(Lcom/pantech/app/vegacamera/BroadcastManager;)Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    move-result-object v3

    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/BroadcastManager$Listener;->BatteryStateChanged(I)V

    goto :goto_1

    .line 106
    :cond_7
    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 108
    iget-object v3, p0, Lcom/pantech/app/vegacamera/BroadcastManager$1;->this$0:Lcom/pantech/app/vegacamera/BroadcastManager;

    #getter for: Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/BroadcastManager;->access$0(Lcom/pantech/app/vegacamera/BroadcastManager;)Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    move-result-object v3

    const-string v4, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/BroadcastManager$Listener;->RingerModeStateChanged(I)V

    goto :goto_1

    .line 109
    :cond_8
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 111
    iget-object v3, p0, Lcom/pantech/app/vegacamera/BroadcastManager$1;->this$0:Lcom/pantech/app/vegacamera/BroadcastManager;

    #getter for: Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/BroadcastManager;->access$0(Lcom/pantech/app/vegacamera/BroadcastManager;)Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/pantech/app/vegacamera/BroadcastManager$Listener;->HeadSetStateChanged(I)V

    goto/16 :goto_1

    .line 112
    :cond_9
    const-string v3, "android.intent.action.LID_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    const-string v3, "value"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 114
    .local v2, extra:Z
    if-eqz v2, :cond_a

    .line 115
    iget-object v3, p0, Lcom/pantech/app/vegacamera/BroadcastManager$1;->this$0:Lcom/pantech/app/vegacamera/BroadcastManager;

    #getter for: Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/BroadcastManager;->access$0(Lcom/pantech/app/vegacamera/BroadcastManager;)Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/BroadcastManager$Listener;->SmartCoverOpen()V

    goto/16 :goto_1

    .line 116
    :cond_a
    if-nez v2, :cond_1

    .line 117
    iget-object v3, p0, Lcom/pantech/app/vegacamera/BroadcastManager$1;->this$0:Lcom/pantech/app/vegacamera/BroadcastManager;

    #getter for: Lcom/pantech/app/vegacamera/BroadcastManager;->mListener:Lcom/pantech/app/vegacamera/BroadcastManager$Listener;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/BroadcastManager;->access$0(Lcom/pantech/app/vegacamera/BroadcastManager;)Lcom/pantech/app/vegacamera/BroadcastManager$Listener;

    move-result-object v3

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/BroadcastManager$Listener;->SmartCoverClose()V

    goto/16 :goto_1
.end method
