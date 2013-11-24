.class Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$1;
.super Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
.source "MenuExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;-><init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;

    .line 91
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 94
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    .line 98
    .local v0, listener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;->onProgressStart()V

    goto :goto_0

    .line 103
    .end local v0           #listener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->stopTaskAndDismissDialog()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;)V

    .line 104
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 105
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    .line 106
    .restart local v0       #listener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;->onProgressComplete(I)V

    .line 108
    .end local v0           #listener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mSelectionManager:Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->access$7(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;)Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/SelectionManager;->leaveSelectionMode()V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->access$8(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->access$8(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;)Landroid/app/ProgressDialog;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 114
    :cond_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 115
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;

    .line 116
    .restart local v0       #listener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;
    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;->onProgressUpdate(I)V

    goto :goto_0

    .line 121
    .end local v0           #listener:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$ProgressListener;
    :pswitch_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor$1;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->mActivity:Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/MenuExecutor;)Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
