.class public Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CameraProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/CameraManager;


# direct methods
.method private constructor <init>(Lcom/pantech/app/vegacamera/CameraManager;)V
    .locals 1
    .parameter

    .prologue
    .line 306
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {p1}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/util/Util;->Assert(Z)V

    .line 308
    return-void

    .line 307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/pantech/app/vegacamera/CameraManager;Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;-><init>(Lcom/pantech/app/vegacamera/CameraManager;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)Lcom/pantech/app/vegacamera/CameraManager;
    .locals 1
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    return-object v0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 2
    .parameter "callbackBuffer"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 386
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 387
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 388
    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .parameter "cb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 391
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 392
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 393
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 394
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$12(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/lang/RuntimeException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$12(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 397
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 401
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 402
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 403
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$12(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/lang/RuntimeException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$12(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 406
    :cond_0
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 479
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 480
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 481
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$13(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lock()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 337
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 338
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 339
    return-void
.end method

.method public reconnect()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 321
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 322
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 323
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 324
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$10(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$10(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 327
    :cond_0
    return-void
.end method

.method public recordingStart()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 516
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 517
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 518
    return-void
.end method

.method public recordingStop()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 522
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 523
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 524
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 316
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 317
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 318
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 410
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 411
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 412
    return-void
.end method

.method public setDisplayOrientation(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 430
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 431
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 432
    return-void
.end method

.method public setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 459
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 460
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 464
    return-void
.end method

.method public setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 442
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 443
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 444
    return-void
.end method

.method public setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 491
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 492
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 493
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 494
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 468
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 469
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 470
    return-void
.end method

.method public setParametersAsync(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .parameter "params"

    .prologue
    const/16 v1, 0x15

    .line 473
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 474
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 475
    return-void
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 498
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 499
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 500
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 379
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 380
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 381
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 382
    return-void
.end method

.method public setPreviewDisplayAsync(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "surfaceHolder"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 357
    return-void
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 342
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 343
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 344
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 345
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSetPreviewException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$11(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSetPreviewException:Ljava/io/IOException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$11(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 348
    :cond_0
    return-void
.end method

.method public setPreviewTextureAsync(Landroid/graphics/SurfaceTexture;)V
    .locals 2
    .parameter "surfaceTexture"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 353
    return-void
.end method

.method public setRecordingListener(Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mRecordListener:Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;
    invoke-static {v0, p1}, Lcom/pantech/app/vegacamera/CameraManager;->access$14(Lcom/pantech/app/vegacamera/CameraManager;Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;)V

    .line 512
    return-void
.end method

.method public setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 436
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 437
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 438
    return-void
.end method

.method public startFaceDetection()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 448
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 450
    return-void
.end method

.method public startPreview()V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 361
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 363
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$12(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/lang/RuntimeException;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$12(Lcom/pantech/app/vegacamera/CameraManager;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 366
    :cond_0
    return-void
.end method

.method public startPreviewAsync()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 370
    return-void
.end method

.method public startSmoothZoom(I)V
    .locals 0
    .parameter "val"

    .prologue
    .line 508
    return-void
.end method

.method public stopBurstShot(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 528
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 529
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 530
    return-void
.end method

.method public stopFaceDetection()V
    .locals 2

    .prologue
    .line 453
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 454
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 455
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 456
    return-void
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 374
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 375
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 376
    return-void
.end method

.method public stopSmoothZoom()V
    .locals 0

    .prologue
    .line 504
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 7
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 418
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy$1;-><init>(Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 425
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 426
    return-void
.end method

.method public unlock()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 331
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 332
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 333
    return-void
.end method

.method public waitForIdle()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 486
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$9(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 487
    iget-object v0, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 488
    return-void
.end method
