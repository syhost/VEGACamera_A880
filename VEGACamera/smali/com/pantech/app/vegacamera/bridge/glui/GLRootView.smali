.class public Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;
.super Landroid/opengl/GLSurfaceView;
.source "GLRootView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;
    }
.end annotation


# static fields
.field private static final DEBUG_DRAWING_STAT:Z = false

.field private static final DEBUG_FPS:Z = false

.field private static final DEBUG_INVALIDATE:Z = false

.field private static final DEBUG_PROFILE:Z = false

.field private static final DEBUG_PROFILE_SLOW_ONLY:Z = false

.field private static final FLAG_INITIALIZED:I = 0x1

.field private static final FLAG_NEED_LAYOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GLRootView"


# instance fields
.field private final mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

.field private mCompensation:I

.field private mCompensationMatrix:Landroid/graphics/Matrix;

.field private mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

.field private mDisplayRotation:I

.field private final mEglConfigChooser:Lcom/pantech/app/vegacamera/bridge/glui/GalleryEGLConfigChooser;

.field private mFirstDraw:Z

.field private mFlags:I

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mFreeze:Z

.field private final mFreezeCondition:Ljava/util/concurrent/locks/Condition;

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mIdleListeners:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdleRunner:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;

.field private mInDownState:Z

.field private mInvalidateColor:I

.field private mLastDrawFinishTime:J

.field private mOrientationSource:Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field private mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

