.class Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;
.super Landroid/os/Handler;
.source "AOTCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 157
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 159
    :pswitch_0
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[AOTCamera] RESTART_PREVIEW"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->startPreview()V

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-static {}, Landroid/hardware/Camera;->isRunning()I

    move-result v1

    and-int/lit8 v0, v1, 0xf

    .line 168
    .local v0, isRunning:I
    if-nez v0, :cond_0

    .line 169
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[AOTCamera] OBSERVE_CAMERA_DEVICE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    const/16 v2, 0x71

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->showCameraErrorAndFinish(I)V
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$1(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$5(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 177
    .end local v0           #isRunning:I
    :pswitch_2
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v1

    const-string v2, "[AOTCamera] VISIBLE_REVIEW"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MainHandler;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->visibleReviewImage()V
    invoke-static {v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$6(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
