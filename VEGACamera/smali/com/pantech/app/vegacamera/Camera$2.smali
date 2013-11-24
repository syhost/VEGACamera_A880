.class Lcom/pantech/app/vegacamera/Camera$2;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/Camera;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/Camera$2;->this$0:Lcom/pantech/app/vegacamera/Camera;

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 712
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera$2;->this$0:Lcom/pantech/app/vegacamera/Camera;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/Camera$2;->this$0:Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/Camera;->GetCameraScreenNail()Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    #setter for: Lcom/pantech/app/vegacamera/Camera;->mModuleChangeAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/Camera;->access$1(Lcom/pantech/app/vegacamera/Camera;Landroid/animation/ObjectAnimator;)V

    .line 713
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera$2;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->mModuleChangeAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Camera;->access$2(Lcom/pantech/app/vegacamera/Camera;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 714
    iget-object v0, p0, Lcom/pantech/app/vegacamera/Camera$2;->this$0:Lcom/pantech/app/vegacamera/Camera;

    #getter for: Lcom/pantech/app/vegacamera/Camera;->mModuleChangeAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/Camera;->access$2(Lcom/pantech/app/vegacamera/Camera;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 715
    return-void

    .line 712
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