.field private surfaceChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCount:I

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCountingStart:J

    .line 67
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mInvalidateColor:I

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    .line 90
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I

    .line 91
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderRequested:Z

    .line 93
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/GalleryEGLConfigChooser;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GalleryEGLConfigChooser;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mEglConfigChooser:Lcom/pantech/app/vegacamera/bridge/glui/GalleryEGLConfigChooser;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    .line 96
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;

    invoke-direct {v0, p0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleRunner:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;

    .line 98
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 99
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    .line 103
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mInDownState:Z

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFirstDraw:Z

    .line 187
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$1;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    .line 194
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->surfaceChanged:Z

    .line 112
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I

    .line 113
    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mEglConfigChooser:Lcom/pantech/app/vegacamera/bridge/glui/GalleryEGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 115
    invoke-virtual {p0, p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 116
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->USE_888_PIXEL_FORMAT:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->superRequestRender()V

    return-void
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/ArrayDeque;
    .locals 1
    .parameter

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)Z
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderRequested:Z

    return v0
.end method

.method private layoutContentPane()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 220
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I

    .line 222
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->getWidth()I

    move-result v4

    .line 223
    .local v4, w:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->getHeight()I

    move-result v2

    .line 224
    .local v2, h:I
    const/4 v1, 0x0

    .line 225
    .local v1, displayRotation:I
    const/4 v0, 0x0

    .line 228
    .local v0, compensation:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mOrientationSource:Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;

    if-eqz v5, :cond_4

    .line 229
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mOrientationSource:Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;

    invoke-interface {v5}, Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;->getCompensation()I

    move-result v0

    .line 230
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mOrientationSource:Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;

    invoke-interface {v5}, Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;->getDisplayRotation()I

    move-result v1

    .line 236
    :goto_0
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->surfaceChanged:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    if-eq v5, v0, :cond_1

    .line 237
    :cond_0
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    .line 238
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    if-eqz v5, :cond_1

    .line 239
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_5

    .line 240
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 242
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    neg-int v6, v4

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    neg-int v7, v2

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 244
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 248
    :goto_1
    const-string v5, "GLRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "layoutContentPane , re-calculate Matrix after OnSurfaceChanged, "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (compensation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iput-boolean v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->surfaceChanged:Z

    .line 252
    :cond_1
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mDisplayRotation:I

    .line 255
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    rem-int/lit16 v5, v5, 0xb4

    if-eqz v5, :cond_2

    .line 256
    move v3, v4

    .line 257
    .local v3, tmp:I
    move v4, v2

    .line 258
    move v2, v3

    .line 260
    .end local v3           #tmp:I
    :cond_2
    const-string v5, "GLRootView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "layout content pane "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (compensation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 262
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    invoke-virtual {v5, v9, v9, v4, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->layout(IIII)V

    .line 266
    :cond_3
    return-void

    .line 232
    :cond_4
    const/4 v1, 0x0

    .line 233
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 246
    :cond_5
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto/16 :goto_1
.end method

.method private onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .parameter "gl"

    .prologue
    .line 386
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->deleteRecycledResources()V

    .line 389
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->resetUploadLimit()V

    .line 391
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderRequested:Z

    .line 393
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->layoutContentPane()V

    .line 396
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    const/4 v5, -0x1

    invoke-interface {v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 397
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    neg-int v4, v4

    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->rotateCanvas(I)V

    .line 398
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-eqz v4, :cond_1

    .line 399
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->render(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 401
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    .line 403
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 404
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v2

    .line 405
    .local v2, now:J
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_5

    .line 408
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 411
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #now:J
    :cond_2
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->uploadLimitReached()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->requestRender()V

    .line 415
    :cond_3
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v5

    .line 416
    :try_start_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 417
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleRunner:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->enable()V

    .line 415
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    return-void

    .line 406
    .restart local v0       #i:I
    .restart local v1       #n:I
    .restart local v2       #now:J
    :cond_5
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;

    invoke-virtual {v4, v2, v3}, Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;->setStartTime(J)V

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #now:J
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private outputFps()V
    .locals 8

    .prologue
    .line 320
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 321
    .local v0, now:J
    iget-wide v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCountingStart:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 322
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCountingStart:J

    .line 328
    :cond_0
    :goto_0
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCount:I

    .line 329
    return-void

    .line 323
    :cond_1
    iget-wide v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCountingStart:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x3b9aca00

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 324
    const-string v2, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fps: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCount:I

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCountingStart:J

    sub-long v6, v0, v6

    long-to-double v6, v6

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCountingStart:J

    .line 326
    const/4 v2, 0x0

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFrameCount:I

    goto :goto_0
.end method

.method private rotateCanvas(I)V
    .locals 8
    .parameter "degrees"

    .prologue
    const/4 v7, 0x0

    .line 431
    if-nez p1, :cond_0

    .line 444
    :goto_0
    return-void

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->getWidth()I

    move-result v3

    .line 434
    .local v3, w:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->getHeight()I

    move-result v2

    .line 435
    .local v2, h:I
    div-int/lit8 v0, v3, 0x2

    .line 436
    .local v0, cx:I
    div-int/lit8 v1, v2, 0x2

    .line 437
    .local v1, cy:I
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-interface {v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 438
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    int-to-float v5, p1

    const/high16 v6, 0x3f80

    invoke-interface {v4, v5, v7, v7, v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->rotate(FFFF)V

    .line 439
    rem-int/lit16 v4, p1, 0xb4

    if-eqz v4, :cond_1

    .line 440
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    neg-int v5, v1

    int-to-float v5, v5

    neg-int v6, v0

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    goto :goto_0

    .line 442
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    goto :goto_0
.end method

.method private superRequestRender()V
    .locals 0

    .prologue
    .line 197
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 198
    return-void
.end method


# virtual methods
.method public addOnGLIdleListener(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 137
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleListeners:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 139
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mIdleRunner:Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$IdleRunner;->enable()V

    .line 137
    monitor-exit v1

    .line 141
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 469
    :goto_0
    return v1

    .line 451
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 452
    .local v0, action:I
    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_6

    .line 453
    :cond_1
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mInDownState:Z

    .line 458
    :cond_2
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    if-eqz v3, :cond_3

    .line 459
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    invoke-static {p1, v3}, Lcom/pantech/app/vegacamera/bridge/util/MotionEventHelper;->transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 462
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 465
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    .line 466
    .local v1, handled:Z
    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_5

    .line 467
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mInDownState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 454
    .end local v1           #handled:Z
    :cond_6
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mInDownState:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v2

    .line 471
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 472
    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 616
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unfreeze()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 620
    return-void

    .line 617
    :catchall_0
    move-exception v0

    .line 618
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->finalize()V

    .line 619
    throw v0
.end method

.method public freeze()V
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 557
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFreeze:Z

    .line 558
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 559
    return-void
.end method

.method public getCompensation()I
    .locals 1

    .prologue
    .line 546
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensation:I

    return v0
.end method

.method public getCompensationMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCompensationMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getDisplayRotation()I
    .locals 1

    .prologue
    .line 541
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mDisplayRotation:I

    return v0
.end method

.method public lockRenderThread()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 515
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unfreeze()V

    .line 610
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 611
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 333
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->update()V

    .line 339
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 341
    :goto_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFreeze:Z

    if-nez v0, :cond_1

    .line 346
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->onDrawFrameLocked(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 354
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFirstDraw:Z

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFirstDraw:Z

    .line 356
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView$2;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;)V

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->post(Ljava/lang/Runnable;)Z

    .line 379
    :cond_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->awaitUninterruptibly()V

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    .line 348
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 349
    throw v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->requestLayoutContentPane()V

    .line 272
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unfreeze()V

    .line 525
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 532
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 5
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 305
    const-string v1, "GLRootView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSurfaceChanged: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gl10: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 307
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->setRenderThread()V

    move-object v0, p1

    .line 312
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 313
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v1, v0, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 315
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    invoke-interface {v1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->setSize(II)V

    .line 316
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->surfaceChanged:Z

    .line 317
    return-void

    .line 313
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "gl1"
    .parameter "config"

    .prologue
    .line 278
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onSurfaceCreated:gl10: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 279
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 280
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 282
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GLObject has changed from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 286
    :try_start_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 287
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mCanvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    .line 288
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setRenderMode(I)V

    .line 298
    return-void

    .line 289
    :catchall_0
    move-exception v1

    .line 290
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 291
    throw v1
.end method

.method public registerLaunchedAnimation(Lcom/pantech/app/vegacamera/bridge/anim/CanvasAnimation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method public requestLayoutContentPane()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 217
    :goto_0
    return-void

    .line 209
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 212
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFlags:I

    .line 213
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->requestRender()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 216
    throw v0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderRequested:Z

    .line 180
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_POST_ON_ANIMATION:Z

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRequestRenderOnAnimationFrame:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 183
    :cond_1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method

.method public requestRenderForced()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->superRequestRender()V

    .line 168
    return-void
.end method

.method public setContentPane(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V
    .locals 9
    .parameter "content"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 145
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-ne v2, p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    if-eqz v2, :cond_3

    .line 148
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mInDownState:Z

    if-eqz v2, :cond_2

    .line 149
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 150
    .local v0, now:J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 151
    .local v8, cancelEvent:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    invoke-virtual {v2, v8}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 152
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 153
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mInDownState:Z

    .line 155
    .end local v0           #now:J
    .end local v8           #cancelEvent:Landroid/view/MotionEvent;
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->detachFromRoot()V

    .line 156
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->yieldAllTextures()V

    .line 158
    :cond_3
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mContentView:Lcom/pantech/app/vegacamera/bridge/glui/GLView;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p1, p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->attachToRoot(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    .line 161
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->requestLayoutContentPane()V

    goto :goto_0
.end method

.method public setLightsOutMode(Z)V
    .locals 2
    .parameter "enabled"
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 572
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SET_SYSTEM_UI_VISIBILITY:Z

    if-nez v1, :cond_0

    .line 583
    :goto_0
    return-void

    .line 575
    :cond_0
    const/4 v0, 0x0

    .line 576
    .local v0, flags:I
    if-eqz p1, :cond_1

    .line 577
    const/4 v0, 0x1

    .line 578
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_VIEW_SYSTEM_UI_FLAG_LAYOUT_STABLE:Z

    if-eqz v1, :cond_1

    .line 579
    or-int/lit16 v0, v0, 0x104

    .line 582
    :cond_1
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setOrientationSource(Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;)V
    .locals 0
    .parameter "source"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mOrientationSource:Lcom/pantech/app/vegacamera/bridge/glui/OrientationSource;

    .line 537
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 591
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unfreeze()V

    .line 592
    invoke-super {p0, p1, p2, p3, p4}, Landroid/opengl/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 593
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 597
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unfreeze()V

    .line 598
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 599
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->unfreeze()V

    .line 604
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 605
    return-void
.end method

.method public unfreeze()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFreeze:Z

    .line 565
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mFreezeCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 566
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 567
    return-void
.end method

.method public unlockRenderThread()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLRootView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 520
    return-void
.end method
