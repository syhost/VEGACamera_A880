.class Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

.field private final synthetic val$jpeg:Landroid/hardware/Camera$PictureCallback;

.field private final synthetic val$postview:Landroid/hardware/Camera$PictureCallback;

.field private final synthetic val$raw:Landroid/hardware/Camera$PictureCallback;

.field private final synthetic val$shutter:Landroid/hardware/Camera$ShutterCallback;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->this$1:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    iput-object p2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iput-object p3, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iput-object p4, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->val$postview:Landroid/hardware/Camera$PictureCallback;

    iput-object p5, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 421
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->this$1:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->access$1(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)Lcom/pantech/app/vegacamera/CameraManager;

    move-result-object v0

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->val$shutter:Landroid/hardware/Camera$ShutterCallback;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->val$raw:Landroid/hardware/Camera$PictureCallback;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->val$postview:Landroid/hardware/Camera$PictureCallback;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->val$jpeg:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 422
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;->this$1:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->access$1(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)Lcom/pantech/app/vegacamera/CameraManager;

    move-result-object v0

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 423
    return-void
.end method
