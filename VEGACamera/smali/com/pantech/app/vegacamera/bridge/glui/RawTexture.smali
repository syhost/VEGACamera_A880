.class public Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;
.super Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
.source "RawTexture.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RawTexture"

.field private static final sCropRect:[F

.field private static final sTextureId:[I


# instance fields
.field private final mOpaque:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sTextureId:[I

    .line 28
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sCropRect:[F

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "opaque"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;-><init>()V

    .line 33
    iput-boolean p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->mOpaque:Z

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->setSize(II)V

    .line 35
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V

    return-void
.end method

.method public bridge synthetic draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getId()I

    move-result v0

    return v0
.end method

.method protected getTarget()I
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0xde1

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->mOpaque:Z

    return v0
.end method

.method protected onBind(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z
    .locals 2
    .parameter "canvas"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    .line 75
    :cond_0
    const-string v0, "RawTexture"

    const-string v1, "lost the content due to context change"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepare(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/16 v3, 0x1908

    const v7, 0x46180400

    const/4 v10, 0x1

    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 43
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    .line 49
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sCropRect:[F

    const/4 v5, 0x0

    aput v5, v4, v2

    .line 50
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sCropRect:[F

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->mHeight:I

    int-to-float v5, v5

    aput v5, v4, v10

    .line 51
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sCropRect:[F

    const/4 v5, 0x2

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->mWidth:I

    int-to-float v6, v6

    aput v6, v4, v5

    .line 52
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sCropRect:[F

    const/4 v5, 0x3

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->mHeight:I

    neg-int v6, v6

    int-to-float v6, v6

    aput v6, v4, v5

    .line 55
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sTextureId:[I

    invoke-static {v10, v4, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLId;->glGenTextures(I[II)V

    .line 56
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sTextureId:[I

    aget v4, v4, v2

    invoke-interface {v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 57
    const v4, 0x8b9d

    sget-object v5, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sCropRect:[F

    invoke-interface {v0, v1, v4, v5, v2}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 58
    const/16 v4, 0x2802

    const v5, 0x812f

    invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 59
    const/16 v4, 0x2803

    const v5, 0x812f

    invoke-interface {v0, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 60
    const/16 v4, 0x2801

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 61
    const/16 v4, 0x2800

    invoke-interface {v0, v1, v4, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 63
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->getTextureWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->getTextureHeight()I

    move-result v5

    .line 64
    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v6, v2

    move v7, v3

    .line 63
    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 66
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->sTextureId:[I

    aget v1, v1, v2

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->mId:I

    .line 67
    iput v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->mState:I

    .line 68
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;->setAssociatedCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 69
    return-void
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;->recycle()V

    return-void
.end method

.method public yield()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method
