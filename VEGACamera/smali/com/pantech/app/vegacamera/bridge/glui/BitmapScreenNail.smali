.class public Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;
.super Ljava/lang/Object;
.source "BitmapScreenNail.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;


# static fields
.field private static final ANIMATION_DONE:J = -0x3L

.field private static final ANIMATION_NEEDED:J = -0x2L

.field private static final ANIMATION_NOT_NEEDED:J = -0x1L

.field private static final DURATION:I = 0xb4

.field private static final MAX_SIDE:I = 0x280

.field private static final PLACEHOLDER_COLOR:I = -0xddddde


# instance fields
.field private mAnimationStartTime:J

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

.field private mWidth:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->setSize(II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mWidth:I

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mHeight:I

    .line 53
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method

.method private getRatio()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 194
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x4334

    div-float v0, v1, v2

    .line 195
    .local v0, r:F
    sub-float v1, v5, v0

    const/4 v2, 0x0

    invoke-static {v1, v2, v5}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(FFF)F

    move-result v1

    return v1
.end method

.method private static now()J
    .locals 2

    .prologue
    .line 190
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/AnimationTime;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method private setSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 64
    :cond_0
    const/16 p1, 0x280

    .line 65
    const/16 p2, 0x1e0

    .line 67
    :cond_1
    const/high16 v1, 0x3f80

    const/high16 v2, 0x4420

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 68
    .local v0, scale:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mWidth:I

    .line 69
    int-to-float v1, p2

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mHeight:I

    .line 70
    return-void
.end method


# virtual methods
.method public combine(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 4
    .parameter "other"

    .prologue
    const/4 v3, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 103
    .end local p0
    :goto_0
    return-object p0

    .line 79
    .restart local p0
    :cond_0
    instance-of v1, p1, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;

    if-nez v1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->recycle()V

    move-object p0, p1

    .line 81
    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 86
    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;

    .line 87
    .local v0, newer:Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mWidth:I

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mWidth:I

    .line 88
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mHeight:I

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mHeight:I

    .line 89
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 90
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 91
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getThumbPool()Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 93
    :cond_2
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 94
    iput-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 96
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;->recycle()V

    .line 98
    iput-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    .line 102
    :cond_3
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->recycle()V

    goto :goto_0
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 143
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 144
    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    .line 146
    :cond_0
    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    const v5, -0xddddde

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->fillRect(FFFFI)V

    .line 163
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    if-nez v0, :cond_2

    .line 151
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    .line 154
    :cond_2
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 155
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    .line 158
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 159
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    const v2, -0xddddde

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->getRatio()F

    move-result v3

    move-object v0, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v0 .. v7}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawMixed(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IFIIII)V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6
    .parameter "canvas"
    .parameter "source"
    .parameter "dest"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 168
    iget v1, p3, Landroid/graphics/RectF;->left:F

    iget v2, p3, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    const v5, -0xddddde

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->fillRect(FFFFI)V

    .line 177
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    if-nez v0, :cond_1

    .line 173
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    invoke-interface {p1, v0, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mWidth:I

    return v0
.end method

.method public isAnimating()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 180
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 186
    :goto_0
    return v0

    .line 182
    :cond_0
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->now()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xb4

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 183
    const-wide/16 v1, -0x3

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mAnimationStartTime:J

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowingPlaceholder()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public noDraw()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public recycle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;->recycle()V

    .line 132
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mTexture:Lcom/pantech/app/vegacamera/bridge/glui/BitmapTexture;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getThumbPool()Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 136
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    .line 138
    :cond_1
    return-void
.end method

.method public updatePlaceholderSize(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->setSize(II)V

    goto :goto_0
.end method
