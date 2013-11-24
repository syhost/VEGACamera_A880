.class Lcom/pantech/app/vegacamera/Video$MainHandler;
.super Landroid/os/Handler;
.source "Video.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Video;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Video;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Video;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Video$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Video;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    const-string v0, "Video"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Video] handleMessage , msg.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 146
    :sswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Video;->SetupPreview()V

    goto :goto_0

    .line 150
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #calls: Lcom/pantech/app/vegacamera/Video;->_SetCameraParametersWhenIdle(J)V
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/Video;->access$0(Lcom/pantech/app/vegacamera/Video;J)V

    goto :goto_0

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    const-wide/16 v1, 0x0

    #calls: Lcom/pantech/app/vegacamera/Video;->_SetCameraParametersWhenIdle(J)V
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/Video;->access$0(Lcom/pantech/app/vegacamera/Video;J)V

    goto :goto_0

    .line 163
    :sswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->iDisplayRotation:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$2(Lcom/pantech/app/vegacamera/Video;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_SetDisplayOrientation()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$3(Lcom/pantech/app/vegacamera/Video;)V

    .line 166
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->lOnResumeTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Video;->access$4(Lcom/pantech/app/vegacamera/Video;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 172
    :sswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_SetPreviewFrameLayoutAspectRatio()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$6(Lcom/pantech/app/vegacamera/Video;)V

    .line 176
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_InitializeAfterDeviceOpen()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$7(Lcom/pantech/app/vegacamera/Video;)V

    goto :goto_0

    .line 180
    :sswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #setter for: Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Video;->access$8(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;)V

    .line 181
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 182
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$9(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Video;->access$10(Lcom/pantech/app/vegacamera/Video;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 186
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_CameaAfterPreviewDone()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$11(Lcom/pantech/app/vegacamera/Video;)V

    goto/16 :goto_0

    .line 190
    :sswitch_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #setter for: Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Video;->access$8(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;)V

    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #setter for: Lcom/pantech/app/vegacamera/Video;->bOpenCameraFail:Z
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/Video;->access$12(Lcom/pantech/app/vegacamera/Video;Z)V

    .line 192
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    const/16 v1, 0x65

    #calls: Lcom/pantech/app/vegacamera/Video;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Video;->access$13(Lcom/pantech/app/vegacamera/Video;II)V

    goto/16 :goto_0

    .line 196
    :sswitch_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #setter for: Lcom/pantech/app/vegacamera/Video;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Video;->access$8(Lcom/pantech/app/vegacamera/Video;Lcom/pantech/app/vegacamera/Video$CameraStartUpThread;)V

    .line 197
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #setter for: Lcom/pantech/app/vegacamera/Video;->bCameraDisabled:Z
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/Video;->access$14(Lcom/pantech/app/vegacamera/Video;Z)V

    .line 198
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    const/16 v1, 0x6f

    #calls: Lcom/pantech/app/vegacamera/Video;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Video;->access$13(Lcom/pantech/app/vegacamera/Video;II)V

    goto/16 :goto_0

    .line 202
    :sswitch_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    const/16 v1, 0x70

    #calls: Lcom/pantech/app/vegacamera/Video;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Video;->access$13(Lcom/pantech/app/vegacamera/Video;II)V

    goto/16 :goto_0

    .line 206
    :sswitch_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #calls: Lcom/pantech/app/vegacamera/Video;->_StartCameraMode()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$15(Lcom/pantech/app/vegacamera/Video;)V

    goto/16 :goto_0

    .line 210
    :sswitch_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 211
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 212
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 216
    :sswitch_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 221
    :sswitch_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$1(Lcom/pantech/app/vegacamera/Video;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 228
    :sswitch_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    const/16 v1, 0x68

    #calls: Lcom/pantech/app/vegacamera/Video;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Video;->access$13(Lcom/pantech/app/vegacamera/Video;II)V

    goto/16 :goto_0

    .line 232
    :sswitch_d
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    #getter for: Lcom/pantech/app/vegacamera/Video;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Video;->access$5(Lcom/pantech/app/vegacamera/Video;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Video$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Video;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Video;->_GotoQuickview()V

    goto/16 :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_6
        0x9 -> :sswitch_7
        0xa -> :sswitch_8
        0xb -> :sswitch_a
        0x2e -> :sswitch_c
        0x3e -> :sswitch_9
        0x3f -> :sswitch_b
        0x43 -> :sswitch_d
    .end sparse-switch
.end method
