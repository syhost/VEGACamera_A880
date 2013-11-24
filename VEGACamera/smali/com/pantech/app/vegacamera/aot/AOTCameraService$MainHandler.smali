.class Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;
.super Landroid/os/Handler;
.source "AOTCameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)V
    .locals 0
    .parameter

    .prologue
    .line 579
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCameraService;Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 579
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 582
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 595
    :goto_0
    return-void

    .line 584
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->requestHideSelf()V

    goto :goto_0

    .line 587
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    const/16 v1, 0x72

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->showAOTErrorNFinish(I)V

    goto :goto_0

    .line 590
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->access$2(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 591
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 592
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->requestHideSelf()V

    goto :goto_0

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
