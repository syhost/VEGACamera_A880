.class public Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;
.super Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/LocalVideo$LocalVideoRequest;
    }
.end annotation


# static fields
.field private static final INDEX_BUCKET_ID:I = 0xa

.field private static final INDEX_CAPTION:I = 0x1

.field private static final INDEX_DATA:I = 0x8

.field private static final INDEX_DATE_ADDED:I = 0x6

.field private static final INDEX_DATE_MODIFIED:I = 0x7

.field private static final INDEX_DATE_TAKEN:I = 0x5

.field private static final INDEX_DURATION:I = 0x9

.field private static final INDEX_ID:I = 0x0

.field private static final INDEX_LATITUDE:I = 0x3

.field private static final INDEX_LONGITUDE:I = 0x4

.field private static final INDEX_MIME_TYPE:I = 0x2

.field private static final INDEX_RESOLUTION:I = 0xc

.field private static final INDEX_SIZE:I = 0xb

.field static final ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path; = null

.field static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocalVideo"


# instance fields
.field public durationInSec:I

.field private final mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const-string v0, "/local/video/item"

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 57
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 58
    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 59
    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 60
    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "resolution"

    aput-object v2, v0, v1

    .line 57
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;I)V
    .locals 6
    .parameter "path"
    .parameter "context"
    .parameter "id"

    .prologue
    .line 73
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 74
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 75
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 76
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 77
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    invoke-static {v1, v2, v3, p3}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;->getItemCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v0

    .line 78
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 79
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

    .line 82
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 90
    return-void

    .line 85
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

    .line 87
    :catchall_0
    move-exception v3

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 89
    throw v3
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;Landroid/database/Cursor;)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "cursor"

    .prologue
    .line 67
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 68
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 69
    invoke-direct {p0, p3}, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->loadFromCursor(Landroid/database/Cursor;)V

    .line 70
    return-void
.end method

.method private loadFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->id:I

    .line 94
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->caption:Ljava/lang/String;

    .line 95
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 96
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->latitude:D

    .line 97
    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->longitude:D

    .line 98
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->dateTakenInMs:J

    .line 99
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 100
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->durationInSec:I

    .line 101
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->bucketId:I

    .line 102
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->fileSize:J

    .line 103
    const/16 v0, 0xc

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->parseResolution(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private parseResolution(Ljava/lang/String;)V
    .locals 5
    .parameter "resolution"

    .prologue
    .line 107
    if-nez p1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const/16 v4, 0x78

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 110
    .local v1, m:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 113
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 114
    .local v3, w:I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, h:I
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->width:I

    .line 116
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->height:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v0           #h:I
    .end local v3           #w:I
    :catch_0
    move-exception v2

    .line 118
    .local v2, t:Ljava/lang/Throwable;
    const-string v4, "LocalVideo"

    invoke-static {v4, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 6

    .prologue
    .line 174
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->assertNotInRenderThread()V

    .line 175
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 176
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->id:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->broadcastLocalDeletion()V

    .line 178
    return-void
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 187
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 188
    .local v0, baseUri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getDetails()Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    .locals 5

    .prologue
    .line 203
    invoke-super {p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->getDetails()Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;

    move-result-object v0

    .line 204
    .local v0, details:Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->durationInSec:I

    .line 205
    .local v1, s:I
    if-lez v1, :cond_0

    .line 206
    const/16 v2, 0x8

    .line 207
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->durationInSec:I

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/GalleryUtils;->formatDuration(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 206
    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    .line 209
    :cond_0
    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x4

    return v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 169
    const/16 v0, 0x485

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->width:I

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
    .line 142
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo$LocalVideoRequest;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->filePath:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo$LocalVideoRequest;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;Lcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)V

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
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot regquest a large image to a local video!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public rotate(I)V
    .locals 0
    .parameter "degrees"

    .prologue
    .line 183
    return-void
.end method

.method protected updateFromCursor(Landroid/database/Cursor;)Z
    .locals 5
    .parameter "cursor"

    .prologue
    .line 124
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;-><init>()V

    .line 125
    .local v0, uh:Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->id:I

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->id:I

    .line 126
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->caption:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->caption:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mimeType:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->mimeType:Ljava/lang/String;

    .line 128
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->latitude:D

    const/4 v3, 0x3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->latitude:D

    .line 129
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->longitude:D

    const/4 v3, 0x4

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(DD)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->longitude:D

    .line 130
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->dateTakenInMs:J

    const/4 v3, 0x5

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->dateTakenInMs:J

    .line 131
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->dateAddedInSec:J

    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->dateAddedInSec:J

    .line 132
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->dateModifiedInSec:J

    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->dateModifiedInSec:J

    .line 133
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->filePath:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->filePath:Ljava/lang/String;

    .line 134
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->durationInSec:I

    const/16 v2, 0x9

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->durationInSec:I

    .line 135
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->bucketId:I

    const/16 v2, 0xa

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(II)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->bucketId:I

    .line 136
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->fileSize:J

    const/16 v3, 0xb

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->update(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->fileSize:J

    .line 137
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/util/UpdateHelper;->isUpdated()Z

    move-result v1

    return v1
.end method
