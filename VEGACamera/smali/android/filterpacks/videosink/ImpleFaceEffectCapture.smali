.class public Landroid/filterpacks/videosink/ImpleFaceEffectCapture;
.super Landroid/filterfw/core/Filter;
.source "ImpleFaceEffectCapture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;
    }
.end annotation


# static fields
.field public static final FLIP_HORIZONTAL:I = 0x2

.field public static final FLIP_VERTICAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImpleFaceEffectCapture"


# instance fields
.field private final RENDERMODE_CUSTOMIZE:I

.field private final RENDERMODE_FILL_CROP:I

.field private final RENDERMODE_FIT:I

.field private final RENDERMODE_STRETCH:I

.field private SaveFileName:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "SaveFileName"
    .end annotation
.end field

.field private mAspectRatio:F

.field private mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "FaceCaptureDoneListener"
    .end annotation
.end field

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/ShaderProgram;

.field private mRenderMode:I

.field private mRenderModeString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "renderMode"
    .end annotation
.end field

.field private mScreenHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "height"
    .end annotation
.end field

.field private mScreenWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        name = "width"
    .end annotation
.end field

.field private mSourceQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceQuad"
    .end annotation
.end field

.field private mSourceRegion:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "inputRegion"
    .end annotation
.end field

.field private mTargetQuad:Landroid/filterfw/geometry/Quad;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "targetQuad"
    .end annotation
.end field

.field private onCapture:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "onCapture"
    .end annotation
.end field

.field private onRelease:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "onRelease"
    .end annotation
.end field

.field private onStop:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "onStop"
    .end annotation
.end field

