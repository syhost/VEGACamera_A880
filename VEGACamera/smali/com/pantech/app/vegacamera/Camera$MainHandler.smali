.class Lcom/pantech/app/vegacamera/Camera$MainHandler;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Camera;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Camera$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Camera;Lcom/pantech/app/vegacamera/Camera$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 963
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Camera$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Camera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 966
    const-string v0, "VegaCamera"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Camera] handleMessage , msg.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 975
    :goto_0
    return-void

    .line 969
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Camera;->access$9(Lcom/pantech/app/vegacamera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 970
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 971
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Camera;->finish()V

    goto :goto_0

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x3e
        :pswitch_0
    .end packed-switch
.end method
