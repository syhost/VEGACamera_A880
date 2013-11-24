.class Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;
.super Landroid/os/Handler;
.source "ColorExtractContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPointHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 466
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;-><init>(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 469
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 492
    :goto_0
    return-void

    .line 472
    :pswitch_0
    const-string v0, "ColorExtractContainer"

    const-string v1, "[ColorExtractContainer] [CE] MainHandler :: COLOR_EXTRACTION_TOUCH_RGB"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->access$0(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionTouch()V

    goto :goto_0

    .line 478
    :pswitch_1
    const-string v0, "ColorExtractContainer"

    const-string v1, "[ColorExtractContainer] [CE] MainHandler :: COLOR_EXTRACTION_VIEW_CONTROL "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->access$0(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 480
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->SetColorExtractionView()V

    goto :goto_0

    .line 484
    :pswitch_2
    const-string v0, "ColorExtractContainer"

    const-string v1, "[ColorExtractContainer] [CE] MainHandler :: COLOR_EXTRACTION_ZOOM_RESET "

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer$ColorPointHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->mColorPointHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;->access$0(Lcom/pantech/app/vegacamera/controller/ColorExtractContainer;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 469
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
