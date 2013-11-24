.class Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;
.super Ljava/lang/Object;
.source "ShutterTimer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/ShutterTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutterAnimationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 541
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;-><init>(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 549
    const-string v0, "ShutterTimer"

    const-string v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$12(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 551
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    const/4 v1, 0x4

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iState:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$4(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V

    .line 552
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #calls: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->_ResetTimerMode()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$6(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)V

    .line 553
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    #getter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->mMainHandler:Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$0(Lcom/pantech/app/vegacamera/controller/ShutterTimer;)Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer$MainHandler;->sendEmptyMessage(I)Z

    .line 554
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/ShutterTimer$ShutterAnimationListener;->this$0:Lcom/pantech/app/vegacamera/controller/ShutterTimer;

    const/4 v1, -0x1

    #setter for: Lcom/pantech/app/vegacamera/controller/ShutterTimer;->iLastTimerCount:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/ShutterTimer;->access$13(Lcom/pantech/app/vegacamera/controller/ShutterTimer;I)V

    .line 556
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 560
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 545
    return-void
.end method
