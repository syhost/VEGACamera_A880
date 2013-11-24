.class Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Camera;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/Camera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 547
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    .line 548
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 549
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 553
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->bLowBattery:Z
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Camera;->access$3(Lcom/pantech/app/vegacamera/Camera;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->iOrientation:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Camera;->access$4(Lcom/pantech/app/vegacamera/Camera;)I

    move-result v2

    invoke-static {p1, v2}, Lcom/pantech/app/vegacamera/util/Util;->RoundOrientation(II)I

    move-result v2

    #setter for: Lcom/pantech/app/vegacamera/Camera;->iOrientation:I
    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/Camera;->access$5(Lcom/pantech/app/vegacamera/Camera;I)V

    .line 565
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->iOrientation:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Camera;->access$4(Lcom/pantech/app/vegacamera/Camera;)I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    invoke-static {v2}, Lcom/pantech/app/vegacamera/util/Util;->GetDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 567
    .local v0, orientationCompensation:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->SetToastDegree(I)V

    .line 570
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->iOrientationCompensation:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Camera;->access$6(Lcom/pantech/app/vegacamera/Camera;)I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 571
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #setter for: Lcom/pantech/app/vegacamera/Camera;->iOrientationCompensation:I
    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/Camera;->access$7(Lcom/pantech/app/vegacamera/Camera;I)V

    .line 572
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->iOrientationCompensation:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/Camera;->access$6(Lcom/pantech/app/vegacamera/Camera;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/Util;->SetOrientation(Landroid/app/Activity;I)V

    .line 575
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera$MyOrientationEventListener;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->mCurrentModule:Lcom/pantech/app/vegacamera/operator/ICamera;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/Camera;->access$8(Lcom/pantech/app/vegacamera/Camera;)Lcom/pantech/app/vegacamera/operator/ICamera;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/pantech/app/vegacamera/operator/ICamera;->OnOrientationChanged(I)V

    goto :goto_0
.end method
