.class public Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
.source "SecureAlbum.java"


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private mAllItemTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mAllItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

.field private mExistingItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxImageId:I

.field private mMaxVideoId:I

.field private mMinImageId:I

.field private mMinVideoId:I

.field private final mNotifier:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

.field private mShowUnlockItem:Z

.field private mUnlockItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mWatchUris:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 4
    .parameter "path"
    .parameter "application"
    .parameter "unlock"

    .prologue
    const v3, 0x7fffffff

    const/high16 v2, -0x8000

    .line 54
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 35
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMinImageId:I

    .line 36
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMaxImageId:I

    .line 37
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMinVideoId:I

    .line 38
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMaxVideoId:I

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    .line 55
    invoke-interface {p2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mContext:Landroid/content/Context;

    .line 56
    invoke-interface {p2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    .line 57
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    sget-object v1, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;-><init>(Lcom/pantech/app/vegacamera/bridge/data/MediaSet;[Landroid/net/Uri;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mNotifier:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    .line 58
    iput-object p3, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mUnlockItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 59
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->isCameraBucketEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->isCameraBucketEmpty(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mShowUnlockItem:Z

    .line 60
    return-void

    .line 59
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCameraBucketEmpty(Landroid/net/Uri;)Z
    .locals 9
    .parameter "baseUri"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 150
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "limit"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 151
    .local v1, uri:Landroid/net/Uri;
    new-array v4, v7, [Ljava/lang/String;

    sget v0, Lcom/pantech/app/vegacamera/bridge/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    .line 152
    .local v4, selection:[Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const-string v3, "bucket_id = ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 153
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 156
    :goto_0
    return v7

    :cond_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 158
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v7, v0

    .line 156
    goto :goto_0

    :cond_1
    move v0, v8

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 159
    throw v0
.end method

.method private queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;
    .locals 8
    .parameter "uri"
    .parameter "minId"
    .parameter "maxId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 131
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v7, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x8000

    if-ne p3, v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object v7

    .line 135
    :cond_1
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 136
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->PROJECTION:[Ljava/lang/String;

    const-string v3, "_id BETWEEN ? AND ?"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 137
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 140
    :goto_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 141
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 143
    :catchall_0
    move-exception v0

    .line 144
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 145
    throw v0
.end method

.method private updateExistingItems()V
    .locals 9

    .prologue
    .line 163
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 184
    :cond_0
    return-void

    .line 167
    :cond_1
    sget-object v6, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMinImageId:I

    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMaxImageId:I

    invoke-direct {p0, v6, v7, v8}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;

    move-result-object v2

    .line 168
    .local v2, imageIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v6, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMinVideoId:I

    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMaxVideoId:I

    invoke-direct {p0, v6, v7, v8}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->queryExistingIds(Landroid/net/Uri;II)Ljava/util/ArrayList;

    move-result-object v5

    .line 171
    .local v5, videoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 172
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 173
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 174
    .local v4, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 175
    .local v3, isVideo:Z
    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 176
    .local v1, id:I
    if-eqz v3, :cond_3

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 178
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 180
    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 181
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addMediaItem(ZI)V
    .locals 4
    .parameter "isVideo"
    .parameter "id"

    .prologue
    .line 64
    if-eqz p1, :cond_1

    .line 65
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;->ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 66
    .local v1, pathBase:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMinVideoId:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMinVideoId:I

    .line 67
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMaxVideoId:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMaxVideoId:I

    .line 73
    :goto_0
    invoke-virtual {v1, p2}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    .line 74
    .local v0, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mAllItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mAllItemTypes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mNotifier:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->fakeChange()V

    .line 79
    :cond_0
    return-void

    .line 69
    .end local v0           #path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v1           #pathBase:Lcom/pantech/app/vegacamera/bridge/data/Path;
    :cond_1
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/data/LocalImage;->ITEM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 70
    .restart local v1       #pathBase:Lcom/pantech/app/vegacamera/bridge/data/Path;
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMinImageId:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMinImageId:I

    .line 71
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMaxImageId:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mMaxImageId:I

    goto :goto_0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 9
    .parameter "start"
    .parameter "count"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 85
    .local v3, existingCount:I
    add-int/lit8 v7, v3, 0x1

    if-lt p1, v7, :cond_1

    .line 86
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 108
    :cond_0
    :goto_0
    return-object v5

    .line 90
    :cond_1
    add-int v7, p1, p2

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 91
    .local v2, end:I
    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 94
    .local v6, subset:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    sub-int v7, v2, p1

    new-array v0, v7, [Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 95
    .local v0, buf:[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum$1;

    invoke-direct {v1, p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum$1;-><init>(Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;[Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 101
    .local v1, consumer:Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mDataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v1, v8}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)V

    .line 102
    new-instance v5, Ljava/util/ArrayList;

    sub-int v7, v2, p1

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    .local v5, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaItem;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, v0

    if-lt v4, v7, :cond_2

    .line 106
    iget-boolean v7, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mShowUnlockItem:Z

    if-eqz v7, :cond_0

    .line 107
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mUnlockItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_2
    aget-object v7, v0, v4

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public getMediaItemCount()I
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mExistingItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mShowUnlockItem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "secure"

    return-object v0
.end method

.method public isLeafAlbum()Z
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mNotifier:Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mDataVersion:J

    .line 125
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->updateExistingItems()V

    .line 127
    :cond_0
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;->mDataVersion:J

    return-wide v0
.end method
