.class Lcom/pantech/app/vegacamera/aot/AOTCameraService$2;
.super Ljava/lang/Object;
.source "AOTCameraService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/aot/AOTCameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$2;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->aot_actionBtn:I

    if-ne v0, v1, :cond_1

    .line 531
    const-string v0, "AOTCamera"

    const-string v1, "[AOTCameraService] [onClick] aot_actionBtn"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 533
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$2;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->access$1(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Lcom/pantech/app/vegacamera/aot/AOTCamera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$2;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mAOTCameraManager:Lcom/pantech/app/vegacamera/aot/AOTCamera;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->access$1(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Lcom/pantech/app/vegacamera/aot/AOTCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/aot/AOTCamera;->onDestroyCamera()V

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$2;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->isFinishing:Z

    .line 538
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$2;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCameraService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->access$2(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 540
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$2;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    #calls: Lcom/pantech/app/vegacamera/aot/AOTCameraService;->startCameraActivity()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->access$3(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)V

    .line 542
    :cond_1
    return-void
.end method
