.class Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;
.super Landroid/os/Handler;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLHandler"
.end annotation


# static fields
.field public static final MSG_ALIGN_FRAME:I = 0x3

.field public static final MSG_INIT_EGL_SYNC:I = 0x0

.field public static final MSG_RELEASE:I = 0x4

.field public static final MSG_SHOW_PREVIEW_FRAME:I = 0x2

.field public static final MSG_SHOW_PREVIEW_FRAME_SYNC:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    .line 69
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 70
    return-void
.end method

.method private doAlignFrame()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$1(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 97
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$1(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$2(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 99
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->setWarping(Z)V

    .line 101
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$2(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->preprocess([F)V

    .line 103
    invoke-static {}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->transferGPUtoCPU()V

    .line 104
    invoke-static {}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->updateMatrix()V

    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #calls: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->draw()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$3(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)V

    .line 106
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$6(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 107
    return-void
.end method

.method private doInitGL()V
    .locals 8

    .prologue
    .line 123
    iget-object v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v2

    check-cast v2, Ljavax/microedition/khronos/egl/EGL10;

    #setter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3, v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$7(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGL10;)V

    .line 124
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    #setter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$8(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 125
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v2, v3, :cond_0

    .line 126
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglGetDisplay failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 129
    .local v1, version:[I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "eglInitialize failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    :cond_1
    const-string v2, "MosaicPreviewRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "EGL version: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v2, 0x3

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    .line 135
    .local v0, attribList:[I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    #calls: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$9(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    #setter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$10(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)V

    .line 136
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$11(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    #setter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$12(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 138
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$13(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$13(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    if-ne v2, v3, :cond_3

    .line 139
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createContext"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$11(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$14(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateWindowSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljava/lang/Object;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    #setter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$15(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 142
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$6(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$6(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v2, v3, :cond_5

    .line 143
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to createWindowSurface"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v4}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$6(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v5}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$6(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v6}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$13(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v6

    invoke-interface {v2, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 147
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "failed to eglMakeCurrent"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-static {}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->init()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    #setter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$16(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)V

    .line 153
    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mWidth:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$17(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)I

    move-result v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mHeight:I
    invoke-static {v3}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$18(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)I

    move-result v3

    iget-object v4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mIsLandscape:Z
    invoke-static {v4}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$19(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->reset(IIZ)V

    .line 154
    return-void

    .line 134
    nop

    :array_0
    .array-data 0x4
        0x98t 0x30t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method private doRelease()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$6(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 158
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$13(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 159
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 160
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 161
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #setter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$15(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)V

    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #setter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$12(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 163
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #setter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v0, v5}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$8(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)V

    .line 164
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$1(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 165
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$20(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 166
    return-void
.end method

.method private doShowPreviewFrame()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$1(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$1(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$2(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 113
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->setWarping(Z)V

    .line 115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mTransformMatrix:[F
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$2(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)[F

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->preprocess([F)V

    .line 116
    invoke-static {}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->updateMatrix()V

    .line 117
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #calls: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->draw()V
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$3(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)V

    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$6(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 119
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    return-void

    .line 76
    :pswitch_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->doInitGL()V

    .line 77
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$0(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 80
    :pswitch_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->doShowPreviewFrame()V

    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$0(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->doShowPreviewFrame()V

    goto :goto_0

    .line 87
    :pswitch_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->doAlignFrame()V

    goto :goto_0

    .line 90
    :pswitch_4
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->doRelease()V

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public sendMessageSync(I)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$0(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 171
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->this$0:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;

    #getter for: Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->access$0(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 173
    return-void
.end method
