.class public Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;
.super Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;
.source "CameraScreenNail.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;,
        Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$OnFrameDrawnListener;
    }
.end annotation


# static fields
.field private static final ANIM_BURST_RUNNING:I = 0x9

.field private static final ANIM_BURST_START:I = 0x8

.field private static final ANIM_CAPTURE_RUNNING:I = 0x2

.field private static final ANIM_CAPTURE_START:I = 0x1

.field private static final ANIM_NONE:I = 0x0

.field private static final ANIM_SWITCH_COPY_TEXTURE:I = 0x3

.field private static final ANIM_SWITCH_DARK_PREVIEW:I = 0x4

.field private static final ANIM_SWITCH_RUNNING:I = 0x7

.field private static final ANIM_SWITCH_START:I = 0x6

.field private static final ANIM_SWITCH_WAITING_FIRST_FRAME:I = 0x5

.field private static final TAG:Ljava/lang/String; = "CameraScreenNail"


# instance fields
.field private mAlpha:F

.field private mAnimState:I

.field private mAnimTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

.field private mBurstAnimManager:Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

.field private mCaptureAnimManager:Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;

.field private mEnableAspectRatioClamping:Z

.field private mFirstFrameArrived:Z

.field private mFullScreen:Z

.field private mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

.field private mLock:Ljava/lang/Object;

.field private mOnFrameDrawnListener:Ljava/lang/Runnable;

.field private mOneTimeFrameDrawnListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$OnFrameDrawnListener;

.field private mPreviewAreaHeight:I

.field private mPreviewAreaWidth:I

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field private mSwitchAnimManager:Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;

