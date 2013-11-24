.class Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;
.super Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Drawable"
.end annotation


# instance fields
.field private mAlpha:I

.field private mBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 382
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    .line 378
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    .line 379
    const/16 v0, 0xff

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->mAlpha:I

    .line 383
    return-void
.end method


# virtual methods
.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 402
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 403
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->mAlpha:I

    int-to-float v0, v0

    const/high16 v1, 0x437f

    div-float/2addr v0, v1

    invoke-interface {p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->multiplyAlpha(F)V

    .line 404
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    .line 405
    .local v6, b:Landroid/graphics/Rect;
    iget v2, v6, Landroid/graphics/Rect;->left:I

    iget v3, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 406
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    .line 407
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->getWidth()I

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 398
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->mAlpha:I

    .line 399
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/EdgeEffect$Drawable;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 395
    return-void
.end method