.field private pictureFlip:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "pictureFlip"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .parameter "name"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/high16 v9, 0x3f80

    .line 117
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 56
    iput-boolean v11, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onCapture:Z

    .line 58
    iput-boolean v11, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onStop:Z

    .line 60
    iput-boolean v11, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onRelease:Z

    .line 65
    const/16 v4, 0x10e

    iput v4, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mOrientation:I

    .line 67
    iput-boolean v11, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->pictureFlip:Z

    .line 72
    new-instance v4, Landroid/filterfw/geometry/Quad;

    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v10, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 73
    new-instance v6, Landroid/filterfw/geometry/Point;

    invoke-direct {v6, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 74
    new-instance v7, Landroid/filterfw/geometry/Point;

    invoke-direct {v7, v10, v10}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 75
    new-instance v8, Landroid/filterfw/geometry/Point;

    invoke-direct {v8, v9, v10}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v4, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    .line 77
    new-instance v4, Landroid/filterfw/geometry/Quad;

    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v10, v10}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 78
    new-instance v6, Landroid/filterfw/geometry/Point;

    invoke-direct {v6, v9, v10}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 79
    new-instance v7, Landroid/filterfw/geometry/Point;

    invoke-direct {v7, v10, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 80
    new-instance v8, Landroid/filterfw/geometry/Point;

    invoke-direct {v8, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v4, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    .line 83
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/pantech/app/vegacamera/util/Storage;->getCameraImageBucketName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "FaceCapture"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpeg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->SaveFileName:Ljava/lang/String;

    .line 92
    iput v11, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->RENDERMODE_STRETCH:I

    .line 93
    iput v12, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->RENDERMODE_FIT:I

    .line 94
    const/4 v4, 0x2

    iput v4, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->RENDERMODE_FILL_CROP:I

    .line 95
    const/4 v4, 0x3

    iput v4, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->RENDERMODE_CUSTOMIZE:I

    .line 99
    iput v12, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderMode:I

    .line 100
    iput v9, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mAspectRatio:F

    .line 119
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v10, v10}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 120
    .local v0, bl:Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v10}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 121
    .local v1, br:Landroid/filterfw/geometry/Point;
    new-instance v2, Landroid/filterfw/geometry/Point;

    invoke-direct {v2, v10, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 122
    .local v2, tl:Landroid/filterfw/geometry/Point;
    new-instance v3, Landroid/filterfw/geometry/Point;

    invoke-direct {v3, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 123
    .local v3, tr:Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Quad;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    iput-object v4, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    .line 124
    return-void
.end method

.method public static flip(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "src"
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    const/high16 v2, -0x4080

    .line 298
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 299
    .local v5, matrix:Landroid/graphics/Matrix;
    if-ne p1, v6, :cond_0

    .line 300
    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 306
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0

    .line 301
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 302
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_0

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private makeGoofyImageFile(Landroid/filterfw/core/GLFrame;)V
    .locals 6
    .parameter "input"

    .prologue
    .line 282
    const-string v3, "ImpleFaceEffectCapture"

    const-string v4, "makeGoofyImageFile()"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-virtual {p0, p1}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->getBitmap(Landroid/filterfw/core/GLFrame;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget v4, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mOrientation:I

    invoke-direct {p0, v3, v4}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 284
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-boolean v3, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->pictureFlip:Z

    if-eqz v3, :cond_0

    .line 285
    const/4 v3, 0x2

    invoke-static {v0, v3}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->flip(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    :cond_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 288
    .local v2, bos:Ljava/io/ByteArrayOutputStream;
    if-eqz v0, :cond_1

    .line 289
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 291
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 292
    .local v1, bitmapdata:[B
    iget-object v3, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

    if-eqz v3, :cond_2

    .line 293
    iget-object v3, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-interface {v3, v1, v4, v5}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;->OnFaceEffectCaptureDone([BII)V

    .line 295
    :cond_2
    return-void
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 310
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 311
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 312
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 314
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 315
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p1, v7, :cond_0

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    move-object p1, v7

    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    move-object v0, p1

    .line 324
    :goto_0
    return-object v0

    .line 319
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 320
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSourceRegion()V
    .locals 3

    .prologue
    .line 178
    const-string v1, "ImpleFaceEffectCapture"

    const-string v2, "updateSourceRegion()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Landroid/filterfw/geometry/Quad;

    invoke-direct {v0}, Landroid/filterfw/geometry/Quad;-><init>()V

    .line 181
    .local v0, flippedRegion:Landroid/filterfw/geometry/Quad;
    iget-object v1, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    .line 182
    iget-object v1, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    .line 183
    iget-object v1, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    .line 184
    iget-object v1, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mSourceRegion:Landroid/filterfw/geometry/Quad;

    iget-object v1, v1, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    iput-object v1, v0, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    .line 185
    iget-object v1, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    .line 186
    return-void
.end method

.method private updateTargetRect()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/high16 v5, 0x3f00

    .line 207
    const-string v2, "ImpleFaceEffectCapture"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateTargetRect(). Thread: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mScreenWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mScreenHeight:I

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v2, :cond_0

    .line 209
    iget v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mScreenWidth:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mScreenHeight:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 210
    .local v1, screenAspectRatio:F
    iget v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mAspectRatio:F

    div-float v0, v1, v2

    .line 212
    .local v0, relativeAspectRatio:F
    cmpl-float v2, v0, v6

    if-nez v2, :cond_1

    iget v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderMode:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 213
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v7, v7, v6, v6}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 214
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v8}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    .line 264
    .end local v0           #relativeAspectRatio:F
    .end local v1           #screenAspectRatio:F
    :cond_0
    :goto_0
    return-void

    .line 216
    .restart local v0       #relativeAspectRatio:F
    .restart local v1       #screenAspectRatio:F
    :cond_1
    iget v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderMode:I

    packed-switch v2, :pswitch_data_0

    .line 261
    :goto_1
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setTargetRegion(Landroid/filterfw/geometry/Quad;)V

    goto :goto_0

    .line 218
    :pswitch_0
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v7, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 219
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v6, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 220
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v7, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 221
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    invoke-virtual {v2, v6, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 222
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v8}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto :goto_1

    .line 225
    :pswitch_1
    cmpl-float v2, v0, v6

    if-lez v2, :cond_2

    .line 227
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 228
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 229
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 230
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 239
    :goto_2
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v9}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto :goto_1

    .line 234
    :cond_2
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 235
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 236
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 237
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    goto :goto_2

    .line 242
    :pswitch_2
    cmpl-float v2, v0, v6

    if-lez v2, :cond_3

    .line 244
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 245
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 246
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 247
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    mul-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 255
    :goto_3
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v2, v9}, Landroid/filterfw/core/ShaderProgram;->setClearsOutput(Z)V

    goto/16 :goto_1

    .line 250
    :cond_3
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p0:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 251
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p1:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v7}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 252
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p2:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    sub-float v3, v5, v3

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    .line 253
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mTargetQuad:Landroid/filterfw/geometry/Quad;

    iget-object v2, v2, Landroid/filterfw/geometry/Quad;->p3:Landroid/filterfw/geometry/Point;

    div-float v3, v5, v0

    add-float/2addr v3, v5

    invoke-virtual {v2, v3, v6}, Landroid/filterfw/geometry/Point;->set(FF)V

    goto :goto_3

    .line 258
    :pswitch_3
    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v3, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mSourceQuad:Landroid/filterfw/geometry/Quad;

    invoke-virtual {v2, v3}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(Landroid/filterfw/geometry/Quad;)V

    goto/16 :goto_1

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 339
    const-string v0, "ImpleFaceEffectCapture"

    const-string v1, "close()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

    if-eqz v0, :cond_0

    .line 341
    iput-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mFaceEffectCaptureDoneListener:Landroid/filterpacks/videosink/ImpleFaceEffectCapture$OnFaceEffectCaptureDoneListener;

    .line 343
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    if-eqz v0, :cond_1

    .line 344
    iput-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 346
    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "name"
    .parameter "context"

    .prologue
    .line 158
    const-string v0, "ImpleFaceEffectCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fieldPortValueUpdated() Port "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const-string v0, "onCapture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 162
    iget-boolean v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onCapture:Z

    if-nez v0, :cond_2

    .line 163
    invoke-virtual {p0}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onStop()V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onCapture()V

    goto :goto_0

    .line 168
    :cond_3
    const-string v0, "onStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 169
    invoke-virtual {p0}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onStop()V

    goto :goto_0

    .line 171
    :cond_4
    const-string v0, "onRelease"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onRelease()V

    goto :goto_0
.end method

.method public getBitmap(Landroid/filterfw/core/GLFrame;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "input"

    .prologue
    .line 354
    invoke-virtual {p1}, Landroid/filterfw/core/GLFrame;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/pantech/app/vegacamera/ActivityBase;Lcom/pantech/app/vegacamera/Photo;Lcom/pantech/app/vegacamera/data/AppData;I)V
    .locals 0
    .parameter "act"
    .parameter "photo"
    .parameter "data"
    .parameter "what"

    .prologue
    .line 110
    return-void
.end method

.method public onCapture()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onCapture:Z

    .line 129
    return-void
.end method

.method public onCaptureAnimation()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onCapture:Z

    .line 134
    return-void
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 277
    const-string v0, "ImpleFaceEffectCapture"

    const-string v1, "Opening()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->updateSourceRegion()V

    .line 279
    return-void
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .parameter "context"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 268
    const-string v0, "ImpleFaceEffectCapture"

    const-string v1, "Preparing()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    .line 270
    iget-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    const/high16 v1, -0x4080

    invoke-virtual {v0, v2, v3, v3, v1}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 271
    iget-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v0, v2, v2, v2}, Landroid/filterfw/core/ShaderProgram;->setClearColor(FFF)V

    .line 272
    invoke-virtual {p0}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->updateRenderMode()V

    .line 273
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 330
    const-string v1, "image"

    invoke-virtual {p0, v1}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .line 331
    .local v0, input:Landroid/filterfw/core/Frame;
    iget-boolean v1, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onCapture:Z

    if-eqz v1, :cond_0

    .line 332
    check-cast v0, Landroid/filterfw/core/GLFrame;

    .end local v0           #input:Landroid/filterfw/core/Frame;
    invoke-direct {p0, v0}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->makeGoofyImageFile(Landroid/filterfw/core/GLFrame;)V

    .line 334
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->onCapture:Z

    .line 335
    return-void
.end method

.method public setListener(Lcom/pantech/app/vegacamera/operator/ICapture$CaptureCompleteListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 148
    return-void
.end method

.method public setupPorts()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 152
    const-string v0, "ImpleFaceEffectCapture"

    const-string v1, "setupPorts()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v0, "image"

    invoke-static {v2, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 154
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 350
    const-string v0, "ImpleFaceEffectCapture"

    const-string v1, "tearDown()"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    return-void
.end method

.method public updateRenderMode()V
    .locals 3

    .prologue
    .line 189
    const-string v0, "ImpleFaceEffectCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateRenderMode(). Thread: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderModeString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderModeString:Ljava/lang/String;

    const-string v1, "stretch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderMode:I

    .line 203
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->updateTargetRect()V

    .line 204
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    const/4 v0, 0x1

    iput v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderMode:I

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderModeString:Ljava/lang/String;

    const-string v1, "fill_crop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    const/4 v0, 0x2

    iput v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderMode:I

    goto :goto_0

    .line 197
    :cond_3
    iget-object v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderModeString:Ljava/lang/String;

    const-string v1, "customize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    const/4 v0, 0x3

    iput v0, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderMode:I

    goto :goto_0

    .line 200
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown render mode \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/filterpacks/videosink/ImpleFaceEffectCapture;->mRenderModeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
