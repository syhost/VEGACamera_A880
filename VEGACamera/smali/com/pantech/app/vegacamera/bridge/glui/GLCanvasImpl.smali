.class public Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;,
        Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;
    }
.end annotation


# static fields
.field private static final BOX_COORDINATES:[F = null

.field private static final MSCALE_X:I = 0x0

.field private static final MSCALE_Y:I = 0x5

.field private static final MSKEW_X:I = 0x4

.field private static final MSKEW_Y:I = 0x1

.field private static final OFFSET_DRAW_LINE:I = 0x4

.field private static final OFFSET_DRAW_RECT:I = 0x6

.field private static final OFFSET_FILL_RECT:I = 0x0

.field private static final OPAQUE_ALPHA:F = 0.95f

.field private static final TAG:Ljava/lang/String; = "GLCanvasImp"


# instance fields
.field private mAlpha:F

.field private mBlendEnabled:Z

.field private mBoxCoords:I

.field mCountDrawLine:I

.field mCountDrawMesh:I

.field mCountFillRect:I

.field mCountTextureOES:I

.field mCountTextureRect:I

.field private final mDeleteBuffers:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

.field private final mDrawTextureSourceRect:Landroid/graphics/RectF;

.field private final mDrawTextureTargetRect:Landroid/graphics/RectF;

.field private mFrameBuffer:[I

.field private final mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private final mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

.field private final mMapPointsBuffer:[F

.field private final mMatrixValues:[F

.field private mRecycledRestoreAction:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

.field private final mRestoreStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private final mTargetStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

.field private final mTempMatrix:[F

.field private final mTextureColor:[F

.field private final mTextureMatrixValues:[F

.field private final mUnboundTextures:Lcom/pantech/app/vegacamera/bridge/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->BOX_COORDINATES:[F

    .line 557
    return-void

    .line 45
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    .line 53
    new-array v0, v3, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureMatrixValues:[F

    .line 57
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 59
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureColor:[F

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 72
    const/16 v0, 0x20

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTempMatrix:[F

    .line 73
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mUnboundTextures:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    .line 74
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDeleteBuffers:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    .line 77
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBlendEnabled:Z

    .line 78
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mFrameBuffer:[I

    .line 90
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 91
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    invoke-direct {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;-><init>(Ljavax/microedition/khronos/opengles/GL11;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    .line 92
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->initialize()V

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;)[F
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    return-object v0
.end method

.method private static allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 141
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private bindTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z
    .locals 3
    .parameter "texture"

    .prologue
    .line 439
    invoke-virtual {p1, p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->onBind(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    const/4 v1, 0x0

    .line 444
    :goto_0
    return v1

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTarget()I

    move-result v0

    .line 442
    .local v0, target:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTextureTarget(I)V

    .line 443
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getId()I

    move-result v2

    invoke-interface {v1, v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 444
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V
    .locals 5
    .parameter "gl11ep"

    .prologue
    .line 872
    const v2, 0x8d40

    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v1

    .line 873
    .local v1, status:I
    const v2, 0x8cd5

    if-eq v1, v2, :cond_0

    .line 874
    const-string v0, ""

    .line 875
    .local v0, msg:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 898
    :goto_0
    :pswitch_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 877
    :pswitch_1
    const-string v0, "FRAMEBUFFER_FORMATS"

    .line 878
    goto :goto_0

    .line 880
    :pswitch_2
    const-string v0, "FRAMEBUFFER_ATTACHMENT"

    .line 881
    goto :goto_0

    .line 883
    :pswitch_3
    const-string v0, "FRAMEBUFFER_MISSING_ATTACHMENT"

    .line 884
    goto :goto_0

    .line 886
    :pswitch_4
    const-string v0, "FRAMEBUFFER_DRAW_BUFFER"

    .line 887
    goto :goto_0

    .line 889
    :pswitch_5
    const-string v0, "FRAMEBUFFER_READ_BUFFER"

    .line 890
    goto :goto_0

    .line 892
    :pswitch_6
    const-string v0, "FRAMEBUFFER_UNSUPPORTED"

    .line 893
    goto :goto_0

    .line 895
    :pswitch_7
    const-string v0, "FRAMEBUFFER_INCOMPLETE_DIMENSIONS"

    goto :goto_0

    .line 900
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void

    .line 875
    :pswitch_data_0
    .packed-switch 0x8cd6
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)V
    .locals 9
    .parameter "source"
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 410
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getWidth()I

    move-result v3

    .line 411
    .local v3, width:I
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getHeight()I

    move-result v0

    .line 412
    .local v0, height:I
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureWidth()I

    move-result v2

    .line 413
    .local v2, texWidth:I
    invoke-virtual {p2}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureHeight()I

    move-result v1

    .line 415
    .local v1, texHeight:I
    iget v6, p0, Landroid/graphics/RectF;->left:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->left:F

    .line 416
    iget v6, p0, Landroid/graphics/RectF;->right:F

    int-to-float v7, v2

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->right:F

    .line 417
    iget v6, p0, Landroid/graphics/RectF;->top:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->top:F

    .line 418
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, p0, Landroid/graphics/RectF;->bottom:F

    .line 421
    int-to-float v6, v3

    int-to-float v7, v2

    div-float v4, v6, v7

    .line 422
    .local v4, xBound:F
    iget v6, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_0

    .line 423
    iget v6, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->left:F

    sub-float v8, v4, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->right:F

    .line 424
    iput v4, p0, Landroid/graphics/RectF;->right:F

    .line 426
    :cond_0
    int-to-float v6, v0

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 427
    .local v5, yBound:F
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    .line 428
    iget v6, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Landroid/graphics/RectF;->top:F

    sub-float v8, v5, v8

    mul-float/2addr v7, v8

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v8

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 429
    iput v5, p0, Landroid/graphics/RectF;->bottom:F

    .line 431
    :cond_1
    return-void
.end method

.method private drawBoundTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIII)V
    .locals 9
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    const/high16 v7, 0x3f00

    .line 336
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->isMatrixRotatedOrFlipped([F)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->hasBorder()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v4, v0

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v4, v1

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v4

    .line 339
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 338
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 344
    :goto_0
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p4

    int-to-float v3, p5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->textureRect(FFFF)V

    .line 357
    :cond_0
    :goto_1
    return-void

    .line 341
    :cond_1
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 342
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 341
    invoke-direct {p0, v3, v3, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setTextureCoords(FFFF)V

    goto :goto_0

    .line 347
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    add-int v3, p3, p5

    add-int v4, p2, p4

    move-object v0, p0

    move v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mapPoints([FIIII)[F

    move-result-object v6

    .line 348
    .local v6, points:[F
    aget v0, v6, v8

    add-float/2addr v0, v7

    float-to-int p2, v0

    .line 349
    const/4 v0, 0x1

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int p3, v0

    .line 350
    const/4 v0, 0x2

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p4, v0, p2

    .line 351
    const/4 v0, 0x3

    aget v0, v6, v0

    add-float/2addr v0, v7

    float-to-int v0, v0

    sub-int p5, v0, p3

    .line 352
    if-lez p4, :cond_0

    if-lez p5, :cond_0

    .line 353
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p2

    move v2, p3

    move v3, v8

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 354
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountTextureOES:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountTextureOES:I

    goto :goto_1
.end method

.method private drawMixed(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IFIIIIF)V
    .locals 7
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 532
    const v0, 0x3c23d70a

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    .line 533
    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIIIF)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    .line 536
    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    int-to-float v4, p7

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_0

    .line 540
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x3f733333

    cmpg-float v0, p8, v0

    if-gez v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 542
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->bindTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 547
    invoke-direct {p0, p2, p3, p8}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setMixedColor(IFF)V

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    .line 549
    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->drawBoundTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIII)V

    .line 550
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 540
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIIIF)V
    .locals 2
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "alpha"

    .prologue
    .line 365
    if-lez p4, :cond_0

    if-gtz p5, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3f733333

    cmpg-float v0, p6, v0

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 369
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->bindTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    invoke-virtual {v0, p6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 372
    invoke-direct/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->drawBoundTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIII)V

    goto :goto_0

    .line 368
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private freeRestoreConfig(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    iput-object v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    .line 783
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    .line 784
    return-void
.end method

.method private initialize()V
    .locals 11

    .prologue
    const v10, 0x8892

    const/4 v9, 0x1

    const/16 v8, 0x1406

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 145
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 148
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x20

    div-int/lit8 v2, v4, 0x8

    .line 149
    .local v2, size:I
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->allocateDirectNativeOrderBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    .line 150
    .local v3, xyBuffer:Ljava/nio/FloatBuffer;
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->BOX_COORDINATES:[F

    sget-object v5, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->BOX_COORDINATES:[F

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/nio/FloatBuffer;->put([FII)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 152
    new-array v1, v9, [I

    .line 153
    .local v1, name:[I
    invoke-static {v9, v1, v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLId;->glGenBuffers(I[II)V

    .line 154
    aget v4, v1, v6

    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBoxCoords:I

    .line 156
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v0, v10, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 157
    invoke-virtual {v3}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    const v5, 0x88e4

    invoke-interface {v0, v10, v4, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 159
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 160
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 163
    const v4, 0x84c1

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 164
    invoke-interface {v0, v7, v8, v6, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 165
    const v4, 0x84c0

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 166
    const v4, 0x8078

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 169
    return-void
.end method

.method private static isMatrixRotatedOrFlipped([F)Z
    .locals 6
    .parameter "matrix"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const v5, 0x3727c5ac

    .line 560
    const v0, 0x3727c5ac

    .line 561
    .local v0, eps:F
    const/4 v3, 0x4

    aget v3, p0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    aget v3, p0, v1

    const v4, -0x48d83a54

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 562
    const/4 v3, 0x5

    aget v3, p0, v3

    .line 561
    cmpl-float v3, v3, v5

    if-gtz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private mapPoints([FIIII)[F
    .locals 10
    .parameter "m"
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMapPointsBuffer:[F

    .line 317
    .local v0, r:[F
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v3, v7, v8

    .line 318
    .local v3, x3:F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v5, v7, v8

    .line 319
    .local v5, y3:F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p2

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p3

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v1, v7, v8

    .line 320
    .local v1, w3:F
    const/4 v7, 0x0

    div-float v8, v3, v1

    aput v8, v0, v7

    .line 321
    const/4 v7, 0x1

    div-float v8, v5, v1

    aput v8, v0, v7

    .line 324
    const/4 v7, 0x0

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x4

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xc

    aget v8, p1, v8

    add-float v4, v7, v8

    .line 325
    .local v4, x4:F
    const/4 v7, 0x1

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x5

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xd

    aget v8, p1, v8

    add-float v6, v7, v8

    .line 326
    .local v6, y4:F
    const/4 v7, 0x3

    aget v7, p1, v7

    int-to-float v8, p4

    mul-float/2addr v7, v8

    const/4 v8, 0x7

    aget v8, p1, v8

    int-to-float v9, p5

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/16 v8, 0xf

    aget v8, p1, v8

    add-float v2, v7, v8

    .line 327
    .local v2, w4:F
    const/4 v7, 0x2

    div-float v8, v4, v2

    aput v8, v0, v7

    .line 328
    const/4 v7, 0x3

    div-float v8, v6, v2

    aput v8, v0, v7

    .line 330
    return-object v0
.end method

.method private obtainRestoreConfig()Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    if-eqz v1, :cond_0

    .line 788
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    .line 789
    .local v0, result:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mNextFree:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRecycledRestoreAction:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    .line 792
    .end local v0           #result:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;)V

    goto :goto_0
.end method

.method private restoreTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 826
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTempMatrix:[F

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 827
    return-void
.end method

.method private saveTransform()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 822
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTempMatrix:[F

    const/16 v2, 0x10

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    return-void
.end method

.method private setMixedColor(IFF)V
    .locals 11
    .parameter "toColor"
    .parameter "ratio"
    .parameter "alpha"

    .prologue
    const v10, 0x47057500

    const/high16 v5, 0x3f80

    const v9, 0x44408000

    const v8, 0x47057600

    const/16 v7, 0x2300

    .line 466
    sub-float v4, v5, p2

    mul-float v1, p3, v4

    .line 467
    .local v1, combo:F
    mul-float v4, p3, p2

    sub-float/2addr v5, v1

    div-float v3, v4, v5

    .line 472
    .local v3, scale:F
    ushr-int/lit8 v4, p1, 0x18

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const v5, 0x477e0100

    div-float v0, v4, v5

    .line 473
    .local v0, colorScale:F
    ushr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    mul-float/2addr v4, v0

    ushr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    mul-float/2addr v5, v0

    and-int/lit16 v6, p1, 0xff

    int-to-float v6, v6

    .line 474
    mul-float/2addr v6, v0

    .line 473
    invoke-direct {p0, v4, v5, v6, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setTextureColor(FFFF)V

    .line 475
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 476
    .local v2, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v4, 0x2201

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureColor:[F

    const/4 v6, 0x0

    invoke-interface {v2, v7, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 478
    const v4, 0x8571

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 479
    const v4, 0x8572

    invoke-interface {v2, v7, v4, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 480
    const v4, 0x8581

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 481
    const v4, 0x8591

    const/high16 v5, 0x4440

    invoke-interface {v2, v7, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 482
    const v4, 0x8589

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 483
    const v4, 0x8599

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 486
    const v4, 0x8582

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 487
    const v4, 0x8592

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 490
    const v4, 0x858a

    invoke-interface {v2, v7, v4, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 491
    const v4, 0x859a

    invoke-interface {v2, v7, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 493
    return-void
.end method

.method private setRenderTarget(Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V
    .locals 6
    .parameter "texture"

    .prologue
    const/4 v3, 0x1

    const v1, 0x8d40

    const/4 v5, 0x0

    .line 830
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 832
    .local v0, gl11ep:Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    if-nez v2, :cond_0

    if-eqz p1, :cond_0

    .line 833
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mFrameBuffer:[I

    invoke-static {v3, v2, v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLId;->glGenBuffers(I[II)V

    .line 834
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mFrameBuffer:[I

    aget v2, v2, v5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 836
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    if-eqz v2, :cond_1

    if-nez p1, :cond_1

    .line 837
    invoke-interface {v0, v1, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 838
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mFrameBuffer:[I

    invoke-interface {v0, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glDeleteFramebuffersOES(I[II)V

    .line 841
    :cond_1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    .line 842
    if-nez p1, :cond_2

    .line 843
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mScreenWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mScreenHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setSize(II)V

    .line 855
    :goto_0
    return-void

    .line 845
    :cond_2
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setSize(II)V

    .line 847
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->isLoaded()Z

    move-result v2

    if-nez v2, :cond_3

    .line 848
    invoke-virtual {p1, p0}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->prepare(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 850
    :cond_3
    const v2, 0x8ce0

    .line 851
    const/16 v3, 0xde1

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->getId()I

    move-result v4

    .line 850
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 853
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->checkFramebufferStatus(Ljavax/microedition/khronos/opengles/GL11ExtensionPack;)V

    goto :goto_0
.end method

.method private setTextureColor(FFFF)V
    .locals 2
    .parameter "r"
    .parameter "g"
    .parameter "b"
    .parameter "alpha"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureColor:[F

    .line 449
    .local v0, color:[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 450
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 451
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 452
    const/4 v1, 0x3

    aput p4, v0, v1

    .line 453
    return-void
.end method

.method private setTextureCoords(FFFF)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 695
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 696
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureMatrixValues:[F

    sub-float v1, p3, p1

    aput v1, v0, v4

    .line 697
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/4 v1, 0x5

    sub-float v2, p4, p2

    aput v2, v0, v1

    .line 698
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xa

    aput v3, v0, v1

    .line 699
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 700
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 701
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureMatrixValues:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    .line 702
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTextureMatrixValues:[F

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 703
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 704
    return-void
.end method

.method private setTextureCoords(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 691
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 692
    return-void
.end method

.method private setTextureCoords([F)V
    .locals 2
    .parameter "mTextureTransform"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1702

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 708
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 709
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x1700

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 710
    return-void
.end method

.method private textureRect(FFFF)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 265
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->saveTransform()V

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->translate(FF)V

    .line 267
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->scale(FFF)V

    .line 269
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 270
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 272
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->restoreTransform()V

    .line 273
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountTextureRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountTextureRect:I

    .line 274
    return-void
.end method


# virtual methods
.method public beginRenderTarget(Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 866
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->save()V

    .line 867
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 868
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setRenderTarget(Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V

    .line 869
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    .line 687
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->clearBuffer([F)V

    .line 688
    return-void
.end method

.method public clearBuffer([F)V
    .locals 5
    .parameter "argb"

    .prologue
    const/4 v2, 0x0

    .line 677
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 678
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    const/4 v3, 0x3

    aget v3, p1, v3

    const/4 v4, 0x0

    aget v4, p1, v4

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 682
    :goto_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0x4000

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 683
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    goto :goto_0
.end method

.method public deleteBuffer(I)V
    .locals 2
    .parameter "bufferId"

    .prologue
    .line 726
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mUnboundTextures:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    monitor-enter v1

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDeleteBuffers:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->add(I)V

    .line 726
    monitor-exit v1

    .line 729
    return-void

    .line 726
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteRecycledResources()V
    .locals 6

    .prologue
    .line 733
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mUnboundTextures:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    monitor-enter v2

    .line 734
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mUnboundTextures:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    .line 735
    .local v0, ids:Lcom/pantech/app/vegacamera/bridge/util/IntArray;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLId;->glDeleteTextures(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 737
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->clear()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDeleteBuffers:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    .line 741
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 742
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->size()I

    move-result v3

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->getInternalArray()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLId;->glDeleteBuffers(Ljavax/microedition/khronos/opengles/GL11;I[II)V

    .line 743
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->clear()V

    .line 733
    :cond_1
    monitor-exit v2

    .line 746
    return-void

    .line 733
    .end local v0           #ids:Lcom/pantech/app/vegacamera/bridge/util/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public drawLine(FFFFLcom/pantech/app/vegacamera/bridge/glui/GLPaint;)V
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"
    .parameter "paint"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 193
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/pantech/app/vegacamera/bridge/glui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 194
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/pantech/app/vegacamera/bridge/glui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 196
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->saveTransform()V

    .line 197
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->translate(FF)V

    .line 198
    sub-float v1, p3, p1

    sub-float v2, p4, p2

    const/high16 v3, 0x3f80

    invoke-virtual {p0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->scale(FFF)V

    .line 200
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 201
    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 203
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->restoreTransform()V

    .line 204
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawLine:I

    .line 205
    return-void
.end method

.method public drawMesh(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIIIII)V
    .locals 8
    .parameter "tex"
    .parameter "x"
    .parameter "y"
    .parameter "xyBuffer"
    .parameter "uvBuffer"
    .parameter "indexBuffer"
    .parameter "indexCount"

    .prologue
    const/4 v4, 0x0

    const v7, 0x8892

    const/16 v6, 0x1406

    const/4 v5, 0x2

    const/4 v2, 0x0

    .line 278
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    .line 279
    .local v0, alpha:F
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->bindTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->isOpaque()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x3f733333

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 283
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 287
    const/high16 v1, 0x3f80

    const/high16 v3, 0x3f80

    invoke-direct {p0, v4, v4, v1, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setTextureCoords(FFFF)V

    .line 289
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->saveTransform()V

    .line 290
    int-to-float v1, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->translate(FF)V

    .line 292
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 294
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 295
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 297
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v7, p5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 298
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 300
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const v3, 0x8893

    invoke-interface {v1, v3, p6}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 301
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x5

    const/16 v4, 0x1401

    invoke-interface {v1, v3, p7, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 303
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBoxCoords:I

    invoke-interface {v1, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 304
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 305
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v1, v5, v6, v2, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 307
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->restoreTransform()V

    .line 308
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawMesh:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawMesh:I

    goto :goto_0

    :cond_2
    move v1, v2

    .line 282
    goto :goto_1
.end method

.method public drawMixed(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IFIIII)V
    .locals 9
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 435
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->drawMixed(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IFIIIIF)V

    .line 436
    return-void
.end method

.method public drawMixed(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 7
    .parameter "from"
    .parameter "toColor"
    .parameter "ratio"
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 497
    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    const v0, 0x3c23d70a

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_2

    .line 501
    invoke-virtual {p0, p1, p4, p5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0

    .line 503
    :cond_2
    const/high16 v0, 0x3f80

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_3

    .line 504
    iget v1, p5, Landroid/graphics/RectF;->left:F

    iget v2, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v4

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->fillRect(FFFFI)V

    goto :goto_0

    .line 508
    :cond_3
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    .line 511
    .local v6, alpha:F
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 512
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 513
    iget-object p4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 514
    iget-object p5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 516
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->isOpaque(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3f733333

    cmpg-float v0, v6, v0

    if-gez v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 518
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->bindTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    const v1, 0x8570

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    .line 523
    invoke-direct {p0, p2, p3, v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setMixedColor(IFF)V

    .line 524
    invoke-static {p4, p5, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)V

    .line 525
    invoke-direct {p0, p4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 526
    iget v0, p5, Landroid/graphics/RectF;->left:F

    iget v1, p5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p5}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p5}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->textureRect(FFFF)V

    .line 527
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    const/16 v1, 0x1e01

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTexEnvMode(I)V

    goto :goto_0

    .line 516
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawRect(FFFFLcom/pantech/app/vegacamera/bridge/glui/GLPaint;)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "paint"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 175
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/pantech/app/vegacamera/bridge/glui/GLPaint;->getColor()I

    move-result v2

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 176
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    invoke-virtual {p5}, Lcom/pantech/app/vegacamera/bridge/glui/GLPaint;->getLineWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setLineWidth(F)V

    .line 178
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->saveTransform()V

    .line 179
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->translate(FF)V

    .line 180
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->scale(FFF)V

    .line 182
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 183
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 185
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->restoreTransform()V

    .line 186
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawLine:I

    .line 187
    return-void
.end method

.method public drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIII)V
    .locals 7
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 361
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IIIIF)V

    .line 362
    return-void
.end method

.method public drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4
    .parameter "texture"
    .parameter "source"
    .parameter "target"

    .prologue
    const/4 v1, 0x0

    .line 377
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 382
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 383
    iget-object p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureSourceRect:Landroid/graphics/RectF;

    .line 384
    iget-object p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mDrawTextureTargetRect:Landroid/graphics/RectF;

    .line 386
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 387
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->bindTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-static {p2, p3, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->convertCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)V

    .line 390
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setTextureCoords(Landroid/graphics/RectF;)V

    .line 391
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 392
    iget v0, p3, Landroid/graphics/RectF;->left:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_0

    .line 386
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;[FIIII)V
    .locals 4
    .parameter "texture"
    .parameter "mTextureTransform"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 397
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mBlendEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    const v2, 0x3f733333

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setBlendEnabled(Z)V

    .line 398
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->bindTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 403
    :goto_1
    return-void

    .line 397
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 400
    :cond_2
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setTextureCoords([F)V

    .line 401
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setTextureAlpha(F)V

    .line 402
    int-to-float v0, p3

    int-to-float v1, p4

    int-to-float v2, p5

    int-to-float v3, p6

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->textureRect(FFFF)V

    goto :goto_1
.end method

.method public dumpStatisticsAndClear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 811
    const-string v1, "MESH:%d, TEX_OES:%d, TEX_RECT:%d, FILL_RECT:%d, LINE:%d"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawMesh:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountTextureRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 812
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountTextureOES:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountFillRect:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawLine:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 811
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 813
    .local v0, line:Ljava/lang/String;
    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawMesh:I

    .line 814
    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountTextureRect:I

    .line 815
    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountTextureOES:I

    .line 816
    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountFillRect:I

    .line 817
    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountDrawLine:I

    .line 818
    const-string v1, "GLCanvasImp"

    invoke-static {v1, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    return-void
.end method

.method public endRenderTarget()V
    .locals 3

    .prologue
    .line 859
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    .line 860
    .local v0, texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->setRenderTarget(Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V

    .line 861
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->restore()V

    .line 862
    return-void
.end method

.method public fillRect(FFFFI)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "color"

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGLState:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    invoke-virtual {v1, p5, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$GLState;->setColorMode(IF)V

    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 212
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->saveTransform()V

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->translate(FF)V

    .line 214
    const/high16 v1, 0x3f80

    invoke-virtual {p0, p3, p4, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->scale(FFF)V

    .line 216
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    invoke-interface {v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glLoadMatrixf([FI)V

    .line 217
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glDrawArrays(III)V

    .line 219
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->restoreTransform()V

    .line 220
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountFillRect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mCountFillRect:I

    .line 221
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    return v0
.end method

.method public getGLInstance()Ljavax/microedition/khronos/opengles/GL11;
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    return-object v0
.end method

.method public multiplyAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 136
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 137
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    .line 138
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public multiplyMatrix([FI)V
    .locals 6
    .parameter "matrix"
    .parameter "offset"

    .prologue
    const/4 v1, 0x0

    .line 257
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTempMatrix:[F

    .line 258
    .local v0, temp:[F
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 259
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    const/16 v3, 0x10

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    return-void
.end method

.method public restore()V
    .locals 3

    .prologue
    .line 774
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 775
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    .line 777
    .local v0, config:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->restore(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;)V

    .line 778
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->freeRestoreConfig(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;)V

    .line 779
    return-void
.end method

.method public rotate(FFFF)V
    .locals 9
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    .line 247
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 253
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTempMatrix:[F

    .local v0, temp:[F
    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 250
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 251
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    move-object v2, v0

    move v3, v8

    move v5, v1

    move-object v6, v0

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 252
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    invoke-static {v0, v8, v2, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 750
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->save(I)V

    .line 751
    return-void
.end method

.method public save(I)V
    .locals 5
    .parameter "saveFlags"

    .prologue
    const/4 v4, 0x0

    .line 755
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->obtainRestoreConfig()Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;

    move-result-object v0

    .line 757
    .local v0, config:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 758
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mAlpha:F

    .line 763
    :goto_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 764
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/16 v3, 0x10

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 769
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mRestoreStack:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 770
    return-void

    .line 760
    :cond_0
    const/high16 v1, -0x4080

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mAlpha:F

    goto :goto_0

    .line 766
    :cond_1
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl$ConfigState;->mMatrix:[F

    const/high16 v2, -0x80

    aput v2, v1, v4

    goto :goto_1
.end method

.method public scale(FFF)V
    .locals 2
    .parameter "sx"
    .parameter "sy"
    .parameter "sz"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 243
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 125
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 126
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    .line 127
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSize(II)V
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 97
    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 99
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    if-nez v2, :cond_0

    .line 100
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mScreenWidth:I

    .line 101
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mScreenHeight:I

    .line 103
    :cond_0
    iput v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mAlpha:F

    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 106
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-interface {v0, v3, v3, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 107
    const/16 v2, 0x1701

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 108
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 109
    int-to-float v2, p1

    int-to-float v4, p2

    invoke-static {v0, v5, v2, v5, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 111
    const/16 v2, 0x1700

    invoke-interface {v0, v2}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 112
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 114
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    .line 115
    .local v1, matrix:[F
    invoke-static {v1, v3}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 117
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mTargetTexture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    if-nez v2, :cond_1

    .line 118
    int-to-float v2, p2

    invoke-static {v1, v3, v5, v2, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 119
    const/high16 v2, -0x4080

    invoke-static {v1, v3, v6, v2, v6}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 121
    :cond_1
    return-void

    .end local v0           #gl:Ljavax/microedition/khronos/opengles/GL11;
    .end local v1           #matrix:[F
    :cond_2
    move v2, v3

    .line 97
    goto :goto_0
.end method

.method public translate(FF)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    .line 234
    .local v0, m:[F
    const/16 v1, 0xc

    aget v2, v0, v1

    const/4 v3, 0x0

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x4

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 235
    const/16 v1, 0xd

    aget v2, v0, v1

    const/4 v3, 0x1

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x5

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 236
    const/16 v1, 0xe

    aget v2, v0, v1

    const/4 v3, 0x2

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x6

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 237
    const/16 v1, 0xf

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v3, v0, v3

    mul-float/2addr v3, p1

    const/4 v4, 0x7

    aget v4, v0, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 238
    return-void
.end method

.method public translate(FFF)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mMatrixValues:[F

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 226
    return-void
.end method

.method public unloadTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;)Z
    .locals 3
    .parameter "t"

    .prologue
    .line 716
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mUnboundTextures:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    monitor-enter v1

    .line 717
    :try_start_0
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    monitor-exit v1

    const/4 v0, 0x0

    .line 720
    :goto_0
    return v0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvasImpl;->mUnboundTextures:Lcom/pantech/app/vegacamera/bridge/util/IntArray;

    iget v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/util/IntArray;->add(I)V

    .line 720
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    .line 716
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
