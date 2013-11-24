.class public Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;
.super Ljava/lang/Object;
.source "MosaicPreviewRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I = null

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MosaicPreviewRenderer"


# instance fields
.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglHandler:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mHeight:I

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mIsLandscape:Z

.field private mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mTransformMatrix:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 222
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    .line 223
    return-void

    .line 222
    :array_0
    .array-data 0x4
        0x40t 0x30t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x24t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x23t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x22t 0x30t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;IIZ)V
    .locals 2
    .parameter "tex"
    .parameter "w"
    .parameter "h"
    .parameter "isLandscape"

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 45
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mTransformMatrix:[F

    .line 47
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 177
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 178
    iput p2, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mWidth:I

    .line 179
    iput p3, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mHeight:I

    .line 180
    iput-boolean p4, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mIsLandscape:Z

    .line 181
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PanoramaRealtimeRenderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 183
    new-instance v0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;-><init>(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglHandler:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;

    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglHandler:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 189
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mMosaicOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mWidth:I

    return v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)I
    .locals 1
    .parameter

    .prologue
    .line 40
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mHeight:I

    return v0
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Z
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)[F
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Landroid/os/HandlerThread;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->draw()V

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-void
.end method

.method static synthetic access$9(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 225
    invoke-static {p0, p1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 226
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 227
    .local v5, numConfig:[I
    sget-object v2, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    aget v10, v5, v4

    .line 232
    .local v10, numConfigs:I
    if-gtz v10, :cond_1

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 237
    .local v9, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v8, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->CONFIG_SPEC:[I

    move-object v6, p0

    move-object v7, p1

    move-object v11, v5

    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private draw()V
    .locals 0

    .prologue
    .line 212
    invoke-static {}, Lcom/pantech/app/vegacamera/panorama/MosaicRenderer;->step()V

    .line 213
    return-void
.end method


# virtual methods
.method public alignFrame()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglHandler:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglHandler:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 193
    return-void
.end method

.method public showPreviewFrame()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglHandler:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 201
    return-void
.end method

.method public showPreviewFrameSync()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer;->mEglHandler:Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/panorama/MosaicPreviewRenderer$EGLHandler;->sendMessageSync(I)V

    .line 197
    return-void
.end method
