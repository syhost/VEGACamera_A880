.class public Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;
.super Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;
.source "ExtTexture.java"


# static fields
.field private static sCropRect:[F

.field private static sTextureId:[I


# instance fields
.field private mTarget:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->sTextureId:[I

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [F

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->sCropRect:[F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .parameter "target"

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;-><init>()V

    .line 30
    const/4 v0, 0x1

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->sTextureId:[I

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/GLId;->glGenTextures(I[II)V

    .line 31
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->sTextureId:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mId:I

    .line 32
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mTarget:I

    .line 33
    return-void
.end method

.method private uploadToCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const v9, 0x812f

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x46180400

    .line 36
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->getGLInstance()Ljavax/microedition/khronos/opengles/GL11;

    move-result-object v0

    .line 38
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->getWidth()I

    move-result v2

    .line 39
    .local v2, width:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->getHeight()I

    move-result v1

    .line 43
    .local v1, height:I
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->sCropRect:[F

    const/4 v4, 0x0

    aput v4, v3, v7

    .line 44
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->sCropRect:[F

    int-to-float v4, v1

    aput v4, v3, v8

    .line 45
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->sCropRect:[F

    const/4 v4, 0x2

    int-to-float v5, v2

    aput v5, v3, v4

    .line 46
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->sCropRect:[F

    const/4 v4, 0x3

    neg-int v5, v1

    int-to-float v5, v5

    aput v5, v3, v4

    .line 49
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mTarget:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mId:I

    invoke-interface {v0, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 50
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mTarget:I

    const v4, 0x8b9d

    sget-object v5, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->sCropRect:[F

    invoke-interface {v0, v3, v4, v5, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterfv(II[FI)V

    .line 51
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mTarget:I

    const/16 v4, 0x2802

    invoke-interface {v0, v3, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 52
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mTarget:I

    const/16 v4, 0x2803

    invoke-interface {v0, v3, v4, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 53
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mTarget:I

    const/16 v4, 0x2801

    invoke-interface {v0, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 54
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mTarget:I

    const/16 v4, 0x2800

    invoke-interface {v0, v3, v4, v6}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 56
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->setAssociatedCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 57
    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mState:I

    .line 58
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

.method public getTarget()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->mTarget:I

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
    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method protected onBind(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z
    .locals 1
    .parameter "canvas"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/ExtTexture;->uploadToCanvas(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 66
    :cond_0
    const/4 v0, 0x1

    return v0
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
