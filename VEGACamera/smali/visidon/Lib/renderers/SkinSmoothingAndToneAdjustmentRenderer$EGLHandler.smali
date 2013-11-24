.class Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;
.super Landroid/os/Handler;
.source "SkinSmoothingAndToneAdjustmentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLHandler"
.end annotation


# static fields
.field public static final MSG_DOPROCESSING_FRAME:I = 0x1

.field public static final MSG_INIT_EGL_SYNC:I = 0x0

.field public static final MSG_RELEASE:I = 0x2


# instance fields
.field final synthetic this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;


# direct methods
.method public constructor <init>(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 90
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    .line 91
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 92
    return-void
.end method

.method private doInitGL()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3, v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$8(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 142
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$9(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 143
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v0

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v0, v3, :cond_0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    new-array v7, v10, [I

    .line 147
    .local v7, version:[I
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    invoke-interface {v0, v3, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    const-string v0, "BeautificationRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EGL version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v4, v7, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v7, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x3

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 153
    .local v6, attribList:[I
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    #calls: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v3, v4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$10(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v0, v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$11(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 154
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$12(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    sget-object v8, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v8, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0, v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$13(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 157
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$14(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$14(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v0, v3, :cond_3

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to createContext"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_3
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    .line 161
    iget-object v4, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$12(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    iget-object v8, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mFilterOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v8}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$15(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v8

    .line 160
    invoke-interface {v3, v4, v5, v8, v11}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0, v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$16(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 162
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$7(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$7(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v0, v3, :cond_5

    .line 163
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to createWindowSurface"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_5
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$7(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v5, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v5}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$7(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    iget-object v8, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v8}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$14(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v8

    invoke-interface {v0, v3, v4, v5, v8}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "failed to eglMakeCurrent"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_6
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    new-instance v3, Lvisidon/Lib/utils/FrameBuffer;

    iget-object v4, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mWidth:I
    invoke-static {v4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$17(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I

    move-result v4

    iget-object v5, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mHeight:I
    invoke-static {v5}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$18(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I

    move-result v5

    invoke-direct {v3, v4, v5, v9}, Lvisidon/Lib/utils/FrameBuffer;-><init>(III)V

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mExternalFBO:Lvisidon/Lib/utils/FrameBuffer;
    invoke-static {v0, v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$19(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Lvisidon/Lib/utils/FrameBuffer;)V

    .line 180
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mExternalFBO:Lvisidon/Lib/utils/FrameBuffer;
    invoke-static {v4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$20(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/utils/FrameBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Lvisidon/Lib/utils/FrameBuffer;->getTexture(I)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0, v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$21(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Landroid/graphics/SurfaceTexture;)V

    .line 185
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    new-instance v3, Lvisidon/Lib/filtergroups/ColorAndSmooth;

    invoke-direct {v3}, Lvisidon/Lib/filtergroups/ColorAndSmooth;-><init>()V

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;
    invoke-static {v0, v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$22(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Lvisidon/Lib/filtergroups/ColorAndSmooth;)V

    .line 191
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$3(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/filtergroups/ColorAndSmooth;

    move-result-object v0

    invoke-virtual {v0, v11}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->initializeShaders(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$3(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/filtergroups/ColorAndSmooth;

    move-result-object v0

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mExternalFBO:Lvisidon/Lib/utils/FrameBuffer;
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$20(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/utils/FrameBuffer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lvisidon/Lib/utils/FrameBuffer;->getTexture(I)I

    move-result v3

    invoke-virtual {v0, v3, v1}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->setInputTextureId(II)V

    .line 203
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$3(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/filtergroups/ColorAndSmooth;

    move-result-object v0

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mWidth:I
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$17(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I

    move-result v3

    iget-object v4, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mHeight:I
    invoke-static {v4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$18(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I

    move-result v4

    invoke-virtual {v0, v3, v4, v10}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->initializeFrameBuffers(III)V

    .line 208
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$3(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/filtergroups/ColorAndSmooth;

    move-result-object v0

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinSmoothingStrength:I
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$23(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I

    move-result v3

    invoke-virtual {v0, v3}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->setFilterStrength(I)V

    .line 209
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$3(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/filtergroups/ColorAndSmooth;

    move-result-object v0

    iget-object v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinToneAdjustmentStrength:I
    invoke-static {v3}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$24(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I

    move-result v3

    invoke-virtual {v0, v3}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->setSecondaryFilterStrength(I)V

    .line 214
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mOrientationM:[F
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$4(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)[F

    move-result-object v0

    const/high16 v5, 0x3f80

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 215
    return-void

    .line 152
    nop

    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private doProcessing()V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$1(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 121
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$1(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$2(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 129
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$3(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/filtergroups/ColorAndSmooth;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$2(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->setTransformationMatrix([F)V

    .line 130
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$3(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/filtergroups/ColorAndSmooth;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mOrientationM:[F
    invoke-static {v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$4(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->setOrientationMatrix([F)V

    .line 134
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$3(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/filtergroups/ColorAndSmooth;

    move-result-object v0

    invoke-virtual {v0}, Lvisidon/Lib/filtergroups/ColorAndSmooth;->render()V

    .line 136
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$7(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 137
    return-void
.end method

.method private doRelease()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 218
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$7(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 219
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$14(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 220
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 221
    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    .line 220
    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 222
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 223
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0, v5}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$16(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 224
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0, v5}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$13(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 225
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #setter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v5}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$9(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 226
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$1(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 227
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$25(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 228
    return-void
.end method

.method private releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter "st"

    .prologue
    .line 231
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 232
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 96
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 99
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->doInitGL()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_1
    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$0(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    invoke-direct {p0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->doProcessing()V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-direct {p0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->doRelease()V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 235
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$0(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 236
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglHandler:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$26(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 237
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->this$0:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;

    #getter for: Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->access$0(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 238
    return-void
.end method
