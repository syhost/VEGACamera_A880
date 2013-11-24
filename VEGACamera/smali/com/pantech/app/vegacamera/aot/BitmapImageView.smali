.class public Lcom/pantech/app/vegacamera/aot/BitmapImageView;
.super Lcom/pantech/app/vegacamera/aot/AnimationImageView;
.source "BitmapImageView.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private positionX:I

.field private positionY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/aot/AnimationImageView;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 15
    iput v1, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionX:I

    .line 16
    iput v1, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionY:I

    .line 20
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setBackgroundColor(I)V

    .line 21
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setVisibleAnimation()V

    .line 22
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setInvisibleAnimation()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/aot/AnimationImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 15
    iput v1, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionX:I

    .line 16
    iput v1, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionY:I

    .line 27
    const/high16 v0, -0x100

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setBackgroundColor(I)V

    .line 28
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setVisibleAnimation()V

    .line 29
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setInvisibleAnimation()V

    .line 30
    return-void
.end method

.method private setInvisibleAnimation()V
    .locals 4

    .prologue
    .line 57
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 58
    .local v1, aniset:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 59
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 61
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setInvisibleAnimation(Landroid/view/animation/AnimationSet;)V

    .line 63
    return-void
.end method

.method private setVisibleAnimation()V
    .locals 4

    .prologue
    .line 48
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 49
    .local v1, aniset:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 50
    .local v0, alpha:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->setVisibleAnimation(Landroid/view/animation/AnimationSet;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getBitmapHight()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getBitmapWidth()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionY:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/aot/AnimationImageView;->onVisibilityChanged(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public resetPosition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionX:I

    .line 91
    iput v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionY:I

    .line 92
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->invalidate()V

    .line 37
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 85
    iput p1, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionX:I

    .line 86
    iput p2, p0, Lcom/pantech/app/vegacamera/aot/BitmapImageView;->positionY:I

    .line 87
    return-void
.end method
