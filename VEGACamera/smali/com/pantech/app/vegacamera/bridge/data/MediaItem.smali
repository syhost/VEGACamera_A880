.class public abstract Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
.source "MediaItem.java"


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x4

.field public static final CACHED_IMAGE_QUALITY:I = 0x5f

.field public static final IMAGE_ERROR:I = -0x1

.field public static final IMAGE_READY:I = 0x0

.field public static final IMAGE_WAIT:I = 0x1

.field public static final INVALID_LATLNG:D = 0.0

.field public static final MICROTHUMBNAIL_TARGET_SIZE:I = 0xc8

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final THUMBNAIL_TARGET_SIZE:I = 0x280

.field public static final TYPE_MICROTHUMBNAIL:I = 0x2

.field public static final TYPE_THUMBNAIL:I = 0x1

.field private static final sMicroThumbBufferPool:Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool;

.field private static final sMicroThumbPool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

.field private static final sThumbPool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    const/4 v2, 0x4

    .line 45
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    .line 46
    const/16 v1, 0x10

    .line 45
    invoke-direct {v0, v3, v3, v1}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;-><init>(III)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->sMicroThumbPool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    .line 47
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    invoke-direct {v0, v2}, Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;-><init>(I)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->sThumbPool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    .line 48
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool;

    const v1, 0x32000

    invoke-direct {v0, v2, v1}, Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->sMicroThumbBufferPool:Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 59
    return-void
.end method

.method public static getBytesBufferPool()Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->sMicroThumbBufferPool:Lcom/pantech/app/vegacamera/bridge/data/BytesBufferPool;

    return-object v0
.end method

.method public static getMicroThumbPool()Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->sMicroThumbPool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    return-object v0
.end method

.method public static getTargetSize(I)I
    .locals 2
    .parameter "type"

    .prologue
    .line 107
    packed-switch p0, :pswitch_data_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should only request thumb/microthumb from cache"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :pswitch_0
    const/16 v0, 0x280

    .line 111
    :goto_0
    return v0

    :pswitch_1
    const/16 v0, 0xc8

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbPool()Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->sThumbPool:Lcom/pantech/app/vegacamera/bridge/data/BitmapPool;

    return-object v0
.end method


# virtual methods
.method public getDateInMs()J
    .locals 2

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFullImageRotation()I
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public abstract getHeight()I
.end method

.method public getLatLong([D)V
    .locals 3
    .parameter "latLong"

    .prologue
    const-wide/16 v1, 0x0

    .line 70
    const/4 v0, 0x0

    aput-wide v1, p1, v0

    .line 71
    const/4 v0, 0x1

    aput-wide v1, p1, v0

    .line 72
    return-void
.end method

.method public abstract getMimeType()Ljava/lang/String;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getTags()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getWidth()I
.end method

.method public abstract requestImage(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract requestLargeImage()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end method
