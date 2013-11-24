.class Lcom/pantech/app/vegacamera/Photo$MainHandler;
.super Landroid/os/Handler;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Photo;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Photo;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Photo$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Photo;)V

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

    .line 141
    const-string v0, "Photo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Photo] handleMessage , msg.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 144
    :sswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->SetupPreview()V

    goto :goto_0

    .line 148
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParametersWhenIdle(J)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/Photo;->_SetCameraParametersWhenIdle(J)V

    goto :goto_0

    .line 161
    :sswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #getter for: Lcom/pantech/app/vegacamera/Photo;->iDisplayRotation:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Photo;->access$0(Lcom/pantech/app/vegacamera/Photo;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->_SetDisplayOrientation()V

    .line 164
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #getter for: Lcom/pantech/app/vegacamera/Photo;->lOnResumeTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Photo;->access$1(Lcom/pantech/app/vegacamera/Photo;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 170
    :sswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #calls: Lcom/pantech/app/vegacamera/Photo;->_SetPreviewFrameLayoutAspectRatio()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$2(Lcom/pantech/app/vegacamera/Photo;)V

    .line 174
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #calls: Lcom/pantech/app/vegacamera/Photo;->_InitializeAfterDeviceOpen()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$3(Lcom/pantech/app/vegacamera/Photo;)V

    goto :goto_0

    .line 178
    :sswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #setter for: Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Photo;->access$4(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;)V

    .line 179
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 180
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_3

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #getter for: Lcom/pantech/app/vegacamera/Photo;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Photo;->access$5(Lcom/pantech/app/vegacamera/Photo;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->_CameaAfterPreviewDone()V

    goto/16 :goto_0

    .line 189
    :sswitch_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #setter for: Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Photo;->access$4(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;)V

    .line 190
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #setter for: Lcom/pantech/app/vegacamera/Photo;->bOpenCameraFail:Z
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/Photo;->access$6(Lcom/pantech/app/vegacamera/Photo;Z)V

    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    const/16 v1, 0x65

    #calls: Lcom/pantech/app/vegacamera/Photo;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Photo;->access$7(Lcom/pantech/app/vegacamera/Photo;II)V

    goto/16 :goto_0

    .line 195
    :sswitch_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #setter for: Lcom/pantech/app/vegacamera/Photo;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Photo;->access$4(Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/Photo$CameraStartUpThread;)V

    .line 196
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #setter for: Lcom/pantech/app/vegacamera/Photo;->bCameraDisabled:Z
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/Photo;->access$8(Lcom/pantech/app/vegacamera/Photo;Z)V

    .line 197
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    const/16 v1, 0x6f

    #calls: Lcom/pantech/app/vegacamera/Photo;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Photo;->access$7(Lcom/pantech/app/vegacamera/Photo;II)V

    goto/16 :goto_0

    .line 201
    :sswitch_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    const/16 v1, 0x70

    #calls: Lcom/pantech/app/vegacamera/Photo;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Photo;->access$7(Lcom/pantech/app/vegacamera/Photo;II)V

    goto/16 :goto_0

    .line 205
    :sswitch_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    #calls: Lcom/pantech/app/vegacamera/Photo;->_StartCameraMode()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Photo;->access$9(Lcom/pantech/app/vegacamera/Photo;)V

    goto/16 :goto_0

    .line 209
    :sswitch_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 211
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 215
    :sswitch_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 220
    :sswitch_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 227
    :sswitch_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    const/16 v1, 0x68

    #calls: Lcom/pantech/app/vegacamera/Photo;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Photo;->access$7(Lcom/pantech/app/vegacamera/Photo;II)V

    goto/16 :goto_0

    .line 231
    :sswitch_d
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Photo;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Photo$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Photo;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Photo;->_GotoQuickview()V

    goto/16 :goto_0

    .line 142
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
