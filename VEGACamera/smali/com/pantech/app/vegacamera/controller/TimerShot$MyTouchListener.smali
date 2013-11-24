.class Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;
.super Ljava/lang/Object;
.source "TimerShot.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/TimerShot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTouchListener"
.end annotation


# instance fields
.field private _IsBeenTouchDown:Z

.field private _Moved:Z

.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/controller/TimerShot;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 459
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_IsBeenTouchDown:Z

    .line 461
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_Moved:Z

    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_Moved:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 465
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$3(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$3(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v4

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/data/AppData;->GetDeviceState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    .line 466
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$3(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v4

    iget-boolean v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->bIsGoingToQuickView:Z

    if-eqz v4, :cond_3

    :cond_1
    move v2, v3

    .line 514
    :cond_2
    :goto_0
    return v2

    .line 469
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 470
    .local v1, x:I
    const/4 v0, 0x0

    .line 471
    .local v0, isShutterLongPressed:Z
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$10(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterButton;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 472
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$10(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isLongPressed()Z

    move-result v0

    .line 474
    :cond_4
    const-string v4, "TimerShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ShutterTouch] onTouch x = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    .line 485
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_IsBeenTouchDown:Z

    .line 488
    :cond_5
    if-gtz v1, :cond_6

    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_IsBeenTouchDown:Z

    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    .line 489
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_Moved:Z

    if-nez v4, :cond_6

    .line 490
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$3(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v4

    iget-object v4, v4, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mAppData:Lcom/pantech/app/vegacamera/data/AppData;

    invoke-virtual {v4, v3}, Lcom/pantech/app/vegacamera/data/AppData;->SetShutterTimerActionStarted(Z)V

    .line 491
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$11(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->SetShutterTimerLayout()Z

    move-result v4

    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_Moved:Z

    .line 492
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$10(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterButton;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 496
    :cond_6
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_Moved:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$10(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->isFocused()Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v0, :cond_7

    .line 497
    const-string v4, "TimerShot"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[ShutterTouch] onTouch x = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " operate action"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v4, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$11(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->OperateShutterTimerAction(Landroid/view/MotionEvent;)V

    .line 501
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 502
    const-string v3, "TimerShot"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onTouch action up shutterMove = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_Moved:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_IsBeenTouchDown:Z

    .line 504
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLayout:Lcom/pantech/app/vegacamera/controller/LayoutControl;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$3(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/LayoutControl;

    move-result-object v3

    iget-object v3, v3, Lcom/pantech/app/vegacamera/controller/LayoutControl;->mActivity:Lcom/pantech/app/vegacamera/ActivityBase;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/ActivityBase;->IsInCameraApp()Z

    move-result v3

    if-nez v3, :cond_8

    .line 505
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_Moved:Z

    .line 506
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->TimerShotCancel()V

    .line 508
    :cond_8
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->_Moved:Z

    if-eqz v3, :cond_2

    if-nez v0, :cond_2

    .line 509
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #calls: Lcom/pantech/app/vegacamera/controller/TimerShot;->_SetShutterTouchListener(Z)V
    invoke-static {v3, v2}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$7(Lcom/pantech/app/vegacamera/controller/TimerShot;Z)V

    .line 510
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mLocalShutterButton:Lcom/pantech/app/vegacamera/controller/ShutterButton;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$10(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterButton;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/controller/ShutterButton;->setEnabled(Z)V

    .line 511
    iget-object v3, p0, Lcom/pantech/app/vegacamera/controller/TimerShot$MyTouchListener;->this$0:Lcom/pantech/app/vegacamera/controller/TimerShot;

    #getter for: Lcom/pantech/app/vegacamera/controller/TimerShot;->mShutterTimer:Lcom/pantech/app/vegacamera/controller/ShutterTimer;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/controller/TimerShot;->access$11(Lcom/pantech/app/vegacamera/controller/TimerShot;)Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->StartShutterTimerShot(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0
.end method
