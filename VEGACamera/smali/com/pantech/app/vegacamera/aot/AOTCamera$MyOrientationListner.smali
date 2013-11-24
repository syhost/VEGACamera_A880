.class Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;
.super Landroid/view/OrientationEventListener;
.source "AOTCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 994
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    .line 995
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 996
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    .line 1000
    const/4 v3, -0x1

    if-ne p1, v3, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientation:I
    invoke-static {v4}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$21(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v4

    invoke-static {p1, v4}, Lcom/pantech/app/vegacamera/util/Util;->RoundOrientation(II)I

    move-result v4

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientation:I
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$38(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    .line 1005
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mAOTCameraService:Lcom/pantech/app/vegacamera/aot/AOTCameraService;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$15(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->getDisplayRotation()I

    move-result v1

    .line 1006
    .local v1, displayRotation:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientation:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$21(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v3

    add-int v2, v3, v1

    .line 1012
    .local v2, orientationCompensation:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDisplayRotation:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$39(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 1013
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDisplayRotation:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$39(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v3

    sub-int v0, v3, v1

    .line 1014
    .local v0, changed:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_2

    .line 1016
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->restartPreview()V

    .line 1018
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mDisplayRotation:I
    invoke-static {v3, v1}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$40(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    .line 1021
    .end local v0           #changed:I
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationCompensation:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$41(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v3

    if-eq v3, v2, :cond_0

    .line 1022
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #setter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mOrientationCompensation:I
    invoke-static {v3, v2}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$42(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    .line 1023
    iget-object v3, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$MyOrientationListner;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->setOrientationIcon(I)V
    invoke-static {v3, v2}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$43(Lcom/pantech/app/vegacamera/aot/AOTCamera;I)V

    goto :goto_0
.end method
