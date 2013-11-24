.class Lcom/pantech/app/vegacamera/Panorama$6;
.super Ljava/lang/Object;
.source "Panorama.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/panorama/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/Panorama;->_StartCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Panorama;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Panorama;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Panorama$6;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 6
    .parameter "isFinished"
    .parameter "panningRateX"
    .parameter "panningRateY"
    .parameter "progressX"
    .parameter "progressY"

    .prologue
    const/high16 v5, 0x4320

    .line 961
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$6;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->fHorizontalViewAngle:F
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$32(Lcom/pantech/app/vegacamera/Panorama;)F

    move-result v0

    mul-float v3, p4, v0

    .line 962
    .local v3, accumulatedHorizontalAngle:F
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$6;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->fVerticalViewAngle:F
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$33(Lcom/pantech/app/vegacamera/Panorama;)F

    move-result v0

    mul-float v4, p5, v0

    .line 963
    .local v4, accumulatedVerticalAngle:F
    if-nez p1, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-gez v0, :cond_0

    .line 964
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v5

    if-ltz v0, :cond_1

    .line 965
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$6;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    const/4 v5, 0x0

    #calls: Lcom/pantech/app/vegacamera/Panorama;->_StopCapture(Z)V
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/Panorama;->access$34(Lcom/pantech/app/vegacamera/Panorama;Z)V

    .line 966
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$6;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #calls: Lcom/pantech/app/vegacamera/Panorama;->GetLayoutControlObject()Lcom/pantech/app/vegacamera/operator/ILayoutControl;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$12(Lcom/pantech/app/vegacamera/Panorama;)Lcom/pantech/app/vegacamera/operator/ILayoutControl;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/operator/ILayoutControl;->SetPreviewLayout()V

    .line 973
    :goto_0
    return-void

    .line 968
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$6;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->fHorizontalViewAngle:F
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$32(Lcom/pantech/app/vegacamera/Panorama;)F

    move-result v0

    mul-float v1, p2, v0

    .line 969
    .local v1, panningRateXInDegree:F
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$6;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    #getter for: Lcom/pantech/app/vegacamera/Panorama;->fVerticalViewAngle:F
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Panorama;->access$33(Lcom/pantech/app/vegacamera/Panorama;)F

    move-result v0

    mul-float v2, p3, v0

    .line 970
    .local v2, panningRateYInDegree:F
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Panorama$6;->this$0:Lcom/pantech/app/vegacamera/Panorama;

    .line 971
    const/4 v5, 0x1

    .line 970
    #calls: Lcom/pantech/app/vegacamera/Panorama;->_UpdateProgress(FFFFZ)V
    invoke-static/range {v0 .. v5}, Lcom/pantech/app/vegacamera/Panorama;->access$35(Lcom/pantech/app/vegacamera/Panorama;FFFFZ)V

    goto :goto_0
.end method
