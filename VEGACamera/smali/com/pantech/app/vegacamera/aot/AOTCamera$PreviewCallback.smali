.class final Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;
.super Ljava/lang/Object;
.source "AOTCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PreviewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 776
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;-><init>(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2
    .parameter "data"
    .parameter "camera"

    .prologue
    .line 779
    invoke-static {}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[AOTCamera]onPreviewFrame"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->invisibleReviewImage()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$8(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    .line 781
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->visibleMainLayout()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$9(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    .line 783
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/aot/AOTCamera;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mStatus:I
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$10(Lcom/pantech/app/vegacamera/aot/AOTCamera;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCamera;->mPausing:Z
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$11(Lcom/pantech/app/vegacamera/aot/AOTCamera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCamera$PreviewCallback;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCamera;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCamera;->autoFocus()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->access$12(Lcom/pantech/app/vegacamera/aot/AOTCamera;)V

    .line 786
    :cond_0
    return-void
.end method
