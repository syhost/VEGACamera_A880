.class Lcom/pantech/app/vegacamera/bridge/app/ActivityState$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/app/ActivityState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    .line 134
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 139
    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 142
    .local v1, plugged:Z
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    #getter for: Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mPlugged:Z
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->access$0(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 143
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    #setter for: Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->mPlugged:Z
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->access$1(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;Z)V

    .line 144
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/ActivityState$1;->this$0:Lcom/pantech/app/vegacamera/bridge/app/ActivityState;

    #calls: Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->setScreenFlags()V
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/app/ActivityState;->access$2(Lcom/pantech/app/vegacamera/bridge/app/ActivityState;)V

    .line 147
    .end local v1           #plugged:Z
    :cond_1
    return-void
.end method
