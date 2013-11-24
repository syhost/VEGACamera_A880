.class public Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;
.super Landroid/widget/ImageView;
.source "ArcImageView.java"


# instance fields
.field private mCircleSourceId:I

.field private mFaceBitmap:Landroid/graphics/Bitmap;

.field private mFaceHeight:I

.field private mFaceWidth:I

.field private mIsSelected:Z

.field private mRotateDegress:F

.field private mSelectSourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mIsSelected:Z

    .line 16
    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mSelectSourceId:I

    .line 17
    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mCircleSourceId:I

    .line 18
    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceWidth:I

    .line 19
    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceHeight:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mRotateDegress:F

    .line 25
    return-void
.end method


# virtual methods
.method public bitmapRecycle()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 43
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 71
    iget-object v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mSelectSourceId:I

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mCircleSourceId:I

    if-nez v11, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceWidth:I

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceHeight:I

    if-eqz v11, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->getWidth()I

    move-result v10

    .line 78
    .local v10, width:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->getHeight()I

    move-result v2

    .line 79
    .local v2, height:I
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 80
    .local v7, paint:Landroid/graphics/Paint;
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 82
    iget v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceWidth:I

    sub-int v11, v10, v11

    div-int/lit8 v5, v11, 0x2

    .line 83
    .local v5, offsetX:I
    iget v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceHeight:I

    sub-int v11, v2, v11

    div-int/lit8 v11, v11, 0x2

    add-int/lit8 v6, v11, -0x4

    .line 84
    .local v6, offsetY:I
    new-instance v9, Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v9, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 85
    .local v9, src_face_rect:Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    sub-int v11, v10, v5

    sub-int v12, v2, v6

    invoke-direct {v1, v5, v6, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 87
    .local v1, dst_face_rect:Landroid/graphics/Rect;
    iget-boolean v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mIsSelected:Z

    if-nez v11, :cond_2

    .line 88
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mCircleSourceId:I

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 89
    .local v3, mCircleBitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v8, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 90
    .local v8, src_Select_rect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v13, v13, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 91
    .local v0, dst_Select_rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v3, v8, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 92
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 102
    .end local v3           #mCircleBitmap:Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 103
    iget v11, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    int-to-float v11, v11

    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    iget v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mRotateDegress:F

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->rotate(F)V

    .line 105
    iget v11, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    neg-int v11, v11

    int-to-float v11, v11

    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    neg-int v12, v12

    int-to-float v12, v12

    invoke-virtual {p1, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    iget-object v11, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v11, v9, v1, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 95
    .end local v0           #dst_Select_rect:Landroid/graphics/Rect;
    .end local v8           #src_Select_rect:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mSelectSourceId:I

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 96
    .local v4, mSelectBitmap:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-direct {v8, v13, v13, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 97
    .restart local v8       #src_Select_rect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v13, v13, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .restart local v0       #dst_Select_rect:Landroid/graphics/Rect;
    invoke-virtual {p1, v4, v8, v0, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 99
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1
.end method

.method public setFaceSize(II)V
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 46
    const/16 v0, 0x12c

    if-le p1, v0, :cond_0

    .line 47
    add-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceWidth:I

    .line 48
    add-int/lit8 v0, p2, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceHeight:I

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->invalidate()V

    .line 54
    return-void

    .line 50
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceWidth:I

    .line 51
    iput p2, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceHeight:I

    goto :goto_0
.end method

.method public setFaceSource(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "faceBitmap"
    .parameter "circleSourceID"
    .parameter "selectSourceId"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 32
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mFaceBitmap:Landroid/graphics/Bitmap;

    .line 33
    iput p2, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mCircleSourceId:I

    .line 34
    iput p3, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mSelectSourceId:I

    .line 35
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->invalidate()V

    .line 36
    return-void
.end method

.method public setIsSelected(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mIsSelected:Z

    .line 58
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->invalidate()V

    .line 59
    return-void
.end method

.method public setRotateDegress(F)V
    .locals 0
    .parameter "degress"

    .prologue
    .line 63
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->mRotateDegress:F

    .line 64
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->invalidate()V

    .line 65
    return-void
.end method