.field private final mTextureTransformMatrix:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f80

    .line 104
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;-><init>()V

    .line 58
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mTextureTransformMatrix:[F

    .line 61
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mCaptureAnimManager:Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;

    .line 62
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mSwitchAnimManager:Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;

    .line 63
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mBurstAnimManager:Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

    .line 64
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    .line 83
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleX:F

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleY:F

    .line 85
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 86
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAlpha:F

    .line 105
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    .line 106
    return-void
.end method

.method private callbackIfNeeded()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$OnFrameDrawnListener;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$OnFrameDrawnListener;

    invoke-interface {v0, p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$OnFrameDrawnListener;->onFrameDrawn(Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$OnFrameDrawnListener;

    .line 300
    :cond_0
    return-void
.end method

.method private copyPreviewTexture(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f80

    .line 406
    const-string v0, "CameraScreenNail"

    const-string v1, "copyPreviewTexture"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->getWidth()I

    move-result v5

    .line 408
    .local v5, width:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->getHeight()I

    move-result v6

    .line 409
    .local v6, height:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    invoke-interface {p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->beginRenderTarget(Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V

    .line 412
    const/4 v0, 0x0

    int-to-float v1, v6

    invoke-interface {p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 413
    const/high16 v0, -0x4080

    invoke-interface {p1, v2, v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->scale(FFF)V

    .line 414
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 415
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mTextureTransformMatrix:[F

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->updateTransformMatrix([F)V

    .line 416
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mExtTexture:Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mTextureTransformMatrix:[F

    move-object v0, p1

    move v4, v3

    invoke-interface/range {v0 .. v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;[FIIII)V

    .line 417
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->endRenderTarget()V

    .line 418
    return-void
.end method

.method private getTextureHeight()I
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->getHeight()I

    move-result v0

    return v0
.end method

.method private getTextureWidth()I
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->getWidth()I

    move-result v0

    return v0
.end method

.method private setPreviewLayoutSize(II)V
    .locals 3
    .parameter "w"
    .parameter "h"

    .prologue
    .line 165
    const-string v0, "CameraScreenNail"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[CameraScreenNail] set preview layout size : width("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    .line 167
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderHeight:I

    .line 168
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->updateRenderSize()V

    .line 169
    return-void
.end method

.method private updateRenderSize()V
    .locals 6

    .prologue
    .line 172
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-nez v3, :cond_0

    .line 173
    const-string v3, "CameraScreenNail"

    const-string v4, "[CameraScreenNail] updateRenderSize() :: aspect ratio clamping disabled"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/high16 v3, 0x3f80

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleY:F

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleX:F

    .line 175
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureWidth()I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 176
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureHeight()I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 199
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureHeight()I

    move-result v4

    if-le v3, v4, :cond_1

    .line 182
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 187
    .local v0, aspectRatio:F
    :goto_1
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderHeight:I

    if-le v3, v4, :cond_2

    .line 188
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 189
    .local v2, scaledTextureWidth:F
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .line 194
    .local v1, scaledTextureHeight:F
    :goto_2
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleX:F

    .line 195
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderHeight:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleY:F

    .line 196
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mUncroppedRenderWidth:I

    .line 197
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mUncroppedRenderHeight:I

    .line 198
    const-string v3, "CameraScreenNail"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "aspect ratio clamping enabled, surfaceTexture scale: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleX:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    .end local v0           #aspectRatio:F
    .end local v1           #scaledTextureHeight:F
    .end local v2           #scaledTextureWidth:F
    :cond_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .restart local v0       #aspectRatio:F
    goto :goto_1

    .line 191
    :cond_2
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v2, v3

    .line 192
    .restart local v2       #scaledTextureWidth:F
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderHeight:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v1, v3

    .restart local v1       #scaledTextureHeight:F
    goto :goto_2
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    .line 203
    const-string v0, "CameraScreenNail"

    const-string v1, "[CameraScreenNail] acquireSurfaceTexture"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mFirstFrameArrived:Z

    .line 206
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->acquireSurfaceTexture()V

    .line 207
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureHeight()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    .line 204
    monitor-exit v1

    .line 209
    return-void

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateBurst(I)V
    .locals 2
    .parameter "animOrientation"

    .prologue
    .line 250
    const-string v0, "CameraScreenNail"

    const-string v1, "[CameraScreenNail] animateCapture"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mBurstAnimManager:Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;->setOrientation(I)V

    .line 253
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->requestRender()V

    .line 254
    const/16 v0, 0x8

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 251
    monitor-exit v1

    .line 256
    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateCapture(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 240
    const-string v0, "CameraScreenNail"

    const-string v1, "[CameraScreenNail] animateCapture"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mCaptureAnimManager:Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->setOrientation(I)V

    .line 243
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mCaptureAnimManager:Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->animateFlashAndSlide()V

    .line 244
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->requestRender()V

    .line 245
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 241
    monitor-exit v1

    .line 247
    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateFlash(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mBurstAnimManager:Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;->setOrientation(I)V

    .line 274
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mBurstAnimManager:Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;->animateFlash()V

    .line 275
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->requestRender()V

    .line 276
    const/16 v0, 0x8

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 272
    monitor-exit v1

    .line 278
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide()V
    .locals 4

    .prologue
    .line 281
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 287
    const-string v0, "CameraScreenNail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot animateSlide outside of animateCapture! Animation state = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    monitor-exit v1

    .line 293
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mCaptureAnimManager:Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->animateSlide()V

    .line 291
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->requestRender()V

    .line 281
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSlide(I)V
    .locals 2
    .parameter "displayRotation"

    .prologue
    .line 259
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mBurstAnimManager:Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;->setOrientation(I)V

    .line 261
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mBurstAnimManager:Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;->animateSlide()V

    .line 262
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->requestRender()V

    .line 263
    const/16 v0, 0x8

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 259
    monitor-exit v1

    .line 269
    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public animateSwitchCamera()V
    .locals 3

    .prologue
    .line 229
    const-string v0, "CameraScreenNail"

    const-string v1, "[CameraScreenNail] animateSwitchCamera"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 234
    const/4 v0, 0x5

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 230
    :cond_0
    monitor-exit v1

    .line 237
    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public copyTexture()V
    .locals 2

    .prologue
    .line 221
    const-string v0, "CameraScreenNail"

    const-string v1, "[CameraScreenNail] copyTexture"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->requestRender()V

    .line 224
    const/4 v0, 0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 222
    monitor-exit v1

    .line 226
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public directDraw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 311
    invoke-super/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 312
    return-void
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V
    .locals 16
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 317
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mVisible:Z

    if-nez v4, :cond_0

    .line 318
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mVisible:Z

    .line 319
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v14

    .line 320
    .local v14, surfaceTexture:Landroid/graphics/SurfaceTexture;
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mFirstFrameArrived:Z

    if-nez v4, :cond_2

    .line 321
    :cond_1
    monitor-exit v15

    .line 403
    :goto_0
    return-void

    .line 322
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    if-eqz v4, :cond_3

    .line 323
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 324
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 327
    :cond_3
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mPreviewAreaWidth:I

    .line 328
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mPreviewAreaHeight:I

    .line 330
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->getAlpha()F

    move-result v13

    .line 331
    .local v13, oldAlpha:F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAlpha:F

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->setAlpha(F)V

    .line 333
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    packed-switch v4, :pswitch_data_0

    .line 374
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_5

    .line 376
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 377
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mFullScreen:Z

    if-nez v4, :cond_6

    .line 379
    const/4 v12, 0x0

    .line 390
    .local v12, drawn:Z
    :goto_2
    if-eqz v12, :cond_a

    .line 391
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->requestRender()V

    .line 400
    .end local v12           #drawn:Z
    :cond_5
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->setAlpha(F)V

    .line 401
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->callbackIfNeeded()V

    .line 316
    monitor-exit v15

    goto :goto_0

    .end local v13           #oldAlpha:F
    .end local v14           #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v4

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 335
    .restart local v13       #oldAlpha:F
    .restart local v14       #surfaceTexture:Landroid/graphics/SurfaceTexture;
    :pswitch_1
    :try_start_1
    invoke-super/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    goto :goto_1

    .line 338
    :pswitch_2
    const-string v4, "CameraScreenNail"

    const-string v5, "ANIM_SWITCH_COPY_TEXTURE"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-direct/range {p0 .. p1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->copyPreviewTexture(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 340
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mSwitchAnimManager:Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;->setReviewDrawingSize(II)V

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->onPreviewTextureCopied()V

    .line 342
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 346
    :pswitch_3
    const-string v4, "CameraScreenNail"

    const-string v5, "ANIM_SWITCH_DARK_PREVIEW"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :pswitch_4
    const-string v4, "CameraScreenNail"

    const-string v5, "ANIM_SWITCH_WAITING_FIRST_FRAME"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v14}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mSwitchAnimManager:Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;->drawDarkPreview(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIIILcom/pantech/app/vegacamera/bridge/glui/RawTexture;)Z

    goto/16 :goto_1

    .line 356
    :pswitch_5
    const-string v4, "CameraScreenNail"

    const-string v5, "ANIM_SWITCH_START"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mSwitchAnimManager:Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;->startAnimation()V

    .line 358
    const/4 v4, 0x7

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    goto/16 :goto_1

    .line 361
    :pswitch_6
    const-string v4, "CameraScreenNail"

    const-string v5, "ANIM_CAPTURE_START"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-direct/range {p0 .. p1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->copyPreviewTexture(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mCaptureAnimManager:Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->startAnimation(IIII)V

    .line 364
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    goto/16 :goto_1

    .line 367
    :pswitch_7
    const-string v4, "CameraScreenNail"

    const-string v5, "ANIM_BURST_START"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-direct/range {p0 .. p1}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->copyPreviewTexture(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mBurstAnimManager:Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;->startAnimation(IIII)V

    .line 370
    const/16 v4, 0x9

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    goto/16 :goto_1

    .line 381
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mCaptureAnimManager:Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1, v5}, Lcom/pantech/app/vegacamera/bridge/CaptureAnimManager;->drawAnimation(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)Z

    move-result v12

    .line 383
    .restart local v12       #drawn:Z
    goto/16 :goto_2

    .end local v12           #drawn:Z
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_8

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mBurstAnimManager:Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1, v5}, Lcom/pantech/app/vegacamera/bridge/BurstAnimManager;->drawAnimation(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)Z

    move-result v12

    .line 385
    .restart local v12       #drawn:Z
    goto/16 :goto_2

    .end local v12           #drawn:Z
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_9

    .line 386
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mSwitchAnimManager:Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p0

    invoke-virtual/range {v4 .. v11}, Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;->drawAnimation(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIIILcom/pantech/app/vegacamera/bridge/CameraScreenNail;Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)Z

    move-result v12

    .line 387
    .restart local v12       #drawn:Z
    goto/16 :goto_2

    .line 388
    .end local v12           #drawn:Z
    :cond_9
    const/4 v12, 0x0

    .restart local v12       #drawn:Z
    goto/16 :goto_2

    .line 395
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->onCaptureAnimationEnded()V

    .line 397
    invoke-super/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public enableAspectRatioClamping()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 161
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->updateRenderSize()V

    .line 162
    return-void
.end method

.method public getAlpha()F
    .locals 2

    .prologue
    .line 480
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 481
    :try_start_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAlpha:F

    monitor-exit v1

    return v0

    .line 480
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderHeight:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getPreviewAreaHeight()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mPreviewAreaHeight:I

    return v0
.end method

.method public getPreviewAreaWidth()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mPreviewAreaWidth:I

    return v0
.end method

.method public getUncroppedRenderHeight()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getUncroppedRenderWidth()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mEnableAspectRatioClamping:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getTextureWidth()I

    move-result v0

    goto :goto_0
.end method

.method public noDraw()V
    .locals 2

    .prologue
    .line 422
    const-string v0, "CameraScreenNail"

    const-string v1, "noDraw"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mVisible:Z

    .line 423
    monitor-exit v1

    .line 426
    return-void

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .parameter "surfaceTexture"

    .prologue
    .line 438
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 440
    monitor-exit v1

    .line 452
    :goto_0
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mFirstFrameArrived:Z

    .line 443
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mVisible:Z

    if-eqz v0, :cond_2

    .line 444
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    .line 445
    const/4 v0, 0x6

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->requestRender()V

    .line 438
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    .line 430
    const-string v0, "CameraScreenNail"

    const-string v1, "recycle"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 432
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mVisible:Z

    .line 431
    monitor-exit v1

    .line 434
    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    .line 213
    const-string v0, "CameraScreenNail"

    const-string v1, "[CameraScreenNail] releaseSurfaceTexture"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_0
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->releaseSurfaceTexture()V

    .line 216
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAnimState:I

    .line 214
    monitor-exit v1

    .line 218
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 486
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mAlpha:F

    .line 488
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$Listener;->requestRender()V

    .line 486
    monitor-exit v1

    .line 490
    return-void

    .line 486
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFullScreen(Z)V
    .locals 2
    .parameter "full"

    .prologue
    .line 109
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_0
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mFullScreen:Z

    .line 109
    monitor-exit v1

    .line 112
    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnFrameDrawnOneShot(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "run"

    .prologue
    .line 474
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mOnFrameDrawnListener:Ljava/lang/Runnable;

    .line 474
    monitor-exit v1

    .line 477
    return-void

    .line 474
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOneTimeOnFrameDrawnListener(Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$OnFrameDrawnListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 467
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 468
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mFirstFrameArrived:Z

    .line 469
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mOneTimeFrameDrawnListener:Lcom/pantech/app/vegacamera/bridge/CameraScreenNail$OnFrameDrawnListener;

    .line 467
    monitor-exit v1

    .line 471
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPreviewFrameLayoutSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 459
    const-string v0, "CameraScreenNail"

    const-string v1, "setPreviewFrameLayoutSize"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mSwitchAnimManager:Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;

    invoke-virtual {v0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/SwitchAnimManager;->setPreviewFrameLayoutSize(II)V

    .line 462
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->setPreviewLayoutSize(II)V

    .line 460
    monitor-exit v1

    .line 464
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->setSize(II)V

    .line 151
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mEnableAspectRatioClamping:Z

    .line 152
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    if-nez v0, :cond_0

    .line 153
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderWidth:I

    .line 154
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mRenderHeight:I

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->updateRenderSize()V

    .line 157
    return-void
.end method

.method protected updateTransformMatrix([F)V
    .locals 6
    .parameter "matrix"

    .prologue
    const/high16 v0, 0x3f00

    const/4 v5, 0x0

    const/high16 v4, -0x4100

    const/4 v3, 0x0

    .line 304
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 305
    invoke-static {p1, v3, v0, v0, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 306
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleX:F

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/CameraScreenNail;->mScaleY:F

    const/high16 v2, 0x3f80

    invoke-static {p1, v3, v0, v1, v2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 307
    invoke-static {p1, v3, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 308
    return-void
.end method
