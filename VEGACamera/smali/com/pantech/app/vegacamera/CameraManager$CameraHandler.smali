.class Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;
.super Landroid/os/Handler;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/CameraManager;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/CameraManager;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    .line 93
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-nez v2, :cond_0

    .line 284
    :goto_0
    return-void

    .line 102
    :cond_0
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    .line 283
    :goto_1
    :pswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mSig:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$8(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 104
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 105
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$1(Lcom/pantech/app/vegacamera/CameraManager;Landroid/hardware/Camera;)V

    .line 106
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraProxy:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$2(Lcom/pantech/app/vegacamera/CameraManager;Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/RuntimeException;
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 273
    :try_start_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    .line 277
    :goto_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2, v5}, Lcom/pantech/app/vegacamera/CameraManager;->access$1(Lcom/pantech/app/vegacamera/CameraManager;Landroid/hardware/Camera;)V

    .line 278
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mCameraProxy:Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;
    invoke-static {v2, v5}, Lcom/pantech/app/vegacamera/CameraManager;->access$2(Lcom/pantech/app/vegacamera/CameraManager;Lcom/pantech/app/vegacamera/CameraManager$CameraProxy;)V

    .line 280
    :cond_1
    const-string v2, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "RuntimeException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    throw v0

    .line 110
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_2
    :try_start_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$3(Lcom/pantech/app/vegacamera/CameraManager;Ljava/io/IOException;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 112
    :try_start_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->reconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 113
    :catch_1
    move-exception v1

    .line 114
    .local v1, ex:Ljava/io/IOException;
    :try_start_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mReconnectException:Ljava/io/IOException;
    invoke-static {v2, v1}, Lcom/pantech/app/vegacamera/CameraManager;->access$3(Lcom/pantech/app/vegacamera/CameraManager;Ljava/io/IOException;)V

    goto :goto_1

    .line 119
    .end local v1           #ex:Ljava/io/IOException;
    :pswitch_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->unlock()V

    goto :goto_1

    .line 123
    :pswitch_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->lock()V

    goto/16 :goto_1

    .line 127
    :pswitch_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mSetPreviewException:Ljava/io/IOException;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$4(Lcom/pantech/app/vegacamera/CameraManager;Ljava/io/IOException;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 129
    :try_start_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 130
    :catch_2
    move-exception v0

    .line 131
    .local v0, e:Ljava/io/IOException;
    :try_start_7
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mSetPreviewException:Ljava/io/IOException;
    invoke-static {v2, v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$4(Lcom/pantech/app/vegacamera/CameraManager;Ljava/io/IOException;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1

    .line 137
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_6
    :try_start_8
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 138
    :catch_3
    move-exception v0

    .line 139
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_9
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 145
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_7
    :try_start_a
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/SurfaceHolder;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 146
    :catch_4
    move-exception v0

    .line 147
    .restart local v0       #e:Ljava/io/IOException;
    :try_start_b
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 152
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_8
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$5(Lcom/pantech/app/vegacamera/CameraManager;Ljava/lang/RuntimeException;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    .line 154
    :try_start_c
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_1

    .line 155
    :catch_5
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_d
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v2, v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$5(Lcom/pantech/app/vegacamera/CameraManager;Ljava/lang/RuntimeException;)V
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    .line 162
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_9
    :try_start_e
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_0

    .line 163
    :catch_6
    move-exception v0

    .line 164
    .restart local v0       #e:Ljava/lang/RuntimeException;
    :try_start_f
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 169
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_a
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_1

    .line 173
    :pswitch_b
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_1

    .line 177
    :pswitch_c
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto/16 :goto_1

    .line 181
    :pswitch_d
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$5(Lcom/pantech/app/vegacamera/CameraManager;Ljava/lang/RuntimeException;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    .line 183
    :try_start_10
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_1

    .line 184
    :catch_7
    move-exception v0

    .line 185
    .restart local v0       #e:Ljava/lang/RuntimeException;
    :try_start_11
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v2, v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$5(Lcom/pantech/app/vegacamera/CameraManager;Ljava/lang/RuntimeException;)V

    goto/16 :goto_1

    .line 190
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_e
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$5(Lcom/pantech/app/vegacamera/CameraManager;Ljava/lang/RuntimeException;)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    .line 192
    :try_start_12
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_8

    goto/16 :goto_1

    .line 193
    :catch_8
    move-exception v0

    .line 194
    .restart local v0       #e:Ljava/lang/RuntimeException;
    :try_start_13
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mRuntimeException:Ljava/lang/RuntimeException;
    invoke-static {v2, v0}, Lcom/pantech/app/vegacamera/CameraManager;->access$5(Lcom/pantech/app/vegacamera/CameraManager;Ljava/lang/RuntimeException;)V

    goto/16 :goto_1

    .line 199
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_f
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$AutoFocusMoveCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    goto/16 :goto_1

    .line 203
    :pswitch_10
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    goto/16 :goto_1

    .line 207
    :pswitch_11
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$OnZoomChangeListener;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    goto/16 :goto_1

    .line 211
    :pswitch_12
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$FaceDetectionListener;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    goto/16 :goto_1

    .line 215
    :pswitch_13
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->startFaceDetection()V

    goto/16 :goto_1

    .line 219
    :pswitch_14
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopFaceDetection()V

    goto/16 :goto_1

    .line 223
    :pswitch_15
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$ErrorCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_1

    .line 228
    :pswitch_16
    :try_start_14
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_9

    goto/16 :goto_1

    .line 229
    :catch_9
    move-exception v0

    .line 230
    .restart local v0       #e:Ljava/lang/RuntimeException;
    :try_start_15
    const-string v2, "CameraManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "mCamera.setParameters() RuntimeException e="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    goto/16 :goto_1

    .line 236
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_17
    :try_start_16
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$6(Lcom/pantech/app/vegacamera/CameraManager;Landroid/hardware/Camera$Parameters;)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_a

    goto/16 :goto_1

    .line 237
    :catch_a
    move-exception v0

    .line 238
    .restart local v0       #e:Ljava/lang/RuntimeException;
    :try_start_17
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    const/4 v3, 0x0

    #setter for: Lcom/pantech/app/vegacamera/CameraManager;->mParameters:Landroid/hardware/Camera$Parameters;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/CameraManager;->access$6(Lcom/pantech/app/vegacamera/CameraManager;Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_1

    .line 243
    .end local v0           #e:Ljava/lang/RuntimeException;
    :pswitch_18
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_0

    .line 251
    :pswitch_19
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_1

    .line 255
    :pswitch_1a
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v3

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto/16 :goto_1

    .line 259
    :pswitch_1b
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mRecordListener:Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$7(Lcom/pantech/app/vegacamera/CameraManager;)Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;->RecordingStart()V

    goto/16 :goto_1

    .line 263
    :pswitch_1c
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mRecordListener:Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$7(Lcom/pantech/app/vegacamera/CameraManager;)Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/CameraManager$RecordingListener;->RecordingStop()V

    goto/16 :goto_1

    .line 267
    :pswitch_1d
    iget-object v2, p0, Lcom/pantech/app/vegacamera/CameraManager$CameraHandler;->this$0:Lcom/pantech/app/vegacamera/CameraManager;

    #getter for: Lcom/pantech/app/vegacamera/CameraManager;->mCamera:Landroid/hardware/Camera;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/CameraManager;->access$0(Lcom/pantech/app/vegacamera/CameraManager;)Landroid/hardware/Camera;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->stopBurstShot(I)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_1

    .line 274
    .restart local v0       #e:Ljava/lang/RuntimeException;
    :catch_b
    move-exception v1

    .line 275
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "CameraManager"

    const-string v3, "Fail to release the camera."

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
    .end packed-switch
.end method
