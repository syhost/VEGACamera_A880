.class public Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "LocalAlbumSet.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/util/FutureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;,
        Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
        "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = "1) GROUP BY 1,(2"

.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "MAX(datetaken) DESC"

.field private static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"

.field private static final INDEX_BUCKET_ID:I = 0x0

.field private static final INDEX_BUCKET_NAME:I = 0x2

.field private static final INDEX_MEDIA_TYPE:I = 0x1

.field public static final PATH_ALL:Lcom/pantech/app/vegacamera/bridge/data/Path; = null

.field public static final PATH_IMAGE:Lcom/pantech/app/vegacamera/bridge/data/Path; = null

.field public static final PATH_VIDEO:Lcom/pantech/app/vegacamera/bridge/data/Path; = null

.field private static final PROJECTION_BUCKET:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "LocalAlbumSet"

.field private static final mBaseUri:Landroid/net/Uri;

.field private static final mWatchUriImage:Landroid/net/Uri;

.field private static final mWatchUriVideo:Landroid/net/Uri;


# instance fields
.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

.field private final mHandler:Landroid/os/Handler;

.field private mIsLoading:Z

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadTask:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mNotifierImage:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

.field private final mNotifierVideo:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const-string v0, "/local/all"

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PATH_ALL:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 46
    const-string v0, "/local/image"

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PATH_IMAGE:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 47
    const-string v0, "/local/video"

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PATH_VIDEO:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 57
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 58
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    .line 59
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "bucket_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "media_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 78
    const-string v2, "bucket_display_name"

    aput-object v2, v0, v1

    .line 77
    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 2
    .parameter "path"
    .parameter "application"

    .prologue
    .line 105
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 106
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 107
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->getTypeFromPath(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mType:I

    .line 109
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mWatchUriImage:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;-><init>(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Landroid/net/Uri;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mNotifierImage:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    .line 110
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mWatchUriVideo:Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;-><init>(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Landroid/net/Uri;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mNotifierVideo:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    .line 111
    invoke-interface {p2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pantech/app/vegacamera/R$string;->set_label_local_albums:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)[Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->loadBucketEntries(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)[Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1([Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 172
    invoke-static {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->findBucket([Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2([Ljava/lang/Object;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 325
    invoke-static {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;)Lcom/pantech/app/vegacamera/bridge/CameraApp;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;)I
    .locals 1
    .parameter

    .prologue
    .line 93
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mType:I

    return v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;Lcom/pantech/app/vegacamera/bridge/data/DataManager;ILcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 213
    invoke-direct/range {p0 .. p5}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->getLocalAlbum(Lcom/pantech/app/vegacamera/bridge/data/DataManager;ILcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 3
    .parameter "array"
    .parameter "i"
    .parameter "j"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    .prologue
    .line 326
    aget-object v1, p0, p2

    .line 327
    .local v1, temp:Ljava/lang/Object;,"TT;"
    move v0, p2

    .local v0, k:I
    :goto_0
    if-gt v0, p1, :cond_0

    .line 330
    aput-object v1, p0, p1

    .line 331
    return-void

    .line 328
    :cond_0
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p0, v2

    aput-object v2, p0, v0

    .line 327
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private static findBucket([Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;I)I
    .locals 3
    .parameter "entries"
    .parameter "bucketId"

    .prologue
    .line 173
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p0

    .local v1, n:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 177
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 174
    .restart local v0       #i:I
    :cond_1
    aget-object v2, p0, v0

    iget v2, v2, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;->bucketId:I

    if-eq v2, p1, :cond_0

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getBucketName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 7
    .parameter "resolver"
    .parameter "bucketId"

    .prologue
    .line 235
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 237
    .local v1, uri:Landroid/net/Uri;
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 240
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "query fail: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, ""

    .line 244
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 246
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 244
    :cond_1
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 245
    :catchall_0
    move-exception v0

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 247
    throw v0
.end method

.method private getLocalAlbum(Lcom/pantech/app/vegacamera/bridge/data/DataManager;ILcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 14
    .parameter "manager"
    .parameter "type"
    .parameter "parent"
    .parameter "id"
    .parameter "name"

    .prologue
    .line 214
    sget-object v11, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v11

    .line 215
    :try_start_0
    invoke-virtual/range {p3 .. p4}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v2

    .line 216
    .local v2, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-virtual {p1, v2}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->peekMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v10

    .line 217
    .local v10, object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    if-eqz v10, :cond_0

    .line 218
    check-cast v10, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .end local v10           #object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    monitor-exit v11

    move-object v1, v10

    .line 226
    :goto_0
    return-object v1

    .line 219
    .restart local v10       #object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 230
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    .end local v2           #path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v10           #object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 221
    .restart local v2       #path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .restart local v10       #object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    const/4 v5, 0x1

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;IZLjava/lang/String;)V

    monitor-exit v11

    goto :goto_0

    .line 223
    :pswitch_2
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    const/4 v5, 0x0

    move/from16 v4, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;IZLjava/lang/String;)V

    monitor-exit v11

    goto :goto_0

    .line 225
    :pswitch_3
    sget-object v9, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 226
    .local v9, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;

    const/4 v3, 0x2

    new-array v12, v3, [Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    const/4 v13, 0x0

    .line 227
    const/4 v5, 0x2

    sget-object v6, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PATH_IMAGE:Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-object v3, p0

    move-object v4, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->getLocalAlbum(Lcom/pantech/app/vegacamera/bridge/data/DataManager;ILcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v3

    aput-object v3, v12, v13

    const/4 v13, 0x1

    .line 228
    const/4 v5, 0x4

    sget-object v6, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PATH_VIDEO:Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-object v3, p0

    move-object v4, p1

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->getLocalAlbum(Lcom/pantech/app/vegacamera/bridge/data/DataManager;ILcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v3

    aput-object v3, v12, v13

    .line 226
    move/from16 v0, p4

    invoke-direct {v1, v2, v9, v12, v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/util/Comparator;[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;I)V

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getTypeFromPath(Lcom/pantech/app/vegacamera/bridge/data/Path;)I
    .locals 3
    .parameter "path"

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, name:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 119
    :cond_0
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private loadBucketEntries(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)[Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
    .locals 12
    .parameter "jc"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 138
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mBaseUri:Landroid/net/Uri;

    .line 140
    .local v1, uri:Landroid/net/Uri;
    const-string v0, "DebugLoadingTime"

    const-string v2, "start quering media provider"

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string v3, "1) GROUP BY 1,(2"

    const-string v5, "MAX(datetaken) DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 142
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 143
    const-string v0, "LocalAlbumSet"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cannot open local database: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-array v4, v10, [Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;

    .line 169
    :goto_0
    return-object v4

    .line 146
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 147
    .local v6, buffer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;>;"
    const/4 v9, 0x0

    .line 148
    .local v9, typeBits:I
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 149
    or-int/lit8 v9, v9, 0x2

    .line 151
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 152
    or-int/lit8 v9, v9, 0x8

    .line 155
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    const-string v0, "DebugLoadingTime"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " buckets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 169
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;

    move-object v4, v0

    goto :goto_0

    .line 156
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    shl-int v0, v11, v0

    and-int/2addr v0, v9

    if-eqz v0, :cond_4

    .line 157
    new-instance v8, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v0, v2}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;-><init>(ILjava/lang/String;)V

    .line 158
    .local v8, entry:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .end local v8           #entry:Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$BucketEntry;
    :cond_4
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 168
    throw v0
.end method


# virtual methods
.method fakeChange()V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mNotifierImage:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->fakeChange()V

    .line 297
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mNotifierVideo:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->fakeChange()V

    .line 298
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 1
    .parameter "index"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    return-object v0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoading()Z
    .locals 1

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mIsLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFutureDone(Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSet;>;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadTask:Lcom/pantech/app/vegacamera/bridge/util/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p1, :cond_0

    .line 292
    :goto_0
    monitor-exit p0

    return-void

    .line 282
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 283
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mIsLoading:Z

    .line 284
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$1;-><init>(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reload()J
    .locals 4

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mNotifierImage:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->isDirty()Z

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mNotifierVideo:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->isDirty()Z

    move-result v2

    or-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 264
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mIsLoading:Z

    .line 265
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getThreadPool()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;-><init>(Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet$AlbumsLoader;)V

    invoke-virtual {v1, v2, p0}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 268
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    .line 269
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    .line 270
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 273
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->nextVersionNumber()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mDataVersion:J

    .line 275
    :cond_2
    iget-wide v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->mDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v1

    .line 270
    :cond_3
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 271
    .local v0, album:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;->reload()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 261
    .end local v0           #album:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
