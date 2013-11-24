.class public Lcom/pantech/app/vegacamera/picbest/app/PicImgView;
.super Landroid/widget/ImageView;
.source "PicImgView.java"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field private mRotateDegress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mRotateDegress:F

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mBitmap:Landroid/graphics/Bitmap;

    .line 23
    return-void
.end method


# virtual methods
.method public bitmapRecycle()V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mBitmap:Landroid/graphics/Bitmap;

    .line 30
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 49
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_0

    .line 101
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 52
    .local v2, bounds:Landroid/graphics/Rect;
    iget v14, v2, Landroid/graphics/Rect;->right:I

    iget v15, v2, Landroid/graphics/Rect;->left:I

    sub-int v12, v14, v15

    .line 53
    .local v12, w:I
    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    sub-int v4, v14, v15

    .line 55
    .local v4, h:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->getPaddingLeft()I

    move-result v6

    .line 56
    .local v6, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->getPaddingTop()I

    move-result v11

    .line 57
    .local v11, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->getPaddingRight()I

    move-result v7

    .line 58
    .local v7, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->getPaddingBottom()I

    move-result v1

    .line 59
    .local v1, bottom:I
    const/4 v10, 0x0

    .line 60
    .local v10, scaleW:F
    const/4 v9, 0x0

    .line 61
    .local v9, scaleH:F
    const/4 v8, 0x0

    .line 62
    .local v8, scale:F
    const/4 v13, 0x0

    .line 63
    .local v13, width:I
    const/4 v5, 0x0

    .line 64
    .local v5, height:I
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedBestshotOrientation()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_4

    .line 66
    sget v13, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    .line 67
    sget v5, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    .line 78
    :cond_1
    :goto_1
    sget v14, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_0:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mRotateDegress:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_2

    .line 79
    sget v14, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_180:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mRotateDegress:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_6

    .line 80
    :cond_2
    int-to-float v14, v13

    int-to-float v15, v12

    div-float v10, v14, v15

    .line 81
    int-to-float v14, v5

    int-to-float v15, v4

    div-float v9, v14, v15

    .line 88
    :cond_3
    :goto_2
    cmpg-float v14, v10, v9

    if-gez v14, :cond_8

    .line 89
    move v8, v10

    .line 94
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 95
    div-int/lit8 v14, v13, 0x2

    add-int/2addr v14, v6

    int-to-float v14, v14

    div-int/lit8 v15, v5, 0x2

    add-int/2addr v15, v11

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 96
    move-object/from16 v0, p0

    iget v14, v0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mRotateDegress:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->rotate(F)V

    .line 97
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 98
    neg-int v14, v12

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    neg-int v15, v4

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 68
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 69
    sget v13, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    .line 70
    sget v5, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    .line 73
    goto :goto_1

    .line 74
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->getWidth()I

    move-result v14

    sub-int/2addr v14, v6

    sub-int v13, v14, v7

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->getHeight()I

    move-result v14

    sub-int/2addr v14, v11

    sub-int v5, v14, v1

    goto :goto_1

    .line 82
    :cond_6
    sget v14, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_90:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mRotateDegress:F

    cmpl-float v14, v14, v15

    if-eqz v14, :cond_7

    .line 83
    sget v14, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_270:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mRotateDegress:F

    cmpl-float v14, v14, v15

    if-nez v14, :cond_3

    .line 84
    :cond_7
    int-to-float v14, v13

    int-to-float v15, v4

    div-float v10, v14, v15

    .line 85
    int-to-float v14, v5

    int-to-float v15, v12

    div-float v9, v14, v15

    goto :goto_2

    .line 91
    :cond_8
    move v8, v9

    goto :goto_3
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mBitmap:Landroid/graphics/Bitmap;

    .line 43
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->invalidate()V

    .line 44
    return-void
.end method

.method public setRotateDegress(F)V
    .locals 0
    .parameter "degress"

    .prologue
    .line 33
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->mRotateDegress:F

    .line 34
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->invalidate()V

    .line 35
    return-void
.end method
