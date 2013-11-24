.class Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;
.super Landroid/os/Handler;
.source "ActivityBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/ActivityBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/ActivityBase;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;-><init>(Lcom/pantech/app/vegacamera/ActivityBase;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 101
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    #getter for: Lcom/pantech/app/vegacamera/ActivityBase;->resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->access$2(Lcom/pantech/app/vegacamera/ActivityBase;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 107
    :pswitch_1
    const-string v0, "ActivityBase"

    const-string v1, "handleMessage QUICKVIEW_DIALOG"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    #getter for: Lcom/pantech/app/vegacamera/ActivityBase;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->access$3(Lcom/pantech/app/vegacamera/ActivityBase;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    #getter for: Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->access$4(Lcom/pantech/app/vegacamera/ActivityBase;)Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    #getter for: Lcom/pantech/app/vegacamera/ActivityBase;->mAppBridge:Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->access$4(Lcom/pantech/app/vegacamera/ActivityBase;)Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ActivityBase$MainHandler;->this$0:Lcom/pantech/app/vegacamera/ActivityBase;

    iget v1, v1, Lcom/pantech/app/vegacamera/ActivityBase;->showView_MS:I

    #calls: Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->_SwitchToQuickView(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;->access$0(Lcom/pantech/app/vegacamera/ActivityBase$MyAppBridge;I)V

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
