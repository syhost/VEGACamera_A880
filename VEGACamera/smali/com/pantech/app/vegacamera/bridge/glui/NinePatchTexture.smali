.class public Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;
.super Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;
.source "NinePatchTexture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;
    }
.end annotation


# instance fields
.field private mChunk:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;

.field private mInstanceCache:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 41
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mInstanceCache:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;

    .line 45
    return-void
.end method

.method private findInstance(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;
    .locals 4
    .parameter "canvas"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 143
    move v1, p2

    .line 144
    .local v1, key:I
    shl-int/lit8 v3, v1, 0x10

    or-int v1, v3, p3

    .line 145
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mInstanceCache:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;

    invoke-virtual {v3, v1}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;

    .line 147
    .local v0, instance:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;
    if-nez v0, :cond_0

    .line 148
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;

    .end local v0           #instance:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;
    invoke-direct {v0, p0, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;II)V

    .line 149
    .restart local v0       #instance:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mInstanceCache:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;

    invoke-virtual {v3, v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;

    .line 150
    .local v2, removed:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;
    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;->recycle(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 155
    .end local v2           #removed:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public bridge synthetic draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V

    return-void
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mInstanceCache:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;->clear()V

    .line 164
    :cond_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 165
    invoke-direct {p0, p1, p4, p5}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->findInstance(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;II)V

    .line 167
    :cond_1
    return-void
.end method

.method public bridge synthetic getHeight()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->getHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->getId()I

    move-result v0

    return v0
.end method

.method public getNinePatchChunk()Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mChunk:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mChunk:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;

    return-object v0
.end method

.method public getPaddings()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mChunk:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->onGetBitmap()Landroid/graphics/Bitmap;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mChunk:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->mPaddings:Landroid/graphics/Rect;

    return-object v0
.end method

.method public bridge synthetic getTextureHeight()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->getTextureHeight()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTextureWidth()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->getTextureWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWidth()I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->getWidth()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasBorder()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->hasBorder()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isContentValid()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->isContentValid()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isLoaded()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->isLoaded()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isOpaque()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isUploading()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->isUploading()Z

    move-result v0

    return v0
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 49
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 50
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 62
    :cond_0
    return-object v0

    .line 52
    :cond_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 53
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 54
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mResId:I

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 55
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->setSize(II)V

    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    .line 58
    .local v1, chunkData:[B
    if-nez v1, :cond_2

    const/4 v3, 0x0

    :goto_0
    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mChunk:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;

    .line 59
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mChunk:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;

    if-nez v3, :cond_0

    .line 60
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "invalid nine-patch image: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mResId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 58
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;->deserialize([B)Lcom/pantech/app/vegacamera/bridge/glui/NinePatchChunk;

    move-result-object v3

    goto :goto_0
.end method

.method public recycle()V
    .locals 5

    .prologue
    .line 171
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->recycle()V

    .line 172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mCanvasRef:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;

    .line 173
    .local v0, canvas:Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;
    if-nez v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mInstanceCache:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;->size()I

    move-result v3

    .line 176
    .local v3, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v3, :cond_1

    .line 180
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mInstanceCache:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;->clear()V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture;->mInstanceCache:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;

    invoke-virtual {v4, v1}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchTexture$SmallCache;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;

    .line 178
    .local v2, instance:Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;
    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/bridge/glui/NinePatchInstance;->recycle(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public bridge synthetic setOpaque(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->setOpaque(Z)V

    return-void
.end method

.method public bridge synthetic updateContent(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->updateContent(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    return-void
.end method

.method public bridge synthetic yield()V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;->yield()V

    return-void
.end method
