.class Lcom/pantech/app/vegacamera/ActivityBase$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/ActivityBase;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase$1;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    .line 567
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 570
    const-string v0, "ActivityBase"

    const-string v1, "[ActivityBase] onReceive"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$1;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mShowCameraAppView:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$1;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    #calls: Lcom/pantech/app/vegacamera/ActivityBase;->GetLastThumbnailUncached()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->access$0(Lcom/pantech/app/vegacamera/ActivityBase;)V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$1;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    const/4 v1, 0x1

    #setter for: Lcom/pantech/app/vegacamera/ActivityBase;->mUpdateThumbnailDelayed:Z
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase;->access$1(Lcom/pantech/app/vegacamera/ActivityBase;Z)V

    goto :goto_0
.end method
