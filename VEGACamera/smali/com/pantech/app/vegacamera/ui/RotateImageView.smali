.class public Lcom/pantech/app/vegacamera/ui/RotateImageView;
.super Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e


# instance fields
.field private bClockwise:Z

.field private bEnableAnimation:Z

.field private drawable:Landroid/graphics/drawable/Drawable;

.field private iCurrentDegree:I

.field private iStartDegree:I

.field private iTargetDegree:I

.field private lAnimationEndTime:J

.field private lAnimationStartTime:J

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbMask:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private final miniThumbHeight:I

.field private final miniThumbWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 27
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->bClockwise:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->bEnableAnimation:Z

    .line 30
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iCurrentDegree:I

    .line 31
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iStartDegree:I

    .line 32
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iTargetDegree:I

    .line 34
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->lAnimationStartTime:J

    .line 35
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->lAnimationEndTime:J

    .line 143
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->miniThumbWidth:I

    .line 144
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->miniThumbHeight:I

    .line 146
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 147
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbMask:Landroid/graphics/Bitmap;

    .line 148
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 149
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 27
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->bClockwise:Z

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->bEnableAnimation:Z

    .line 30
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iCurrentDegree:I

    .line 31
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iStartDegree:I

    .line 32
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iTargetDegree:I

    .line 34
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->lAnimationStartTime:J

    .line 35
    iput-wide v3, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->lAnimationEndTime:J

    .line 143
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->miniThumbWidth:I

    .line 144
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$dimen;->thumbnail_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->miniThumbHeight:I

    .line 146
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 147
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbMask:Landroid/graphics/Bitmap;

    .line 148
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 149
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 39
    return-void
.end method


