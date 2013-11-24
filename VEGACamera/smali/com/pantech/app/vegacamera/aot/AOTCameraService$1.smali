.class Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;
.super Ljava/lang/Object;
.source "AOTCameraService.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChange(FF)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->ResizeWindow(FF)V

    .line 455
    return-void
.end method

.method public onSizeChangeFinish()V
    .locals 2

    .prologue
    .line 467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->setPositionFixing(Z)V

    .line 468
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->access$0(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Lcom/pantech/app/vegacamera/aot/AOTLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->access$0(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Lcom/pantech/app/vegacamera/aot/AOTLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setVisibilityIcon(Z)V

    .line 471
    :cond_0
    return-void
.end method

.method public onSizeChangeStart()V
    .locals 2

    .prologue
    .line 459
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->setPositionFixing(Z)V

    .line 460
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->access$0(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Lcom/pantech/app/vegacamera/aot/AOTLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTCameraService$1;->this$0:Lcom/pantech/app/vegacamera/aot/AOTCameraService;

    #getter for: Lcom/pantech/app/vegacamera/aot/AOTCameraService;->rootCameraLayout:Lcom/pantech/app/vegacamera/aot/AOTLayout;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/aot/AOTCameraService;->access$0(Lcom/pantech/app/vegacamera/aot/AOTCameraService;)Lcom/pantech/app/vegacamera/aot/AOTLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/aot/AOTLayout;->setVisibilityIcon(Z)V

    .line 463
    :cond_0
    return-void
.end method
