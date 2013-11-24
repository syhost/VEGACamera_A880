.class Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;
.super Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "root"

    .prologue
    .line 345
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    .line 346
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    .line 347
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 351
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 440
    new-instance v2, Ljava/lang/AssertionError;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(I)V

    throw v2

    .line 354
    :pswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mGestureRecognizer:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$0(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->cancelScale()V

    .line 355
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setExtraScalingRange(Z)V

    .line 356
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v2, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$2(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Z)V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 361
    :pswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchFocus()V
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$3(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V

    goto :goto_0

    .line 368
    :pswitch_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    iget v3, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->captureAnimationDone(I)V
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$4(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    goto :goto_0

    .line 375
    :pswitch_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$5(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    move-result-object v5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/Path;

    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v5, v2, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onDeleteImage(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V

    .line 385
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 386
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    const-wide/16 v5, 0x7d0

    invoke-virtual {v2, v0, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 389
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$7(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v2

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$8(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v5

    sub-int/2addr v2, v5

    add-int/lit8 v1, v2, 0x1

    .line 390
    .local v1, numberOfPictures:I
    if-ne v1, v7, :cond_2

    .line 391
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v2

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$7(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isCamera(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v2

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I
    invoke-static {v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$8(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v5

    invoke-interface {v2, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isCamera(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 395
    :cond_2
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    if-gt v1, v3, :cond_3

    move v2, v3

    :goto_1
    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showUndoBar(Z)V
    invoke-static {v5, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$10(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Z)V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    .line 400
    .end local v0           #m:Landroid/os/Message;
    .end local v1           #numberOfPictures:I
    :pswitch_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I

    move-result v3

    and-int/lit8 v3, v3, -0x5

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$12(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 402
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->snapback()V
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$13(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V

    goto/16 :goto_0

    .line 408
    :pswitch_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v2, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$14(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    goto/16 :goto_0

    .line 413
    :pswitch_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    const/16 v3, 0x8

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->checkHideUndoBar(I)V
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$14(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    goto/16 :goto_0

    .line 418
    :pswitch_7
    const-string v2, "PhotoView"

    const-string v3, "MSG_QUICK_VIEW_TIMEOUT"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 420
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #setter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I
    invoke-static {v2, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$15(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    .line 421
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToFirstImage()V
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$16(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V

    goto/16 :goto_0

    .line 425
    :pswitch_8
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 427
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->moveTo(I)V

    .line 428
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    goto/16 :goto_0

    .line 433
    :pswitch_9
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    #getter for: Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 434
    const-string v2, "PhotoView"

    const-string v3, "MSG_SET_FILM_MODE setFilmMode false"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;->this$0:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    invoke-virtual {v2, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    goto/16 :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
