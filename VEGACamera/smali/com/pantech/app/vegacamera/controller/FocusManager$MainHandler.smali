.class Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/FocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/FocusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/FocusManager;Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;-><init>(Lcom/pantech/app/vegacamera/controller/FocusManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x3

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 126
    :pswitch_0
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedHardWareISP()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusManager;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$0(Lcom/pantech/app/vegacamera/controller/FocusManager;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #calls: Lcom/pantech/app/vegacamera/controller/FocusManager;->cancelAutoFocus()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$1(Lcom/pantech/app/vegacamera/controller/FocusManager;)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->setFocusParameters()V

    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/FocusManager;->mListener:Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;->startFaceDetection()V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$2(Lcom/pantech/app/vegacamera/controller/FocusManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$3(Lcom/pantech/app/vegacamera/controller/FocusManager;)Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$3(Lcom/pantech/app/vegacamera/controller/FocusManager;)Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 144
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$2(Lcom/pantech/app/vegacamera/controller/FocusManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$3(Lcom/pantech/app/vegacamera/controller/FocusManager;)Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusManager;->mFocusIndicator:Lcom/pantech/app/vegacamera/ui/FocusIndicator;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$3(Lcom/pantech/app/vegacamera/controller/FocusManager;)Lcom/pantech/app/vegacamera/ui/FocusIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->clear()V

    goto :goto_0

    .line 152
    :pswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$2(Lcom/pantech/app/vegacamera/controller/FocusManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusManager$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/FocusManager;

    #calls: Lcom/pantech/app/vegacamera/controller/FocusManager;->capture()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusManager;->access$4(Lcom/pantech/app/vegacamera/controller/FocusManager;)V

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
