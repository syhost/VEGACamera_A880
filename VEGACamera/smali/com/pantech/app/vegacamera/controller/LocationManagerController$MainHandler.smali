.class Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;
.super Landroid/os/Handler;
.source "LocationManagerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/LocationManagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/LocationManagerController;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/LocationManagerController;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/LocationManagerController;Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;-><init>(Lcom/pantech/app/vegacamera/controller/LocationManagerController;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 31
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->access$0(Lcom/pantech/app/vegacamera/controller/LocationManagerController;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_StopReceivingLocationUpdates()V

    .line 35
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    #calls: Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_DisableEasySetting()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->access$1(Lcom/pantech/app/vegacamera/controller/LocationManagerController;)V

    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    const/4 v1, 0x1

    #calls: Lcom/pantech/app/vegacamera/controller/LocationManagerController;->_LocSetState(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->access$2(Lcom/pantech/app/vegacamera/controller/LocationManagerController;I)V

    .line 37
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->access$3(Lcom/pantech/app/vegacamera/controller/LocationManagerController;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/LocationManagerController$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/LocationManagerController;

    #getter for: Lcom/pantech/app/vegacamera/controller/LocationManagerController;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/LocationManagerController;->access$3(Lcom/pantech/app/vegacamera/controller/LocationManagerController;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v1

    iget-object v1, v1, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$string;->accessfail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 37
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 31
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
