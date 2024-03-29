.class abstract Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;
.super Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;
.source "CanvasTexture.java"


# instance fields
.field protected mCanvas:Landroid/graphics/Canvas;

.field private final mConfig:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/UploadedTexture;-><init>()V

    .line 31
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->setSize(II)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->setOpaque(Z)V

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 46
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->inFinalizer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 49
    :cond_0
    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 38
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->mWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->mHeight:I

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->mConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    .line 40
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/CanvasTexture;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    .line 41
    return-object v0
.end method
