.class public abstract Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static final GL_TEXTURE_EXTERNAL_OES:I = 0x8d65

.field private static final TAG:Ljava/lang/String; = "SurfaceTextureScreenNail"


# instance fields
.field protected mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

.field private mHasTexture:Z

.field private mHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTransform:[F

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mTransform:[F

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 40
    return-void
.end method

.method private static releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .parameter "st"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 65
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_RELEASE_SURFACE_TEXTURE:Z

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 68
    :cond_0
    return-void
.end method

.method private static setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .parameter "st"
    .parameter "width"
    .parameter "height"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 57
    sget-boolean v0, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_SET_DEFALT_BUFFER_SIZE:Z

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 43
    const-string v0, "SurfaceTextureScreenNail"

    .line 44
    const-string v1, "[SurfaceTextureScreenNail] acquireSurfaceTexture() mWidth = %d, mHeight = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    const v1, 0x8d65

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->setSize(II)V

    .line 47
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->getId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 50
    monitor-enter p0

    .line 51
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 50
    monitor-exit p0

    .line 53
    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V
    .locals 9
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 112
    monitor-enter p0

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    .line 114
    monitor-exit p0

    .line 129
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 119
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 120
    div-int/lit8 v0, p4, 0x2

    add-int v7, p2, v0

    .line 121
    .local v7, cx:I
    div-int/lit8 v0, p5, 0x2

    add-int v8, p3, v0

    .line 122
    .local v8, cy:I
    int-to-float v0, v7

    int-to-float v1, v8

    invoke-interface {p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 123
    const/high16 v0, 0x3f80

    const/high16 v1, -0x4080

    const/high16 v2, 0x3f80

    invoke-interface {p1, v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->scale(FFF)V

    .line 124
    neg-int v0, v7

    int-to-float v0, v0

    neg-int v1, v8

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 125
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 126
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mTransform:[F

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;[FIIII)V

    .line 127
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    .line 112
    monitor-exit p0

    goto :goto_0

    .end local v7           #cx:I
    .end local v8           #cy:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 133
    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "[SurfaceTextureScreenNail] draw(UnsupportedOperationException)"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract noDraw()V
.end method

.method public abstract onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract recycle()V
.end method

.method public releaseSurfaceTexture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 75
    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "[SurfaceTextureScreenNail] releaseSurfaceTexture()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    monitor-enter p0

    .line 77
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 76
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->recycle()V

    .line 81
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->releaseSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 84
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 85
    return-void

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resizeTexture()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->setSize(II)V

    .line 96
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->setDefaultBufferSize(Landroid/graphics/SurfaceTexture;II)V

    .line 98
    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 88
    const-string v0, "SurfaceTextureScreenNail"

    const-string v1, "[SurfaceTextureScreenNail] setSize()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mWidth:I

    .line 90
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->mHeight:I

    .line 91
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 0
    .parameter "matrix"

    .prologue
    .line 138
    return-void
.end method
