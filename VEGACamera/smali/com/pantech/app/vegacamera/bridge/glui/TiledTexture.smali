.class public Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;
.super Ljava/lang/Object;
.source "TiledTexture.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/glui/Texture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;,
        Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Uploader;
    }
.end annotation


# static fields
.field private static final BORDER_SIZE:I = 0x1

.field private static final CONTENT_SIZE:I = 0xfe

.field private static final INIT_CAPACITY:I = 0x8

.field private static final TILE_SIZE:I = 0x100

.field private static final UPLOAD_TILE_LIMIT:J = 0x4L

.field private static sBitmapPaint:Landroid/graphics/Paint;

.field private static sCanvas:Landroid/graphics/Canvas;

.field private static sFreeTileHead:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

.field private static final sFreeTileLock:Ljava/lang/Object;

.field private static sPaint:Landroid/graphics/Paint;

.field private static sUploadBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final mDestRect:Landroid/graphics/RectF;

.field private final mHeight:I

.field private final mSrcRect:Landroid/graphics/RectF;

.field private final mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

.field private mUploadIndex:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sFreeTileHead:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/16 v8, 0xfe

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v6, 0x0

    iput v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mUploadIndex:I

    .line 61
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 62
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mWidth:I

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mHeight:I

    .line 202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;>;"
    const/4 v4, 0x0

    .local v4, x:I
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mWidth:I

    .local v3, w:I
    :goto_0
    if-lt v4, v3, :cond_0

    .line 214
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    iput-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    .line 215
    return-void

    .line 205
    :cond_0
    const/4 v5, 0x0

    .local v5, y:I
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mHeight:I

    .local v0, h:I
    :goto_1
    if-lt v5, v0, :cond_1

    .line 204
    add-int/lit16 v4, v4, 0xfe

    goto :goto_0

    .line 206
    :cond_1
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->obtainTile()Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    move-result-object v2

    .line 207
    .local v2, tile:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;
    iput v4, v2, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetX:I

    .line 208
    iput v5, v2, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetY:I

    .line 209
    iput-object p1, v2, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 210
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mWidth:I

    sub-int/2addr v6, v4

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mHeight:I

    sub-int/2addr v7, v5

    invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->setSize(II)V

    .line 211
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    add-int/lit16 v5, v5, 0xfe

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->uploadNextTile(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$2()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$3()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$4()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static freeResources()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 228
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 229
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 230
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 231
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 232
    return-void
.end method

.method private static freeTile(Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;)V
    .locals 2
    .parameter "tile"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->invalidateContent()V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    .line 160
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sFreeTileHead:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->nextFreeTile:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    .line 162
    sput-object p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sFreeTileHead:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    .line 160
    monitor-exit v1

    .line 164
    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
    .locals 4
    .parameter "output"
    .parameter "src"
    .parameter "x0"
    .parameter "y0"
    .parameter "x"
    .parameter "y"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 258
    iget v0, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, p2

    mul-float/2addr v0, p6

    add-float/2addr v0, p4

    iget v1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p3

    mul-float/2addr v1, p7

    add-float/2addr v1, p5

    iget v2, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, p2

    mul-float/2addr v2, p6

    add-float/2addr v2, p4

    .line 259
    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    mul-float/2addr v3, p7

    add-float/2addr v3, p5

    .line 258
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 260
    return-void
.end method

.method private static obtainTile()Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;
    .locals 3

    .prologue
    .line 167
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sFreeTileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    :try_start_0
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sFreeTileHead:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    .line 169
    .local v0, result:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;
    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    .end local v0           #result:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;)V

    monitor-exit v2

    .line 173
    .restart local v0       #result:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->nextFreeTile:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    sput-object v1, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sFreeTileHead:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    .line 172
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->nextFreeTile:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    .line 173
    monitor-exit v2

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static prepareResources()V
    .locals 3

    .prologue
    const/16 v1, 0x100

    .line 235
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    .line 236
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sCanvas:Landroid/graphics/Canvas;

    .line 237
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    .line 238
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 239
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    .line 240
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 241
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->sPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    return-void
.end method

.method private uploadNextTile(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Z
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mUploadIndex:I

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    array-length v5, v5

    if-ne v4, v5, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v2

    .line 181
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mUploadIndex:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mUploadIndex:I

    aget-object v1, v4, v5

    .line 185
    .local v1, next:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;
    iget-object v4, v1, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 186
    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->isLoaded()Z

    move-result v0

    .line 187
    .local v0, hasBeenLoad:Z
    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->updateContent(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    .line 193
    if-nez v0, :cond_2

    .line 194
    invoke-virtual {v1, p1, v3, v3}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V

    .line 196
    .end local v0           #hasBeenLoad:Z
    :cond_2
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mUploadIndex:I

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    array-length v5, v5

    if-eq v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;II)V
    .locals 6
    .parameter "canvas"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 331
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mWidth:I

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mHeight:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 332
    return-void
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V
    .locals 12
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 282
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 283
    .local v2, src:Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 284
    .local v1, dest:Landroid/graphics/RectF;
    move/from16 v0, p4

    int-to-float v3, v0

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 285
    .local v7, scaleX:F
    move/from16 v0, p5

    int-to-float v3, v0

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 286
    .local v8, scaleY:F
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    array-length v10, v3

    .local v10, n:I
    :goto_0
    if-lt v9, v10, :cond_0

    .line 294
    return-void

    .line 287
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    aget-object v11, v3, v9

    .line 288
    .local v11, t:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 289
    iget v3, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 290
    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-static/range {v1 .. v8}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 291
    iget v3, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 292
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    invoke-interface {p1, v11, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 286
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 16
    .parameter "canvas"
    .parameter "source"
    .parameter "target"

    .prologue
    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 299
    .local v2, src:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 300
    .local v1, dest:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    .line 301
    .local v3, x0:F
    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/RectF;->top:F

    .line 302
    .local v4, y0:F
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    .line 303
    .local v5, x:F
    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/RectF;->top:F

    .line 304
    .local v6, y:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F

    move-result v13

    div-float v7, v12, v13

    .line 305
    .local v7, scaleX:F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F

    move-result v13

    div-float v8, v12, v13

    .line 307
    .local v8, scaleY:F
    const/4 v9, 0x0

    .local v9, i:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    array-length v10, v12

    .local v10, n:I
    :goto_0
    if-lt v9, v10, :cond_0

    .line 317
    return-void

    .line 308
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    aget-object v11, v12, v9

    .line 309
    .local v11, t:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;
    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->contentWidth:I

    int-to-float v14, v14

    iget v15, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->contentHeight:I

    int-to-float v15, v15

    invoke-virtual {v2, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 310
    iget v12, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetX:I

    int-to-float v12, v12

    iget v13, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetY:I

    int-to-float v13, v13

    invoke-virtual {v2, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 311
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 307
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 313
    :cond_1
    invoke-static/range {v1 .. v8}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 314
    iget v12, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v12, v12, 0x1

    int-to-float v12, v12

    iget v13, v11, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v13, v13, 0x1

    int-to-float v13, v13

    invoke-virtual {v2, v12, v13}, Landroid/graphics/RectF;->offset(FF)V

    .line 315
    move-object/from16 v0, p1

    invoke-interface {v0, v11, v2, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawTexture(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public drawMixed(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IFIIII)V
    .locals 17
    .parameter "canvas"
    .parameter "color"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    .line 266
    .local v2, src:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    .line 267
    .local v1, dest:Landroid/graphics/RectF;
    move/from16 v0, p6

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mWidth:I

    int-to-float v4, v4

    div-float v7, v3, v4

    .line 268
    .local v7, scaleX:F
    move/from16 v0, p7

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mHeight:I

    int-to-float v4, v4

    div-float v8, v3, v4

    .line 269
    .local v8, scaleY:F
    const/4 v15, 0x0

    .local v15, i:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    array-length v0, v3

    move/from16 v16, v0

    .local v16, n:I
    :goto_0
    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 277
    return-void

    .line 270
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    aget-object v10, v3, v15

    .line 271
    .local v10, t:Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v10, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->contentWidth:I

    int-to-float v5, v5

    iget v6, v10, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->contentHeight:I

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 272
    iget v3, v10, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetX:I

    int-to-float v3, v3

    iget v4, v10, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetY:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 273
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v6, v0

    invoke-static/range {v1 .. v8}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V

    .line 274
    iget v3, v10, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetX:I

    rsub-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    iget v4, v10, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;->offsetY:I

    rsub-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V

    .line 275
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mSrcRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mDestRect:Landroid/graphics/RectF;

    move-object/from16 v9, p1

    move/from16 v11, p2

    move/from16 v12, p3

    invoke-interface/range {v9 .. v14}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->drawMixed(Lcom/pantech/app/vegacamera/bridge/glui/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 269
    add-int/lit8 v15, v15, 0x1

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mWidth:I

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mUploadIndex:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 222
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    array-length v1, v2

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 225
    return-void

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->mTiles:[Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture;->freeTile(Lcom/pantech/app/vegacamera/bridge/glui/TiledTexture$Tile;)V

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
