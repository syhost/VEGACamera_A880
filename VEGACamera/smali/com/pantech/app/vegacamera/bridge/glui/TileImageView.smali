.class public Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
.super Lcom/pantech/app/vegacamera/bridge/glui/GLView;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;,
        Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;,
        Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;,
        Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;,
        Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;
    }
.end annotation


# static fields
.field private static BITMAP_SIZE:I = 0x0

.field public static final SIZE_UNKNOWN:I = -0x1

.field private static final STATE_ACTIVATED:I = 0x1

.field private static final STATE_DECODED:I = 0x8

.field private static final STATE_DECODE_FAIL:I = 0x10

.field private static final STATE_DECODING:I = 0x4

.field private static final STATE_IN_QUEUE:I = 0x2

.field private static final STATE_RECYCLED:I = 0x40

.field private static final STATE_RECYCLING:I = 0x20

.field private static final TAG:Ljava/lang/String; = "TileImageView"

.field private static final TILE_BORDER:I = 0x1

.field private static TILE_SIZE:I = 0x0

.field private static final UPLOAD_LIMIT:I = 0x1

.field private static sTilePool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;


# instance fields
.field private final mActiveRange:[Landroid/graphics/Rect;

.field private final mActiveTiles:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundTileUploaded:Z

.field protected mCenterX:I

.field protected mCenterY:I

.field private final mDecodeQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

.field protected mImageHeight:I

.field protected mImageWidth:I

.field private mIsTextureFreed:Z

.field private mLevel:I

.field protected mLevelCount:I

.field private mLogVerbose:Z

.field private mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

.field private mOffsetX:I

.field private mOffsetY:I

.field private final mRecycledQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

.field private mRenderComplete:Z

.field protected mRotation:I

.field protected mScale:F

.field private mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

.field private final mSourceRect:Landroid/graphics/RectF;

.field private final mTargetRect:Landroid/graphics/RectF;

.field private final mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

.field private mTileDecoder:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mTileRange:Landroid/graphics/Rect;

.field private final mTileUploader:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;

.field private final mUploadQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

.field private mUploadQuota:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/GalleryContext;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;-><init>()V

    .line 87
    iput v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    .line 97
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 98
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 100
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    .line 103
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRecycledQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    .line 104
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    .line 105
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-direct {v1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mDecodeQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    .line 108
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageWidth:I

    .line 109
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageHeight:I

    .line 117
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 118
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v4

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 120
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;

    invoke-direct {v1, p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileUploader:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;

    .line 125
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    .line 152
    const-string v1, "TileImageView"

    const-string v2, "TileImageView"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/app/GalleryContext;->getThreadPool()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    .line 154
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;)V

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileDecoder:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 155
    sget v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    if-nez v1, :cond_1

    .line 156
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/app/GalleryContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->isHighResolution(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    const/16 v1, 0x1fe

    sput v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    .line 161
    :goto_0
    sget v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    add-int/lit8 v1, v1, 0x2

    sput v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->BITMAP_SIZE:I

    .line 162
    sget-boolean v1, Lcom/pantech/app/vegacamera/bridge/common/ApiHelper;->HAS_REUSING_BITMAP_IN_BITMAP_REGION_DECODER:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    sget v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->BITMAP_SIZE:I

    sget v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->BITMAP_SIZE:I

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;-><init>(III)V

    :cond_0
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->sTilePool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    .line 165
    :cond_1
    return-void

    .line 159
    :cond_2
    const/16 v1, 0xfe

    sput v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;
    .locals 1
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    return-object v0
.end method

.method static synthetic access$1()Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->sTilePool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

    return-object v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->BITMAP_SIZE:I

    return v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;III)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 582
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getTile(III)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)I
    .locals 1
    .parameter

    .prologue
    .line 87
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    return v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mDecodeQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    return-object v0
.end method

.method private activateTile(III)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 567
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 568
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 569
    const-string v3, "TileImageView"

    const-string v4, "activateTile"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_0
    invoke-static {p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->makeTileKey(III)J

    move-result-wide v0

    .line 571
    .local v0, key:J
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 572
    .local v2, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    if-eqz v2, :cond_2

    .line 573
    iget v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 574
    const/4 v3, 0x1

    iput v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    .line 580
    :cond_1
    :goto_0
    return-void

    .line 578
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->obtainTile(III)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    move-result-object v2

    .line 579
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method static drawTile(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 5
    .parameter "tile"
    .parameter "canvas"
    .parameter "source"
    .parameter "target"

    .prologue
    const/high16 v4, 0x3f80

    const/high16 v3, 0x4000

    .line 663
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->isContentValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    invoke-virtual {p2, v4, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 666
    invoke-interface {p1, p0, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 667
    const/4 v1, 0x1

    .line 673
    :goto_1
    return v1

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->getParentTile()Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    move-result-object v0

    .line 672
    .local v0, parent:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    if-nez v0, :cond_1

    .line 673
    const/4 v1, 0x0

    goto :goto_1

    .line 674
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mX:I

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mX:I

    if-ne v1, v2, :cond_2

    .line 675
    iget v1, p2, Landroid/graphics/RectF;->left:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 676
    iget v1, p2, Landroid/graphics/RectF;->right:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 681
    :goto_2
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mY:I

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mY:I

    if-ne v1, v2, :cond_3

    .line 682
    iget v1, p2, Landroid/graphics/RectF;->top:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 683
    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    .line 688
    :goto_3
    move-object p0, v0

    .line 662
    goto :goto_0

    .line 678
    :cond_2
    sget v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 679
    sget v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 685
    :cond_3
    sget v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->top:F

    .line 686
    sget v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    int-to-float v1, v1

    iget v2, p2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    div-float/2addr v1, v3

    iput v1, p2, Landroid/graphics/RectF;->bottom:F

    goto :goto_3
.end method

.method private getRange(Landroid/graphics/Rect;IIIFI)V
    .locals 25
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 311
    const-string v19, "TileImageView"

    const-string v20, "getRange"

    invoke-static/range {v19 .. v20}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :cond_0
    move/from16 v0, p6

    neg-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    .line 313
    .local v9, radians:D
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v16, v0

    .line 314
    .local v16, w:D
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-double v5, v0

    .line 316
    .local v5, h:D
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 317
    .local v3, cos:D
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 318
    .local v12, sin:D
    mul-double v19, v3, v16

    mul-double v21, v12, v5

    sub-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v3, v16

    mul-double v23, v12, v5

    add-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v0, v0

    move/from16 v18, v0

    .line 319
    .local v18, width:I
    mul-double v19, v12, v16

    mul-double v21, v3, v5

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D

    move-result-wide v19

    mul-double v21, v12, v16

    mul-double v23, v3, v5

    sub-double v21, v21, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D

    move-result-wide v21

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-int v7, v0

    .line 321
    .local v7, height:I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v8, v0

    .line 322
    .local v8, left:I
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, p5

    div-float v20, v20, v21

    sub-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->floor(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v15, v0

    .line 323
    .local v15, top:I
    int-to-float v0, v8

    move/from16 v19, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->ceil(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v11, v0

    .line 324
    .local v11, right:I
    int-to-float v0, v15

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v20, v20, p5

    add-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->ceil(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v2, v0

    .line 327
    .local v2, bottom:I
    sget v19, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    shl-int v14, v19, p4

    .line 328
    .local v14, size:I
    const/16 v19, 0x0

    div-int v20, v8, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 329
    const/16 v19, 0x0

    div-int v20, v15, v14

    mul-int v20, v20, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 333
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v15, v11, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 334
    return-void
.end method

.method private getRange(Landroid/graphics/Rect;IIII)V
    .locals 7
    .parameter "out"
    .parameter "cX"
    .parameter "cY"
    .parameter "level"
    .parameter "rotation"

    .prologue
    .line 300
    const/high16 v0, 0x3f80

    const/4 v1, 0x1

    add-int/lit8 v2, p4, 0x1

    shl-int/2addr v1, v2

    int-to-float v1, v1

    div-float v5, v0, v1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 301
    return-void
.end method

.method private getTile(III)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-static {p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->makeTileKey(III)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    return-object v0
.end method

.method private isScreenNailAnimating()Z
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    instance-of v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private layoutTiles(IIFI)V
    .locals 24
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 210
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 211
    const-string v3, "TileImageView"

    const-string v5, "layoutTiles"

    invoke-static {v3, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getWidth()I

    move-result v21

    .line 214
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getHeight()I

    move-result v14

    .line 222
    .local v14, height:I
    const/high16 v3, 0x3f80

    div-float v3, v3, p3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->floorLog2(F)I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5, v6}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(III)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    .line 227
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevelCount:I

    if-eq v3, v5, :cond_2

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    .line 229
    .local v4, range:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v7, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V

    .line 230
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->left:I

    sub-int v5, v5, p1

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mOffsetX:I

    .line 231
    int-to-float v3, v14

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int v5, v5, p2

    int-to-float v5, v5

    mul-float v5, v5, p3

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mOffsetY:I

    .line 232
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    shl-int/2addr v3, v5

    int-to-float v3, v3

    mul-float v3, v3, p3

    const/high16 v5, 0x3f40

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x1

    .line 240
    .end local v4           #range:Landroid/graphics/Rect;
    .local v13, fromLevel:I
    :goto_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevelCount:I

    add-int/lit8 v5, v5, -0x2

    invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 241
    add-int/lit8 v3, v13, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevelCount:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 243
    .local v12, endLevel:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;

    .line 244
    .local v4, range:[Landroid/graphics/Rect;
    move v9, v13

    .local v9, i:I
    :goto_1
    if-lt v9, v12, :cond_3

    .line 249
    rem-int/lit8 v3, p4, 0x5a

    if-eqz v3, :cond_4

    .line 282
    :goto_2
    return-void

    .line 232
    .end local v9           #i:I
    .end local v12           #endLevel:I
    .end local v13           #fromLevel:I
    .local v4, range:Landroid/graphics/Rect;
    :cond_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    goto :goto_0

    .line 235
    .end local v4           #range:Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    add-int/lit8 v13, v3, -0x2

    .line 236
    .restart local v13       #fromLevel:I
    move/from16 v0, v21

    int-to-float v3, v0

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    move/from16 v0, p1

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mOffsetX:I

    .line 237
    int-to-float v3, v14

    const/high16 v5, 0x4000

    div-float/2addr v3, v5

    move/from16 v0, p2

    int-to-float v5, v0

    mul-float v5, v5, p3

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mOffsetY:I

    goto :goto_0

    .line 245
    .local v4, range:[Landroid/graphics/Rect;
    .restart local v9       #i:I
    .restart local v12       #endLevel:I
    :cond_3
    sub-int v3, v9, v13

    aget-object v6, v4, v3

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v10, p4

    invoke-direct/range {v5 .. v10}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V

    .line 244
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 252
    :cond_4
    monitor-enter p0

    .line 253
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mDecodeQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->clean()V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->clean()V

    .line 255
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mBackgroundTileUploaded:Z

    .line 259
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v16

    .line 260
    .local v16, n:I
    const/4 v9, 0x0

    :goto_3
    move/from16 v0, v16

    if-lt v9, v0, :cond_5

    .line 252
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    move v9, v13

    :goto_4
    if-lt v9, v12, :cond_8

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->invalidate()V

    goto :goto_2

    .line 261
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 262
    .local v20, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    move-object/from16 v0, v20

    iget v15, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileLevel:I

    .line 263
    .local v15, level:I
    if-lt v15, v13, :cond_6

    if-ge v15, v12, :cond_6

    sub-int v3, v15, v13

    aget-object v3, v4, v3

    move-object/from16 v0, v20

    iget v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mX:I

    move-object/from16 v0, v20

    iget v6, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mY:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_7

    .line 264
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v9}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 265
    add-int/lit8 v9, v9, -0x1

    .line 266
    add-int/lit8 v16, v16, -0x1

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->recycleTile(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)V

    .line 260
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 252
    .end local v15           #level:I
    .end local v16           #n:I
    .end local v20           #tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 273
    .restart local v16       #n:I
    :cond_8
    sget v3, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    shl-int v19, v3, v9

    .line 274
    .local v19, size:I
    sub-int v3, v9, v13

    aget-object v17, v4, v3

    .line 275
    .local v17, r:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .local v23, y:I
    move-object/from16 v0, v17

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .local v11, bottom:I
    :goto_5
    move/from16 v0, v23

    if-lt v0, v11, :cond_9

    .line 272
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 276
    :cond_9
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    .local v22, x:I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    .local v18, right:I
    :goto_6
    move/from16 v0, v22

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 275
    add-int v23, v23, v19

    goto :goto_5

    .line 277
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2, v9}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->activateTile(III)V

    .line 276
    add-int v22, v22, v19

    goto :goto_6
.end method

.method private static makeTileKey(III)J
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    const/16 v6, 0x10

    .line 587
    int-to-long v0, p0

    .line 588
    .local v0, result:J
    shl-long v2, v0, v6

    int-to-long v4, p1

    or-long v0, v2, v4

    .line 589
    shl-long v2, v0, v6

    int-to-long v4, p2

    or-long v0, v2, v4

    .line 590
    return-wide v0
.end method

.method private declared-synchronized obtainTile(III)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "level"

    .prologue
    .line 539
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v1, :cond_0

    .line 540
    const-string v1, "TileImageView"

    const-string v2, "obtainTile"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRecycledQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->pop()Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    move-result-object v0

    .line 542
    .local v0, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    if-eqz v0, :cond_1

    .line 543
    const/4 v1, 0x1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    .line 544
    invoke-virtual {v0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->update(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    .end local v0           #tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    :goto_0
    monitor-exit p0

    return-object v0

    .restart local v0       #tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .end local v0           #tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private uploadBackgroundTiles(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 481
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 482
    const-string v3, "TileImageView"

    const-string v4, "uploadBackgroundTiles"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mBackgroundTileUploaded:Z

    .line 484
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 485
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 490
    return-void

    .line 486
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 487
    .local v2, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->isContentValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 488
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->queueForDecode(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)V

    .line 485
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method decodeTile(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)Z
    .locals 4
    .parameter "tile"

    .prologue
    const/4 v1, 0x0

    .line 514
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v2, :cond_0

    .line 515
    const-string v2, "TileImageView"

    const-string v3, "decodeTile"

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_0
    monitor-enter p0

    .line 517
    :try_start_0
    iget v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 518
    monitor-exit p0

    move v0, v1

    .line 534
    :goto_0
    return v0

    .line 519
    :cond_1
    const/4 v2, 0x4

    iput v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    .line 516
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->decode()Z

    move-result v0

    .line 522
    .local v0, decodeComplete:Z
    monitor-enter p0

    .line 523
    :try_start_1
    iget v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_4

    .line 524
    const/16 v2, 0x40

    iput v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    .line 525
    iget-object v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 526
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->sTilePool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    if-eqz v2, :cond_2

    .line 527
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->sTilePool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    iget-object v3, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 528
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 530
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRecycledQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->push(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)Z

    .line 531
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v1

    goto :goto_0

    .line 516
    .end local v0           #decodeComplete:Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 533
    .restart local v0       #decodeComplete:Z
    :cond_4
    if-eqz v0, :cond_5

    const/16 v1, 0x8

    :goto_1
    :try_start_3
    iput v1, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    .line 534
    monitor-exit p0

    goto :goto_0

    .line 522
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 533
    :cond_5
    const/16 v1, 0x10

    goto :goto_1
.end method

.method public drawTile(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIIFFF)V
    .locals 12
    .parameter "canvas"
    .parameter "tx"
    .parameter "ty"
    .parameter "level"
    .parameter "x"
    .parameter "y"
    .parameter "length"

    .prologue
    .line 628
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mSourceRect:Landroid/graphics/RectF;

    .line 629
    .local v5, source:Landroid/graphics/RectF;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTargetRect:Landroid/graphics/RectF;

    .line 630
    .local v6, target:Landroid/graphics/RectF;
    add-float v8, p5, p7

    add-float v9, p6, p7

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 631
    const/4 v8, 0x0

    const/4 v9, 0x0

    sget v10, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    int-to-float v10, v10

    sget v11, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    int-to-float v11, v11

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 633
    move/from16 v0, p4

    invoke-direct {p0, p2, p3, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getTile(III)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    move-result-object v7

    .line 634
    .local v7, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    if-eqz v7, :cond_4

    .line 635
    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->isContentValid()Z

    move-result v8

    if-nez v8, :cond_0

    .line 636
    iget v8, v7, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_3

    .line 637
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQuota:I

    if-lez v8, :cond_2

    .line 638
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQuota:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQuota:I

    .line 639
    invoke-virtual {v7, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->updateContent(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 648
    :cond_0
    :goto_0
    invoke-static {v7, p1, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->drawTile(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 658
    :cond_1
    :goto_1
    return-void

    .line 641
    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRenderComplete:Z

    goto :goto_0

    .line 643
    :cond_3
    iget v8, v7, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    const/16 v9, 0x10

    if-eq v8, v9, :cond_0

    .line 644
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRenderComplete:Z

    .line 645
    invoke-virtual {p0, v7}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->queueForDecode(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)V

    goto :goto_0

    .line 651
    :cond_4
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-eqz v8, :cond_1

    .line 652
    sget v8, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    shl-int v4, v8, p4

    .line 653
    .local v4, size:I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v8}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageWidth:I

    int-to-float v9, v9

    div-float v2, v8, v9

    .line 654
    .local v2, scaleX:F
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v8}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageHeight:I

    int-to-float v9, v9

    div-float v3, v8, v9

    .line 655
    .local v3, scaleY:F
    int-to-float v8, p2

    mul-float/2addr v8, v2

    int-to-float v9, p3

    mul-float/2addr v9, v3

    add-int v10, p2, v4

    int-to-float v10, v10

    mul-float/2addr v10, v2

    add-int v11, p3, v4

    int-to-float v11, v11

    mul-float/2addr v11, v3

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V

    .line 656
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v8, p1, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public freeTextures()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 377
    const-string v4, "TileImageView"

    const-string v5, "freeTextures"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mIsTextureFreed:Z

    .line 380
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileDecoder:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileDecoder:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 382
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileDecoder:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/util/Future;->get()Ljava/lang/Object;

    .line 383
    iput-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileDecoder:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 386
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 387
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_2

    .line 391
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->clear()V

    .line 392
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->clean()V

    .line 396
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mDecodeQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->clean()V

    .line 397
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRecycledQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->pop()Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    move-result-object v3

    .line 398
    .local v3, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    :goto_1
    if-nez v3, :cond_3

    .line 394
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-virtual {p0, v7}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 404
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->sTilePool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    if-eqz v4, :cond_1

    .line 405
    sget-object v4, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->sTilePool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->clear()V

    .line 406
    :cond_1
    return-void

    .line 388
    .end local v3           #tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 389
    .local v2, texture:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->recycle()V

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    .end local v2           #texture:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    .restart local v3       #tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    :cond_3
    :try_start_1
    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->recycle()V

    .line 400
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRecycledQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->pop()Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    move-result-object v3

    goto :goto_1

    .line 394
    .end local v3           #tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public getImageCenter(Landroid/graphics/Point;)V
    .locals 8
    .parameter "center"

    .prologue
    const/high16 v7, 0x4000

    .line 338
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v4, :cond_0

    .line 339
    const-string v4, "TileImageView"

    const-string v5, "getImageCenter"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getWidth()I

    move-result v3

    .line 342
    .local v3, viewW:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getHeight()I

    move-result v2

    .line 348
    .local v2, viewH:I
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRotation:I

    rem-int/lit16 v4, v4, 0xb4

    if-nez v4, :cond_1

    .line 349
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterX:I

    sub-int v1, v4, v5

    .line 350
    .local v1, distW:I
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageHeight:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterY:I

    sub-int v0, v4, v5

    .line 358
    .local v0, distH:I
    :goto_0
    int-to-float v4, v3

    div-float/2addr v4, v7

    int-to-float v5, v1

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    .line 359
    int-to-float v4, v2

    div-float/2addr v4, v7

    int-to-float v5, v0

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 360
    return-void

    .line 352
    .end local v0           #distH:I
    .end local v1           #distW:I
    :cond_1
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageHeight:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterY:I

    sub-int v1, v4, v5

    .line 353
    .restart local v1       #distW:I
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterX:I

    sub-int v0, v4, v5

    .restart local v0       #distH:I
    goto :goto_0
.end method

.method protected declared-synchronized invalidateTiles()V
    .locals 5

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v3, :cond_0

    .line 286
    const-string v3, "TileImageView"

    const-string v4, "invalidateTiles"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mDecodeQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->clean()V

    .line 288
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->clean()V

    .line 291
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 292
    .local v1, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 296
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 293
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mActiveTiles:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;

    .line 294
    .local v2, tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->recycleTile(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0           #i:I
    .end local v1           #n:I
    .end local v2           #tile:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public notifyModelInvalidated()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string v0, "TileImageView"

    const-string v1, "notifyModelInvalidated"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->invalidateTiles()V

    .line 180
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 182
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageWidth:I

    .line 183
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageHeight:I

    .line 184
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevelCount:I

    .line 191
    :goto_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->layoutTiles(IIFI)V

    .line 192
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->invalidate()V

    .line 193
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;->getScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 187
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;->getImageWidth()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageWidth:I

    .line 188
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;->getImageHeight()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageHeight:I

    .line 189
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;->getLevelCount()I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevelCount:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 197
    invoke-super/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->onLayout(ZIIII)V

    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterX:I

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterY:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRotation:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->layoutTiles(IIFI)V

    .line 200
    :cond_0
    return-void
.end method

.method public prepareTextures()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 409
    const-string v1, "TileImageView"

    const-string v2, "prepareTextures"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileDecoder:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-nez v1, :cond_0

    .line 411
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;

    invoke-direct {v2, p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileDecoder;)V

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileDecoder:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 413
    :cond_0
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mIsTextureFreed:Z

    if-eqz v1, :cond_1

    .line 414
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterX:I

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterY:I

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRotation:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->layoutTiles(IIFI)V

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mIsTextureFreed:Z

    .line 416
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 418
    :cond_1
    return-void

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;->getScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v0

    goto :goto_0
.end method

.method declared-synchronized queueForDecode(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 505
    const-string v0, "TileImageView"

    const-string v1, "queueForDecode"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_0
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 507
    const/4 v0, 0x2

    iput v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    .line 508
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mDecodeQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->push(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_1
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method queueForUpload(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)V
    .locals 3
    .parameter "tile"

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 494
    const-string v0, "TileImageView"

    const-string v1, "queueForUpload"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_0
    monitor-enter p0

    .line 496
    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->push(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)Z

    .line 495
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileUploader:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 499
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileUploader:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileUploader;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->addOnGLIdleListener(Lcom/pantech/app/vegacamera/bridge/glui/GLRoot$OnGLIdleListener;)V

    .line 501
    :cond_1
    return-void

    .line 495
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method declared-synchronized recycleTile(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 552
    const-string v0, "TileImageView"

    const-string v1, "recycleTile"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    :cond_0
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 554
    const/16 v0, 0x20

    iput v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    :goto_0
    monitor-exit p0

    return-void

    .line 557
    :cond_1
    const/16 v0, 0x40

    :try_start_1
    iput v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mTileState:I

    .line 558
    iget-object v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 559
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->sTilePool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    if-eqz v0, :cond_2

    .line 560
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->sTilePool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    iget-object v1, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 561
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    .line 563
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRecycledQueue:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$TileQueue;->push(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Tile;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected render(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 24
    .parameter "canvas"

    .prologue
    .line 422
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mUploadQuota:I

    .line 423
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRenderComplete:Z

    .line 425
    move-object/from16 v0, p0

    iget v6, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevel:I

    .line 426
    .local v6, level:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRotation:I

    move/from16 v22, v0

    .line 427
    .local v22, rotation:I
    const/16 v18, 0x0

    .line 428
    .local v18, flags:I
    if-eqz v22, :cond_0

    .line 429
    or-int/lit8 v18, v18, 0x2

    .line 431
    :cond_0
    if-eqz v18, :cond_1

    .line 432
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->save(I)V

    .line 433
    if-eqz v22, :cond_1

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getWidth()I

    move-result v2

    div-int/lit8 v16, v2, 0x2

    .local v16, centerX:I
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->getHeight()I

    move-result v2

    div-int/lit8 v17, v2, 0x2

    .line 435
    .local v17, centerY:I
    move/from16 v0, v16

    int-to-float v2, v0

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 436
    move/from16 v0, v22

    int-to-float v2, v0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v10, v11}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->rotate(FFFF)V

    .line 437
    move/from16 v0, v16

    neg-int v2, v0

    int-to-float v2, v2

    move/from16 v0, v17

    neg-int v3, v0

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 441
    .end local v16           #centerX:I
    .end local v17           #centerY:I
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLevelCount:I

    if-eq v6, v2, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->isScreenNailAnimating()Z

    move-result v2

    if-nez v2, :cond_8

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-eqz v2, :cond_2

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->noDraw()V

    .line 446
    :cond_2
    sget v2, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->TILE_SIZE:I

    shl-int v23, v2, v6

    .line 447
    .local v23, size:I
    move/from16 v0, v23

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    mul-float v9, v2, v3

    .line 448
    .local v9, length:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mTileRange:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 450
    .local v21, r:Landroid/graphics/Rect;
    move-object/from16 v0, v21

    iget v5, v0, Landroid/graphics/Rect;->top:I

    .local v5, ty:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v2, :cond_6

    .line 464
    .end local v5           #ty:I
    .end local v9           #length:F
    .end local v19           #i:I
    .end local v21           #r:Landroid/graphics/Rect;
    .end local v23           #size:I
    :cond_3
    :goto_1
    if-eqz v18, :cond_4

    .line 465
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    .line 468
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRenderComplete:Z

    if-eqz v2, :cond_a

    .line 469
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mBackgroundTileUploaded:Z

    if-nez v2, :cond_5

    .line 470
    invoke-direct/range {p0 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->uploadBackgroundTiles(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 474
    :cond_5
    :goto_2
    return-void

    .line 451
    .restart local v5       #ty:I
    .restart local v9       #length:F
    .restart local v19       #i:I
    .restart local v21       #r:Landroid/graphics/Rect;
    .restart local v23       #size:I
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mOffsetY:I

    int-to-float v2, v2

    move/from16 v0, v19

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v8, v2, v3

    .line 452
    .local v8, y:F
    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    .local v4, tx:I
    const/16 v20, 0x0

    .local v20, j:I
    :goto_3
    move-object/from16 v0, v21

    iget v2, v0, Landroid/graphics/Rect;->right:I

    if-lt v4, v2, :cond_7

    .line 450
    add-int v5, v5, v23

    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 453
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mOffsetX:I

    int-to-float v2, v2

    move/from16 v0, v20

    int-to-float v3, v0

    mul-float/2addr v3, v9

    add-float v7, v2, v3

    .local v7, x:F
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 454
    invoke-virtual/range {v2 .. v9}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->drawTile(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIIFFF)V

    .line 452
    add-int v4, v4, v23

    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 457
    .end local v4           #tx:I
    .end local v5           #ty:I
    .end local v7           #x:F
    .end local v8           #y:F
    .end local v9           #length:F
    .end local v19           #i:I
    .end local v20           #j:I
    .end local v21           #r:Landroid/graphics/Rect;
    .end local v23           #size:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    if-eqz v2, :cond_3

    .line 458
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mOffsetX:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mOffsetY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageWidth:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mImageHeight:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v15

    move-object/from16 v11, p1

    invoke-interface/range {v10 .. v15}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->isScreenNailAnimating()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 460
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 463
    :catchall_0
    move-exception v2

    .line 464
    if-eqz v18, :cond_9

    .line 465
    invoke-interface/range {p1 .. p1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->restore()V

    .line 466
    :cond_9
    throw v2

    .line 472
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->invalidate()V

    goto :goto_2
.end method

.method public setModel(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;)V
    .locals 0
    .parameter "model"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;

    .line 169
    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->notifyModelInvalidated()V

    .line 171
    :cond_0
    return-void
.end method

.method public setPosition(IIFI)Z
    .locals 2
    .parameter "centerX"
    .parameter "centerY"
    .parameter "scale"
    .parameter "rotation"

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 364
    const-string v0, "TileImageView"

    const-string v1, "setPosition"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterX:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterY:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_1

    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRotation:I

    if-ne v0, p4, :cond_1

    .line 366
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    .line 367
    :cond_1
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterX:I

    .line 368
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mCenterY:I

    .line 369
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScale:F

    .line 370
    iput p4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mRotation:I

    .line 371
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->layoutTiles(IIFI)V

    .line 372
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->invalidate()V

    .line 373
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->mScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    .line 175
    return-void
.end method
