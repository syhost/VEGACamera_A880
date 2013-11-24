.class Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;
.super Ljava/lang/Object;
.source "FocusContainer.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/controller/FocusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/controller/FocusContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyFocusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/controller/FocusContainer;Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;-><init>(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V

    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->AutoFocus()V

    .line 490
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mFocusIndicatorView:Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$1(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/ui/FocusIndicatorView;->switchResource(Z)V

    .line 495
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->CancelAutoFocus()V

    .line 498
    :cond_0
    return-void
.end method

.method public cancelFocusLock()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    const/4 v1, 0x0

    #calls: Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetFocusLock(Z)V
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$4(Lcom/pantech/app/vegacamera/controller/FocusContainer;Z)V

    .line 549
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->Capture()Z

    .line 504
    const/4 v0, 0x1

    .line 506
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColorExtractionParameters()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->SetColorExtractionParameters()V

    .line 542
    :cond_0
    return-void
.end method

.method public setExposureParameters()V
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #calls: Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetMeteringArea()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$3(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V

    .line 532
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->SetExposureParameters()V

    .line 535
    :cond_0
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #calls: Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetFocusArea()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$2(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V

    .line 522
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #calls: Lcom/pantech/app/vegacamera/controller/FocusContainer;->SetMeteringArea()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$3(Lcom/pantech/app/vegacamera/controller/FocusContainer;)V

    .line 523
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->checkNull(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    #getter for: Lcom/pantech/app/vegacamera/controller/FocusContainer;->mListener:Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->access$0(Lcom/pantech/app/vegacamera/controller/FocusContainer;)Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer$FocusListener;->SetFocusParameters()V

    .line 526
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->StartFaceDetection()V

    .line 512
    return-void
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/pantech/app/vegacamera/controller/FocusContainer$MyFocusListener;->this$0:Lcom/pantech/app/vegacamera/controller/FocusContainer;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/controller/FocusContainer;->StopFaceDetection()V

    .line 517
    return-void
.end method
