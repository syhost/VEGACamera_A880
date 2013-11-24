.class public Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;
.super Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;
.source "BitmapTexture.java"


# instance fields
.field protected mContentBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "hasBorder"

    .prologue
    .line 36
    invoke-direct {p0, p2}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;-><init>(Z)V

    .line 37
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 38
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V

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
    invoke-super/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getId()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUploading()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->isUploading()Z

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 44
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;->mContentBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic recycle()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->recycle()V

    return-void
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->updateContent(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;->yield()V

    return-void
.end method
