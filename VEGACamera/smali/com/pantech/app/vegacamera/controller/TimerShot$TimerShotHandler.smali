.class Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
.super Landroid/os/Handler;
.source "TimerShot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/TimerShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimerShotHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/TimerShot;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/TimerShot;Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;-><init>(Lcom/pantech/app/vegacamera/controller/TimerShot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x320

    const/16 v6, 0xc8

    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 81
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 83
    :pswitch_0
    const-string v0, "TimerShot"

    const-string v1, "[TimerShot] HANDLE_TIMER_SHOT_START"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->removeMessages(I)V

    .line 85
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedTimerShotATT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$1(Lcom/pantech/app/vegacamera/controller/TimerShot;)I

    move-result v1

    #calls: Lcom/pantech/app/vegacamera/controller/TimerShot;->_TimerShotDisplayCount(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$2(Lcom/pantech/app/vegacamera/controller/TimerShot;I)V

    .line 87
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$1(Lcom/pantech/app/vegacamera/controller/TimerShot;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 92
    :goto_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$3(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$raw;->control_former_1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SoundPlay(Landroid/app/Activity;ILandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 93
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #calls: Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetCameraLight(ZII)V
    invoke-static {v0, v3, v6, v7}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$4(Lcom/pantech/app/vegacamera/controller/TimerShot;ZII)V

    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$1(Lcom/pantech/app/vegacamera/controller/TimerShot;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$5(Lcom/pantech/app/vegacamera/controller/TimerShot;I)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v5}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$1(Lcom/pantech/app/vegacamera/controller/TimerShot;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->sendEmptyMessage(I)Z

    .line 104
    :goto_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$1(Lcom/pantech/app/vegacamera/controller/TimerShot;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$5(Lcom/pantech/app/vegacamera/controller/TimerShot;I)V

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerDelay:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$1(Lcom/pantech/app/vegacamera/controller/TimerShot;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #calls: Lcom/pantech/app/vegacamera/controller/TimerShot;->_TimerShotDisplayCount(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$2(Lcom/pantech/app/vegacamera/controller/TimerShot;I)V

    .line 100
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v5}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 101
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$3(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$raw;->control_former_1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SoundPlay(Landroid/app/Activity;ILandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #calls: Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetCameraLight(ZII)V
    invoke-static {v0, v3, v6, v7}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$4(Lcom/pantech/app/vegacamera/controller/TimerShot;ZII)V

    goto :goto_2

    .line 109
    :pswitch_1
    const-string v0, "TimerShot"

    const-string v1, "[TimerShot] HANDLE_TIMER_SHOT_END"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #calls: Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetCameraLight(ZII)V
    invoke-static {v0, v3, v2, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$4(Lcom/pantech/app/vegacamera/controller/TimerShot;ZII)V

    .line 112
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$6(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #calls: Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V
    invoke-static {v0, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$7(Lcom/pantech/app/vegacamera/controller/TimerShot;Z)V

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mListener:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$6(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotListener;->OnTimerShotEnd()V

    goto/16 :goto_0

    .line 119
    :pswitch_2
    const-string v0, "TimerShot"

    const-string v1, "[TimerShot] HANDLE_SHUTTER_TIMER_SHOT_START"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerCount:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$8(Lcom/pantech/app/vegacamera/controller/TimerShot;)I

    move-result v0

    if-gtz v0, :cond_4

    .line 122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->sendEmptyMessage(I)Z

    .line 129
    :goto_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerCount:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$8(Lcom/pantech/app/vegacamera/controller/TimerShot;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerCount:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$9(Lcom/pantech/app/vegacamera/controller/TimerShot;I)V

    goto/16 :goto_0

    .line 124
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->iTimerCount:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$8(Lcom/pantech/app/vegacamera/controller/TimerShot;)I

    move-result v1

    #calls: Lcom/pantech/app/vegacamera/controller/TimerShot;->_TimerShotDisplayCount(I)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$2(Lcom/pantech/app/vegacamera/controller/TimerShot;I)V

    .line 125
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mHandler:Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$0(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4, v5}, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$3(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    sget v1, Lcom/pantech/app/vegacamera/R$raw;->control_former_1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SoundPlay(Landroid/app/Activity;ILandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$TimerShotHandler;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #calls: Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetCameraLight(ZII)V
    invoke-static {v0, v3, v6, v7}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$4(Lcom/pantech/app/vegacamera/controller/TimerShot;ZII)V

    goto :goto_3

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