# virtual methods
.method public SetBitmap(Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 154
    if-nez p1, :cond_0

    .line 155
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 156
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 157
    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbMask:Landroid/graphics/Bitmap;

    .line 158
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :goto_0
    return-void

    .line 162
    :cond_0
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->miniThumbWidth:I

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->miniThumbHeight:I

    invoke-static {p1, v2, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    .line 170
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->camera_photo_preview_frame_mask:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 171
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 172
    .local v1, tmpMask:Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->miniThumbWidth:I

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->miniThumbHeight:I

    invoke-static {v1, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbMask:Landroid/graphics/Bitmap;

    .line 173
    const/4 v0, 0x0

    .line 174
    const/4 v1, 0x0

    .line 176
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->bEnableAnimation:Z

    if-nez v2, :cond_2

    .line 177
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 178
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v2, v6

    .line 179
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 181
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v6

    aput-object v4, v2, v3

    .line 182
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v2, v6

    .line 183
    new-instance v2, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 184
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0
.end method

.method public enableAnimation(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->bEnableAnimation:Z

    .line 47
    return-void
.end method

.method protected getDegree()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iTargetDegree:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 87
    const/16 v20, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/vegacamera/ui/RotateImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 88
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/vegacamera/ui/RotateImageView;->drawable:Landroid/graphics/drawable/Drawable;

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 95
    .local v5, bounds:Landroid/graphics/Rect;
    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v18, v20, v21

    .line 96
    .local v18, w:I
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    .line 98
    .local v8, h:I
    if-eqz v18, :cond_0

    if-eqz v8, :cond_0

    .line 101
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iCurrentDegree:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iTargetDegree:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 102
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    .line 103
    .local v15, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->lAnimationEndTime:J

    move-wide/from16 v20, v0

    cmp-long v20, v15, v20

    if-gez v20, :cond_7

    .line 104
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->lAnimationStartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v15, v20

    move-wide/from16 v0, v20

    long-to-int v7, v0

    .line 105
    .local v7, deltaTime:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iStartDegree:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->bClockwise:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .end local v7           #deltaTime:I
    :goto_1
    mul-int/lit16 v0, v7, 0x10e

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    add-int v6, v20, v21

    .line 106
    .local v6, degree:I
    if-ltz v6, :cond_6

    rem-int/lit16 v6, v6, 0x168

    .line 107
    :goto_2
    move-object/from16 v0, p0

    iput v6, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iCurrentDegree:I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->invalidate()V

    .line 114
    .end local v6           #degree:I
    .end local v15           #time:J
    :cond_2
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getPaddingLeft()I

    move-result v10

    .line 115
    .local v10, left:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getPaddingTop()I

    move-result v17

    .line 116
    .local v17, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getPaddingRight()I

    move-result v13

    .line 117
    .local v13, right:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    .line 118
    .local v4, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getWidth()I

    move-result v20

    sub-int v20, v20, v10

    sub-int v19, v20, v13

    .line 119
    .local v19, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    sub-int v9, v20, v4

    .line 121
    .local v9, height:I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v14

    .line 124
    .local v14, saveCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v20

    sget-object v21, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    if-ge v9, v8, :cond_4

    .line 125
    :cond_3
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    int-to-float v0, v9

    move/from16 v21, v0

    int-to-float v0, v8

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 126
    .local v12, ratio:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    int-to-float v0, v9

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 128
    .end local v12           #ratio:F
    :cond_4
    div-int/lit8 v20, v19, 0x2

    add-int v20, v20, v10

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-int/lit8 v21, v9, 0x2

    add-int v21, v21, v17

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 129
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iCurrentDegree:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 130
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    neg-int v0, v8

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 132
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbMask:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 135
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 136
    .local v11, paint:Landroid/graphics/Paint;
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 137
    new-instance v20, Landroid/graphics/PorterDuffXfermode;

    sget-object v21, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v20 .. v21}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->mThumbMask:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 139
    const/16 v20, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto/16 :goto_0

    .line 105
    .end local v4           #bottom:I
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v11           #paint:Landroid/graphics/Paint;
    .end local v13           #right:I
    .end local v14           #saveCount:I
    .end local v17           #top:I
    .end local v19           #width:I
    .restart local v7       #deltaTime:I
    .restart local v15       #time:J
    :cond_5
    neg-int v7, v7

    goto/16 :goto_1

    .line 106
    .end local v7           #deltaTime:I
    .restart local v6       #degree:I
    :cond_6
    rem-int/lit16 v0, v6, 0x168

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v6, v0, 0x168

    goto/16 :goto_2

    .line 110
    .end local v6           #degree:I
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iTargetDegree:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iCurrentDegree:I

    goto/16 :goto_3
.end method

.method public setDegree(I)V
    .locals 5
    .parameter "degree"

    .prologue
    .line 60
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 61
    :goto_0
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 83
    :goto_1
    return-void

    .line 60
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 64
    :cond_1
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iTargetDegree:I

    .line 65
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->bEnableAnimation:Z

    if-eqz v1, :cond_5

    .line 66
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iCurrentDegree:I

    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iStartDegree:I

    .line 67
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->lAnimationStartTime:J

    .line 69
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iTargetDegree:I

    iget v2, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iCurrentDegree:I

    sub-int v0, v1, v2

    .line 70
    .local v0, diff:I
    if-ltz v0, :cond_3

    .line 74
    :goto_2
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 76
    :cond_2
    if-ltz v0, :cond_4

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->bClockwise:Z

    .line 77
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->lAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x10e

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->lAnimationEndTime:J

    .line 82
    .end local v0           #diff:I
    :goto_4
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->invalidate()V

    goto :goto_1

    .line 70
    .restart local v0       #diff:I
    :cond_3
    add-int/lit16 v0, v0, 0x168

    goto :goto_2

    .line 76
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 79
    .end local v0           #diff:I
    :cond_5
    iget v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iTargetDegree:I

    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateImageView;->iCurrentDegree:I

    goto :goto_4
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setDegree(I)V

    .line 55
    return-void
.end method
