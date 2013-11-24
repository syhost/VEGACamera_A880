.class Lcom/pantech/app/vegacamera/bridge/data/LocalSource;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
.source "LocalSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/LocalSource$IdComparator;
    }
.end annotation


# static fields
.field public static final KEY_BUCKET_ID:Ljava/lang/String; = "bucketId"

.field private static final LOCAL_ALL_ALBUM:I = 0x7

.field private static final LOCAL_ALL_ALBUMSET:I = 0x6

.field private static final LOCAL_IMAGE_ALBUM:I = 0x2

.field private static final LOCAL_IMAGE_ALBUMSET:I = 0x0

.field private static final LOCAL_IMAGE_ITEM:I = 0x4

.field private static final LOCAL_VIDEO_ALBUM:I = 0x3

.field private static final LOCAL_VIDEO_ALBUMSET:I = 0x1

.field private static final LOCAL_VIDEO_ITEM:I = 0x5

.field private static final NO_MATCH:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LocalSource"

.field public static final sIdComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

.field private mClient:Landroid/content/ContentProviderClient;

.field private mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

.field private final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource$IdComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/LocalSource$IdComparator;-><init>(Lcom/pantech/app/vegacamera/bridge/data/LocalSource$IdComparator;)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 56
    const-string v0, "local"

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    .line 57
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 58
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    .line 59
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/local/image"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 60
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/local/video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/local/all"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 63
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/local/image/*"

    invoke-virtual {v0, v1, v3}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/local/video/*"

    invoke-virtual {v0, v1, v4}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/local/all/*"

    invoke-virtual {v0, v1, v7}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/local/image/item/*"

    invoke-virtual {v0, v1, v5}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/local/video/item/*"

    invoke-virtual {v0, v1, v6}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 69
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/images/media"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 72
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/video/media"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "media"

    const-string v2, "external/file"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    return-void
.end method

.method private processMapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;Z)V
    .locals 12
    .parameter
    .parameter "consumer"
    .parameter "isImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;",
            ">;",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;"
    const-string v10, "LocalSource"

    const-string v11, "processMapMediaItems"

    invoke-static {v10, v11}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v10, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->sIdComparator:Ljava/util/Comparator;

    invoke-static {p1, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 210
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 211
    .local v6, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v6, :cond_0

    .line 237
    return-void

    .line 212
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;

    .line 215
    .local v7, pid:Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v2, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, v7, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 217
    .local v9, startId:I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v4, v1, 0x1

    .local v4, j:I
    :goto_1
    if-lt v4, v6, :cond_2

    .line 229
    :cond_1
    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-static {v10, p3, v2}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;->getMediaItemById(Lcom/pantech/app/vegacamera/bridge/CameraApp;ZLjava/util/ArrayList;)[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v3

    .line 230
    .local v3, items:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    move v5, v1

    .local v5, k:I
    :goto_2
    if-lt v5, v4, :cond_3

    .line 235
    move v1, v4

    goto :goto_0

    .line 221
    .end local v3           #items:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .end local v5           #k:I
    :cond_2
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;

    .line 222
    .local v8, pid2:Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;
    iget-object v10, v8, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v10}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 223
    .local v0, curId:I
    sub-int v10, v0, v9

    const/16 v11, 0x1f4

    if-ge v10, v11, :cond_1

    .line 226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 231
    .end local v0           #curId:I
    .end local v8           #pid2:Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;
    .restart local v3       #items:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .restart local v5       #k:I
    :cond_3
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;

    .line 232
    .restart local v8       #pid2:Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;
    iget v10, v8, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->id:I

    sub-int v11, v5, v1

    aget-object v11, v3, v11

    invoke-interface {p2, v10, v11}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;->consume(ILcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method


# virtual methods
.method public createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 10
    .parameter "path"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 78
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 79
    .local v0, app:Lcom/pantech/app/vegacamera/bridge/CameraApp;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v6, p1}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->match(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 101
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bad path: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 83
    :pswitch_0
    new-instance v6, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v6, p1, v7}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    .line 99
    :goto_0
    return-object v6

    .line 85
    :pswitch_1
    new-instance v6, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v7, v9}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-direct {v6, p1, v0, v7, v8}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;IZ)V

    goto :goto_0

    .line 87
    :pswitch_2
    new-instance v6, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v7, v9}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getIntVar(I)I

    move-result v7

    invoke-direct {v6, p1, v0, v7, v9}, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;IZ)V

    goto :goto_0

    .line 89
    :pswitch_3
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v6, v9}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getIntVar(I)I

    move-result v1

    .line 90
    .local v1, bucketId:I
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v3

    .line 91
    .local v3, dataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    sget-object v6, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PATH_IMAGE:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v6, v1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 92
    .local v4, imageSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    sget-object v6, Lcom/pantech/app/vegacamera/bridge/data/LocalAlbumSet;->PATH_VIDEO:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v6, v1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 93
    .local v5, videoSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    .line 94
    .local v2, comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    new-instance v6, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    aput-object v4, v7, v9

    aput-object v5, v7, v8

    invoke-direct {v6, p1, v2, v7, v1}, Lcom/pantech/app/vegacamera/bridge/data/LocalMergeAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Ljava/util/Comparator;[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;I)V

    goto :goto_0

    .line 97
    .end local v1           #bucketId:I
    .end local v2           #comp:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    .end local v3           #dataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    .end local v4           #imageSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .end local v5           #videoSet:Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    :pswitch_4
    new-instance v6, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getIntVar(I)I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;I)V

    goto :goto_0

    .line 99
    :pswitch_5
    new-instance v6, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getIntVar(I)I

    move-result v8

    invoke-direct {v6, p1, v7, v8}, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;I)V

    goto :goto_0

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 8
    .parameter "uri"
    .parameter "type"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    .line 147
    const-string v4, "LocalSource"

    const-string v5, "findPathByUri"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :try_start_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    return-object v3

    .line 151
    :pswitch_0
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 152
    .local v1, id:J
    cmp-long v4, v1, v6

    if-ltz v4, :cond_0

    sget-object v4, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v4, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(J)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v3

    goto :goto_0

    .line 155
    .end local v1           #id:J
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 156
    .restart local v1       #id:J
    cmp-long v4, v1, v6

    if-ltz v4, :cond_0

    sget-object v4, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v4, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(J)Lcom/pantech/app/vegacamera/bridge/data/Path;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 168
    .end local v1           #id:J
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "LocalSource"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uri: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDefaultSetOf(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 3
    .parameter "item"

    .prologue
    .line 176
    const-string v1, "LocalSource"

    const-string v2, "getDefaultSetOf"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    .line 178
    .local v0, object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    instance-of v1, v0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "/local/all"

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;

    .end local v0           #object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/LocalMediaItem;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    .line 181
    :goto_0
    return-object v1

    .restart local v0       #object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;)V
    .locals 8
    .parameter
    .parameter "consumer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;",
            ">;",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;"
    const-string v6, "LocalSource"

    const-string v7, "mapMediaItems"

    invoke-static {v6, v7}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v1, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v5, videoList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 190
    .local v2, n:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 202
    const/4 v6, 0x1

    invoke-direct {p0, v1, p2, v6}, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;Z)V

    .line 203
    const/4 v6, 0x0

    invoke-direct {p0, v5, p2, v6}, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->processMapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;Z)V

    .line 204
    return-void

    .line 191
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;

    .line 194
    .local v4, pid:Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;
    iget-object v6, v4, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;->path:Lcom/pantech/app/vegacamera/bridge/data/Path;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getParent()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v3

    .line 195
    .local v3, parent:Lcom/pantech/app/vegacamera/bridge/data/Path;
    sget-object v6, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne v3, v6, :cond_2

    .line 196
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_2
    sget-object v6, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

    if-ne v3, v6, :cond_1

    .line 198
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 264
    const-string v0, "LocalSource"

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 267
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 258
    const-string v0, "LocalSource"

    const-string v1, "resume"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;->mClient:Landroid/content/ContentProviderClient;

    .line 260
    return-void
.end method
