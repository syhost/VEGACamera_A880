.class public Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;
.super Ljava/lang/Object;
.source "SkinSmoothingAndToneAdjustmentRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;
    }
.end annotation


# static fields
.field private static final CONFIG_SPEC:[I = null

.field private static final DEBUG:Z = false

.field private static final DEFAULT_SKIN_SMOOTHING_STRENGTH:I = 0x28

.field private static final DEFAULT_SKIN_TONE_ADJUSTMENT_STRENGTH:I = 0x46

.field private static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BeautificationRenderer"


# instance fields
.field private mCurrentSkinSmoothingStrength:I

.field private mCurrentSkinToneAdjustmentStrength:I

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglHandler:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field private mEglThread:Landroid/os/HandlerThread;

.field private mEglThreadBlockVar:Landroid/os/ConditionVariable;

.field private mExternalFBO:Lvisidon/Lib/utils/FrameBuffer;

.field private mFilterOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mHeight:I

.field private mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mMirrored:Z

.field private final mOrientationM:[F

.field private mRotation:I

.field private mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;

.field private final mTransformMatrix:[F

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 347
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->CONFIG_SPEC:[I

    .line 50
    return-void

    .line 347
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

.method public constructor <init>(Landroid/graphics/SurfaceTexture;IIIZ)V
    .locals 5
    .parameter "tex"
    .parameter "w"
    .parameter "h"
    .parameter "rotation"
    .parameter "mirrored"

    .prologue
    const/16 v4, 0x46

    const/16 v3, 0x28

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mRotation:I

    .line 59
    iput-boolean v2, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mMirrored:Z

    .line 60
    new-array v0, v1, [F

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mTransformMatrix:[F

    .line 61
    new-array v0, v1, [F

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mOrientationM:[F

    .line 62
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 82
    iput v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinSmoothingStrength:I

    .line 83
    iput v4, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinToneAdjustmentStrength:I

    .line 252
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mFilterOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 253
    iput p2, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mWidth:I

    .line 254
    iput p3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mHeight:I

    .line 255
    iput v3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinSmoothingStrength:I

    .line 256
    iput v4, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinToneAdjustmentStrength:I

    .line 257
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SkinSmoothingAndToneAdjustmentRenderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThread:Landroid/os/HandlerThread;

    .line 258
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance v0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;-><init>(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Landroid/os/Looper;)V

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglHandler:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    .line 261
    invoke-direct {p0, p4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->setCameraRotation(I)V

    .line 262
    invoke-direct {p0, p5}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->setMirrored(Z)V

    .line 268
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglHandler:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    invoke-virtual {v0, v2}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->sendMessageSync(I)V

    .line 269
    return-void
.end method

.method public constructor <init>(Landroid/graphics/SurfaceTexture;IIIZII)V
    .locals 3
    .parameter "tex"
    .parameter "w"
    .parameter "h"
    .parameter "rotation"
    .parameter "mirrored"
    .parameter "skinSmoothingStrength"
    .parameter "skinToneAdjustmentStrength"

    .prologue
    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v2, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mRotation:I

    .line 59
    iput-boolean v2, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mMirrored:Z

    .line 60
    new-array v0, v1, [F

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mTransformMatrix:[F

    .line 61
    new-array v0, v1, [F

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mOrientationM:[F

    .line 62
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    .line 82
    const/16 v0, 0x28

    iput v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinSmoothingStrength:I

    .line 83
    const/16 v0, 0x46

    iput v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinToneAdjustmentStrength:I

    .line 283
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mFilterOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 284
    iput p2, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mWidth:I

    .line 285
    iput p3, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mHeight:I

    .line 286
    iput p6, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinSmoothingStrength:I

    .line 287
    iput p7, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinToneAdjustmentStrength:I

    .line 288
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SkinSmoothingAndToneAdjustmentRenderer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThread:Landroid/os/HandlerThread;

    .line 289
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 290
    new-instance v0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    iget-object v1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;-><init>(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Landroid/os/Looper;)V

    iput-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglHandler:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    .line 292
    invoke-direct {p0, p4}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->setCameraRotation(I)V

    .line 293
    invoke-direct {p0, p5}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->setMirrored(Z)V

    .line 299
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglHandler:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    invoke-virtual {v0, v2}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->sendMessageSync(I)V

    .line 300
    return-void
.end method

.method static synthetic access$0(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThreadBlockVar:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$1(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$10(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-static {p0, p1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-void
.end method

.method static synthetic access$12(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    return-object v0
.end method

.method static synthetic access$13(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLContext;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-void
.end method

.method static synthetic access$14(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    return-object v0
.end method

.method static synthetic access$15(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mFilterOutputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$16(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLSurface;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-void
.end method

.method static synthetic access$17(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I
    .locals 1
    .parameter

    .prologue
    .line 55
    iget v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mWidth:I

    return v0
.end method

.method static synthetic access$18(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mHeight:I

    return v0
.end method

.method static synthetic access$19(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Lvisidon/Lib/utils/FrameBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mExternalFBO:Lvisidon/Lib/utils/FrameBuffer;

    return-void
.end method

.method static synthetic access$2(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)[F
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mTransformMatrix:[F

    return-object v0
.end method

.method static synthetic access$20(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/utils/FrameBuffer;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mExternalFBO:Lvisidon/Lib/utils/FrameBuffer;

    return-object v0
.end method

.method static synthetic access$21(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method static synthetic access$22(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Lvisidon/Lib/filtergroups/ColorAndSmooth;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;

    return-void
.end method

.method static synthetic access$23(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I
    .locals 1
    .parameter

    .prologue
    .line 82
    iget v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinSmoothingStrength:I

    return v0
.end method

.method static synthetic access$24(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)I
    .locals 1
    .parameter

    .prologue
    .line 83
    iget v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mCurrentSkinToneAdjustmentStrength:I

    return v0
.end method

.method static synthetic access$25(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Landroid/os/HandlerThread;
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$26(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglHandler:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    return-object v0
.end method

.method static synthetic access$3(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Lvisidon/Lib/filtergroups/ColorAndSmooth;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mSmoothAndColorFilter:Lvisidon/Lib/filtergroups/ColorAndSmooth;

    return-object v0
.end method

.method static synthetic access$4(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)[F
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mOrientationM:[F

    return-object v0
.end method

.method static synthetic access$5(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGL10;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-object v0
.end method

.method static synthetic access$6(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLDisplay;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-object v0
.end method

.method static synthetic access$7(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;)Ljavax/microedition/khronos/egl/EGLSurface;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$8(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    return-void
.end method

.method static synthetic access$9(Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;Ljavax/microedition/khronos/egl/EGLDisplay;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    return-void
.end method

.method private static checkEglError(Ljava/lang/String;Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 6
    .parameter "prompt"
    .parameter "egl"

    .prologue
    .line 341
    :goto_0
    invoke-interface {p1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .local v0, error:I
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    .line 344
    return-void

    .line 342
    :cond_0
    const-string v1, "BeautificationRenderer"

    const-string v2, "%s: EGL error: 0x%x"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 12
    .parameter "egl"
    .parameter "display"

    .prologue
    const/4 v4, 0x0

    .line 356
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 357
    .local v5, numConfig:[I
    sget-object v2, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->CONFIG_SPEC:[I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_0
    aget v10, v5, v4

    .line 362
    .local v10, numConfigs:I
    if-gtz v10, :cond_1

    .line 363
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :cond_1
    new-array v9, v10, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 368
    .local v9, configs:[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v8, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->CONFIG_SPEC:[I

    move-object v6, p0

    move-object v7, p1

    move-object v11, v5

    .line 367
    invoke-interface/range {v6 .. v11}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_2
    aget-object v0, v9, v4

    return-object v0
.end method

.method private setCameraRotation(I)V
    .locals 6
    .parameter "mRotation"

    .prologue
    const/4 v3, 0x0

    .line 306
    iput p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mRotation:I

    .line 307
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mOrientationM:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    const/high16 v5, 0x3f80

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 308
    return-void
.end method

.method private setMirrored(Z)V
    .locals 0
    .parameter "mirrored"

    .prologue
    .line 311
    iput-boolean p1, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mMirrored:Z

    .line 312
    return-void
.end method


# virtual methods
.method public doProcessing()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglHandler:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 328
    return-void
.end method

.method public getInputSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mInputSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 319
    iget-object v0, p0, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer;->mEglHandler:Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lvisidon/Lib/renderers/SkinSmoothingAndToneAdjustmentRenderer$EGLHandler;->sendEmptyMessage(I)Z

    .line 320
    return-void
.end method
