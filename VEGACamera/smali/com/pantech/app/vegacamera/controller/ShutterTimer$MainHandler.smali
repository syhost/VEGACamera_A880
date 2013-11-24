.class Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;
.super Landroid/os/Handler;
.source "ShutterTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/ShutterTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;-><init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x5

    const/4 v5, 0x3

    .line 82
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 148
    :goto_0
    :pswitch_0
    return-void

    .line 84
    :pswitch_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$0(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 86
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 87
    .local v0, rawX:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ShutterIconMoving(I)V
    invoke-static {v4, v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$1(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V

    .line 88
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_TimerLineMoving(I)V
    invoke-static {v4, v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$2(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V

    .line 89
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_SetRotateTimerDegree(I)V
    invoke-static {v4, v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$3(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V

    .line 93
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    const/4 v5, 0x2

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$4(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V

    goto :goto_0

    .line 100
    .end local v0           #rawX:I
    :pswitch_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$0(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(I)V

    .line 102
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 103
    .local v3, x:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 106
    .local v1, shutterLeft:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_SetTimerCount(I)I
    invoke-static {v4, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$5(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)I

    move-result v2

    .line 107
    .local v2, timerCount:I
    if-gtz v2, :cond_0

    .line 108
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetTimerMode()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$6(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V

    goto :goto_0

    .line 111
    :cond_0
    if-lez v2, :cond_1

    if-ge v2, v5, :cond_1

    .line 112
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetTimerMode()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$6(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V

    goto :goto_0

    .line 114
    :cond_1
    if-lt v2, v5, :cond_3

    if-ge v2, v6, :cond_3

    .line 115
    const/4 v2, 0x3

    .line 121
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mListener:Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$7(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$OnTimerActionListener;->OnTimerAnimationStart(I)V

    .line 123
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_StartTimerShotAnimation(III)V
    invoke-static {v4, v2, v3, v3}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$8(Lcom/pantech/app/vegacamera/controller/ShutterTimer;III)V

    .line 124
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I
    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$4(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V

    goto :goto_0

    .line 116
    :cond_3
    if-lt v2, v6, :cond_4

    if-ge v2, v7, :cond_4

    .line 117
    const/4 v2, 0x5

    .line 118
    goto :goto_1

    :cond_4
    if-ne v2, v7, :cond_2

    .line 119
    const/16 v2, 0xa

    goto :goto_1

    .line 135
    .end local v1           #shutterLeft:I
    .end local v2           #timerCount:I
    .end local v3           #x:I
    :pswitch_3
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_SetTimerLayout()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$9(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V

    goto :goto_0

    .line 139
    :pswitch_4
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetTimerLayout()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$10(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V

    goto :goto_0

    .line 143
    :pswitch_5
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$0(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->removeMessages(I)V

    .line 144
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetRelatedAnimation()V
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$11(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V

    goto/16 :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
