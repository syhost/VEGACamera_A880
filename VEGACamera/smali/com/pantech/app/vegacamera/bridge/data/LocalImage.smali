.class public Lcom/pantech/app/vegacamera/bridge/data/LocalImage;
.super Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;
.source "LocalImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalImageRequest;,
        Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalLargeImageRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_HEIGHT:I = 0xd

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_ORIENTATION:I = 0x9

.field private static final INDEX_SIZE:I = 0xb

.field private static final INDEX_WIDTH:I = 0xc

.field static final ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path; = null

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocalImage"


# instance fields
.field private final mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

.field public rotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "/local/image/item"

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 64
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 65
    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 66
    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 67
    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 68
    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 69
    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 70
    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 71
    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 72
    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 73
    const-string v2, "orientation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 74
    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 75
    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 76
    const-string v2, "width"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 77
    const-string v2, "height"

    aput-object v2, v0, v1

    .line 64
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;I)V
    .locals 6
    .parameter "path"
    .parameter "application"
    .parameter "id"

    .prologue
    .line 91
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 92
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 93
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 94
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 95
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 96
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 97
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cannot get cursor for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 108
    return-void

    .line 103
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "cannot find data for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :catchall_0
    move-exception v3

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 107
    throw v3
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;Landroid/database/Cursor;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    .line 85
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 86
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 87
    invoke-direct {p0, p3}, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->loadFromCursor(Landroid/database/Cursor;)V

    .line 88
    return-void
.end method

.method private static getExifOrientation(I)Ljava/lang/String;
    .locals 3
    .parameter "orientation"

    .prologue
    .line 231
    sparse-switch p0, :sswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 233
    :sswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    return-object v0

    .line 235
    :sswitch_1
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 237
    :sswitch_2
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 239
    :sswitch_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->id:I

    .line 112
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->caption:Ljava/lang/String;

    .line 113
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 114
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->latitude:D

    .line 115
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->longitude:D

    .line 116
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->dateTakenInMs:J

    .line 117
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->filePath:Ljava/lang/String;

    .line 118
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->rotation:I

    .line 119
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->bucketId:I

    .line 120
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->fileSize:J

    .line 121
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->width:I

    .line 122
    const/16 v0, 0xd

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->height:I

    .line 123
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 224
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->assertNotInRenderThread()V

    .line 225
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 226
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->broadcastLocalDeletion()V

    .line 228
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 274
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 275
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    .locals 3

    .prologue
    .line 285
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->getDetails()Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;

    move-result-object v0

    .line 286
    .local v0, details:Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    const/4 v1, 0x7

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->rotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 287
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;->extractExifInfo(Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;Ljava/lang/String;)V

    .line 288
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 280
    const/4 v0, 0x2

    return v0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->rotation:I

    return v0
.end method

.method public getSupportedOperations()I
    .locals 5

    .prologue
    .line 206
    const v0, 0x2062d

    .line 208
    .local v0, operation:I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->isSupportedByRegionDecoder(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    or-int/lit8 v0, v0, 0x40

    .line 212
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mimeType:Ljava/lang/String;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->isRotationSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    or-int/lit8 v0, v0, 0x2

    .line 216
    :cond_1
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->latitude:D

    iget-wide v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->longitude:D

    invoke-static {v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 217
    or-int/lit8 v0, v0, 0x10

    .line 219
    :cond_2
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
    .locals 4
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalImageRequest;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalImageRequest;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;Lcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalLargeImageRequest;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/LocalImage$LocalLargeImageRequest;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public rotate(I)V
    .locals 10
    .parameter "degrees"

    .prologue
    .line 247
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->assertNotInRenderThread()V

    .line 248
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 249
    .local v0, baseUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 250
    .local v4, values:Landroid/content/ContentValues;
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->rotation:I

    add-int/2addr v5, p1

    rem-int/lit16 v3, v5, 0x168

    .line 251
    .local v3, rotation:I
    if-gez v3, :cond_0

    .line 252
    add-int/lit16 v3, v3, 0x168

    .line 254
    :cond_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mimeType:Ljava/lang/String;

    const-string v6, "image/jpeg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v2, v5}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 257
    .local v2, exif:Landroid/media/ExifInterface;
    const-string v5, "Orientation"

    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v2           #exif:Landroid/media/ExifInterface;
    :goto_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->fileSize:J

    .line 265
    const-string v5, "_size"

    iget-wide v6, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->fileSize:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 268
    :cond_1
    const-string v5, "orientation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 269
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v5}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->id:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v0, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 270
    return-void

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Ljava/io/IOException;
    const-string v5, "LocalImage"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot set exif data: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    .line 127
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;-><init>()V

    .line 128
    .local v0, uh:Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->id:I

    .line 129
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->caption:Ljava/lang/String;

    .line 130
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->mimeType:Ljava/lang/String;

    .line 131
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->latitude:D

    .line 132
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->longitude:D

    .line 133
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->dateTakenInMs:J

    .line 134
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->dateAddedInSec:J

    .line 135
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->dateModifiedInSec:J

    .line 136
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->filePath:Ljava/lang/String;

    .line 137
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->rotation:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->rotation:I

    .line 138
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->bucketId:I

    .line 139
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->fileSize:J

    .line 140
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->width:I

    const/16 v2, 0xc

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->width:I

    .line 141
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->height:I

    const/16 v2, 0xd

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->height:I

    .line 142
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
