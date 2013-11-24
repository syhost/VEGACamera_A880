.class public Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;
.super Ljava/lang/Object;
.source "TileImageViewAdapter.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;


# static fields
.field private static final TAG:Ljava/lang/String; = "TileImageViewAdapter"


# instance fields
.field protected mImageHeight:I

.field protected mImageWidth:I

.field protected mLevelCount:I

.field protected mOwnScreenNail:Z

.field protected mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

.field protected mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private calculateLevelCount()I
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->ceilLog2(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getTileWithoutReusingBitmap(IIIII)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"

    .prologue
    .line 145
    shl-int v0, p5, p1

    .line 146
    .local v0, b:I
    shl-int v8, p4, p1

    .line 147
    .local v8, t:I
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, p2, v0

    sub-int v11, p3, v0

    add-int v12, p2, v8

    add-int/2addr v12, v0

    add-int v13, p3, v8

    add-int/2addr v13, v0

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 152
    .local v9, wantRegion:Landroid/graphics/Rect;
    monitor-enter p0

    .line 153
    :try_start_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 154
    .local v5, regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    if-nez v5, :cond_1

    .line 155
    monitor-exit p0

    const/4 v1, 0x0

    .line 183
    :cond_0
    :goto_0
    return-object v1

    .line 156
    :cond_1
    new-instance v4, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageWidth:I

    iget v13, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v4, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 157
    .local v4, overlapRegion:Landroid/graphics/Rect;
    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v10

    invoke-static {v10}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 152
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 161
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 162
    const/4 v10, 0x1

    iput-boolean v10, v3, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 163
    const/4 v10, 0x1

    shl-int/2addr v10, p1

    iput v10, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 164
    const/4 v1, 0x0

    .line 167
    .local v1, bitmap:Landroid/graphics/Bitmap;
    monitor-enter v5

    .line 168
    :try_start_1
    invoke-virtual {v5, v4, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 167
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    if-nez v1, :cond_2

    .line 172
    const-string v10, "TileImageViewAdapter"

    const-string v11, "fail in decoding region"

    invoke-static {v10, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_2
    invoke-virtual {v9, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 178
    mul-int/lit8 v10, p5, 0x2

    add-int v7, p4, v10

    .line 179
    .local v7, s:I
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v7, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 180
    .local v6, result:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 181
    .local v2, canvas:Landroid/graphics/Canvas;
    iget v10, v4, Landroid/graphics/Rect;->left:I

    iget v11, v9, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    shr-int/2addr v10, p1

    int-to-float v10, v10

    iget v11, v4, Landroid/graphics/Rect;->top:I

    iget v12, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    shr-int/2addr v11, p1

    int-to-float v11, v11

    .line 182
    const/4 v12, 0x0

    .line 181
    invoke-virtual {v2, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v1, v6

    .line 183
    goto :goto_0

    .line 152
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #canvas:Landroid/graphics/Canvas;
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #overlapRegion:Landroid/graphics/Rect;
    .end local v5           #regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    .end local v6           #result:Landroid/graphics/Bitmap;
    .end local v7           #s:I
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 167
    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    .restart local v3       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #overlapRegion:Landroid/graphics/Rect;
    .restart local v5       #regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :catchall_1
    move-exception v10

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v10
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageWidth:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageHeight:I

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mLevelCount:I

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageWidth:I

    return v0
.end method

.method public getLevelCount()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mLevelCount:I

    return v0
.end method

.method public getScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    return-object v0
.end method

.method public getTile(IIIIILcom/pantech/app/vegacamera/bridge/data/BitmapPool;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "tileSize"
    .parameter "borderSize"
    .parameter "pool"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 88
    sget-boolean v9, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    if-nez v9, :cond_1

    .line 89
    invoke-direct/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->getTileWithoutReusingBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 141
    :cond_0
    :goto_0
    return-object v2

    .line 92
    :cond_1
    shl-int v1, p5, p1

    .line 93
    .local v1, b:I
    shl-int v7, p4, p1

    .line 95
    .local v7, t:I
    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, p2, v1

    sub-int v10, p3, v1

    add-int v11, p2, v7

    add-int/2addr v11, v1

    add-int v12, p3, v7

    add-int/2addr v12, v1

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 98
    .local v8, wantRegion:Landroid/graphics/Rect;
    const/4 v5, 0x0

    .line 100
    .local v5, regionDecoder:Landroid/graphics/BitmapRegionDecoder;
    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 102
    if-nez v5, :cond_2

    .line 103
    monitor-exit p0

    const/4 v2, 0x0

    goto :goto_0

    .line 107
    :cond_2
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageWidth:I

    iget v13, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageHeight:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v3, 0x0

    .line 100
    .local v3, needClear:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-nez p6, :cond_7

    const/4 v2, 0x0

    .line 111
    .local v2, bitmap:Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v2, :cond_8

    .line 112
    if-eqz v3, :cond_3

    .line 113
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 119
    :cond_3
    :goto_3
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 120
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 121
    const/4 v9, 0x1

    iput-boolean v9, v4, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 122
    const/4 v9, 0x1

    shl-int/2addr v9, p1

    iput v9, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 123
    iput-object v2, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 127
    :try_start_1
    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 128
    :try_start_2
    invoke-virtual {v5, v8, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 127
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v9, v2, :cond_5

    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_5

    .line 132
    if-eqz p6, :cond_4

    .line 133
    iget-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 134
    :cond_4
    const/4 v9, 0x0

    iput-object v9, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 138
    :cond_5
    if-nez v2, :cond_0

    .line 139
    const-string v9, "TileImageViewAdapter"

    const-string v10, "fail in decoding region"

    invoke-static {v9, v10}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v3           #needClear:Z
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_6
    const/4 v3, 0x1

    goto :goto_1

    .line 100
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 110
    .restart local v3       #needClear:Z
    :cond_7
    invoke-virtual/range {p6 .. p6}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_2

    .line 115
    .restart local v2       #bitmap:Landroid/graphics/Bitmap;
    :cond_8
    mul-int/lit8 v9, p5, 0x2

    add-int v6, p4, v9

    .line 116
    .local v6, s:I
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_3

    .line 127
    .end local v6           #s:I
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 130
    :catchall_2
    move-exception v9

    .line 131
    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eq v10, v2, :cond_a

    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_a

    .line 132
    if-eqz p6, :cond_9

    .line 133
    iget-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v10}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 134
    :cond_9
    const/4 v10, 0x0

    iput-object v10, v4, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 136
    :cond_a
    throw v9
.end method

.method public declared-synchronized setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V
    .locals 1
    .parameter "decoder"

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/BitmapRegionDecoder;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 65
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageWidth:I

    .line 66
    invoke-virtual {p1}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageHeight:I

    .line 67
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->calculateLevelCount()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;II)V
    .locals 1
    .parameter "screenNail"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 57
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageWidth:I

    .line 58
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mImageHeight:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mRegionDecoder:Landroid/graphics/BitmapRegionDecoder;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;->mLevelCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
