.class Lcom/pantech/app/vegacamera/Effects$MainHandler;
.super Landroid/os/Handler;
.source "Effects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Effects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Effects;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/Effects;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/Effects$MainHandler;-><init>(Lcom/pantech/app/vegacamera/Effects;)V

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

    .line 184
    const-string v0, "Effects"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[Effects] handleMessage , msg.what = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 187
    :sswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/Effects;->SetupPreview()V

    goto :goto_0

    .line 191
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 192
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    #calls: Lcom/pantech/app/vegacamera/Effects;->_SetCameraParametersWhenIdle(J)V
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/Effects;->access$23(Lcom/pantech/app/vegacamera/Effects;J)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const-wide/16 v1, 0x0

    #calls: Lcom/pantech/app/vegacamera/Effects;->_SetCameraParametersWhenIdle(J)V
    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/Effects;->access$23(Lcom/pantech/app/vegacamera/Effects;J)V

    goto :goto_0

    .line 204
    :sswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->iDisplayRotation:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$24(Lcom/pantech/app/vegacamera/Effects;)I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 205
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_SetDisplayOrientation()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$25(Lcom/pantech/app/vegacamera/Effects;)V

    .line 207
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->lOnResumeTime:J
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Effects;->access$26(Lcom/pantech/app/vegacamera/Effects;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 213
    :sswitch_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_SetPreviewFrameLayoutAspectRatio()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$27(Lcom/pantech/app/vegacamera/Effects;)V

    .line 217
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_InitializeAfterDeviceOpen()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$28(Lcom/pantech/app/vegacamera/Effects;)V

    goto :goto_0

    .line 221
    :sswitch_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #setter for: Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Effects;->access$29(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;)V

    .line 222
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/data/AppData;->SetDeviceState(I)V

    .line 223
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SURFACE_TEXTURE:Z

    if-nez v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$0(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/data/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/data/AppData;->GetDevice()Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mCameraSurfaceHolder:Landroid/view/SurfaceHolder;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Effects;->access$30(Lcom/pantech/app/vegacamera/Effects;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V

    .line 227
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_CameaAfterPreviewDone()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$31(Lcom/pantech/app/vegacamera/Effects;)V

    goto/16 :goto_0

    .line 231
    :sswitch_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #setter for: Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Effects;->access$29(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;)V

    .line 232
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #setter for: Lcom/pantech/app/vegacamera/Effects;->bOpenCameraFail:Z
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/Effects;->access$32(Lcom/pantech/app/vegacamera/Effects;Z)V

    .line 233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const/16 v1, 0x65

    #calls: Lcom/pantech/app/vegacamera/Effects;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Effects;->access$33(Lcom/pantech/app/vegacamera/Effects;II)V

    goto/16 :goto_0

    .line 237
    :sswitch_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #setter for: Lcom/pantech/app/vegacamera/Effects;->tCameraStartUpThread:Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Effects;->access$29(Lcom/pantech/app/vegacamera/Effects;Lcom/pantech/app/vegacamera/Effects$CameraStartUpThread;)V

    .line 238
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #setter for: Lcom/pantech/app/vegacamera/Effects;->bCameraDisabled:Z
    invoke-static {v0, v4}, Lcom/pantech/app/vegacamera/Effects;->access$34(Lcom/pantech/app/vegacamera/Effects;Z)V

    .line 239
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const/16 v1, 0x6f

    #calls: Lcom/pantech/app/vegacamera/Effects;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Effects;->access$33(Lcom/pantech/app/vegacamera/Effects;II)V

    goto/16 :goto_0

    .line 243
    :sswitch_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const/16 v1, 0x70

    #calls: Lcom/pantech/app/vegacamera/Effects;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Effects;->access$33(Lcom/pantech/app/vegacamera/Effects;II)V

    goto/16 :goto_0

    .line 247
    :sswitch_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_StartCameraMode()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$35(Lcom/pantech/app/vegacamera/Effects;)V

    goto/16 :goto_0

    .line 251
    :sswitch_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    invoke-static {v3}, Lcom/pantech/app/vegacamera/util/Util;->SetFatalPopupState(Z)V

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 257
    :sswitch_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 262
    :sswitch_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/ActivityBase;->finish()V

    goto/16 :goto_0

    .line 269
    :sswitch_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    const/16 v1, 0x68

    #calls: Lcom/pantech/app/vegacamera/Effects;->_ShowErrorAndFinish(II)V
    invoke-static {v0, v1, v3}, Lcom/pantech/app/vegacamera/Effects;->access$33(Lcom/pantech/app/vegacamera/Effects;II)V

    goto/16 :goto_0

    .line 273
    :sswitch_d
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->_GotoQuickview()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$36(Lcom/pantech/app/vegacamera/Effects;)V

    goto/16 :goto_0

    .line 278
    :sswitch_e
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ActivityBase;->mPaused:Z

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/Effects;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 282
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #getter for: Lcom/pantech/app/vegacamera/Effects;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$1(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/ActivityBase;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->GetInstance(Landroid/content/Context;)Lcom/pantech/app/vegacamera/util/AudioManagerImpl;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/util/AudioManagerImpl;->AbandonAudioFocus(I)V

    .line 283
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$37(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->onCaptureComplete()V

    .line 284
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$37(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->CheckFocusState(I)I

    .line 285
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Effects$MainHandler;->this$0:Lcom/pantech/app/vegacamera/Effects;

    #calls: Lcom/pantech/app/vegacamera/Effects;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Effects;->access$37(Lcom/pantech/app/vegacamera/Effects;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/EffectsLayoutControl;->_setShutterButton_Enable()V

    goto/16 :goto_0

    .line 185
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
        0x1f -> :sswitch_e
        0x2e -> :sswitch_c
        0x3e -> :sswitch_9
        0x3f -> :sswitch_b
        0x43 -> :sswitch_d
    .end sparse-switch
.end method
