.class Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;
.super Landroid/os/Handler;
.source "RotateTimerDialogController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 102
    :goto_0
    return-void

    .line 88
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimeSec:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimeSec:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->access$1(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;I)V

    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimeSec:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)I

    move-result v0

    if-gez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->listener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;

    const-string v1, "connection_fail"

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$ConnectionResultListener;->ConnectionResult(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    const-string v1, "%01d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->iTimeSec:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->access$0(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->sTimeSecString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->access$2(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->sTimeSecString:Ljava/lang/String;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->access$3(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->setTimeDialog(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController$1;->this$0:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;

    #getter for: Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;->access$4(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/RotateTimerDialogController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
