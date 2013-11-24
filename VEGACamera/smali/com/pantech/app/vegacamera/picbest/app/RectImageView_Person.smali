.class public Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;
.super Landroid/widget/ImageView;
.source "RectImageView_Person.java"


# instance fields
.field private mFaceBitmap:Landroid/graphics/Bitmap;

.field private mIsSelected:Z

.field private mRotateDegress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mIsSelected:Z

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mRotateDegress:F

    .line 27
    return-void
.end method


# virtual methods
.method public bitmapRecycle()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 43
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    .line 59
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    .line 85
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    .line 64
    .local v6, width:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    .line 65
    .local v1, height:I
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 66
    .local v4, paint:Landroid/graphics/Paint;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->getWidth()I

    move-result v7

    sub-int v7, v6, v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v2, v7, -0x6

    .line 68
    .local v2, offsetX:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->getHeight()I

    move-result v7

    sub-int v7, v1, v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v3, v7, -0xa

    .line 69
    .local v3, offsetY:I
    new-instance v5, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-direct {v5, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 70
    .local v5, src_face_rect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    sub-int v7, v6, v2

    sub-int v8, v1, v3

    invoke-direct {v0, v2, v3, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 72
    .local v0, dst_face_rect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    iget v7, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mRotateDegress:F

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 75
    iget v7, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    neg-int v7, v7

    int-to-float v7, v7

    iget v8, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v7, v5, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 79
    iget-boolean v7, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mIsSelected:Z

    if-nez v7, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    sget v8, Lcom/pantech/app/vegacamera/R$drawable;->camera_effect_normal:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    sget v8, Lcom/pantech/app/vegacamera/R$drawable;->camera_effect_selected:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public setFaceSource(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "faceBitmap"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 35
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->invalidate()V

    .line 36
    return-void
.end method

.method public setIsSelected(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mIsSelected:Z

    .line 47
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->invalidate()V

    .line 48
    return-void
.end method

.method public setRotateDegress(F)V
    .locals 0
    .parameter "degress"

    .prologue
    .line 52
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->mRotateDegress:F

    .line 53
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->invalidate()V

    .line 54
    return-void
.end method
