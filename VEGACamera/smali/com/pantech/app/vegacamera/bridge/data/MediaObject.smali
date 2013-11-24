.class public abstract Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
.super Ljava/lang/Object;
.source "MediaObject.java"


# static fields
.field public static final CACHE_FLAG_FULL:I = 0x2

.field public static final CACHE_FLAG_NO:I = 0x0

.field public static final CACHE_FLAG_SCREENNAIL:I = 0x1

.field public static final CACHE_STATUS_CACHED_FULL:I = 0x3

.field public static final CACHE_STATUS_CACHED_SCREENNAIL:I = 0x2

.field public static final CACHE_STATUS_CACHING:I = 0x1

.field public static final CACHE_STATUS_NOT_CACHED:I = 0x0

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final MEDIA_TYPE_ALL:I = 0x6

.field public static final MEDIA_TYPE_ALL_STRING:Ljava/lang/String; = "all"

.field public static final MEDIA_TYPE_IMAGE:I = 0x2

.field public static final MEDIA_TYPE_IMAGE_STRING:Ljava/lang/String; = "image"

.field public static final MEDIA_TYPE_UNKNOWN:I = 0x1

.field public static final MEDIA_TYPE_VIDEO:I = 0x4

.field public static final MEDIA_TYPE_VIDEO_STRING:Ljava/lang/String; = "video"

.field public static final SUPPORT_ACTION:I = 0x8000

.field public static final SUPPORT_ALL:I = -0x1

.field public static final SUPPORT_BACK:I = 0x4000

.field public static final SUPPORT_CACHE:I = 0x100

.field public static final SUPPORT_CAMERA_SHORTCUT:I = 0x10000

.field public static final SUPPORT_CROP:I = 0x8

.field public static final SUPPORT_DELETE:I = 0x1

.field public static final SUPPORT_EDIT:I = 0x200

.field public static final SUPPORT_FULL_IMAGE:I = 0x40

.field public static final SUPPORT_IMPORT:I = 0x800

.field public static final SUPPORT_INFO:I = 0x400

.field public static final SUPPORT_PLAY:I = 0x80

.field public static final SUPPORT_ROTATE:I = 0x2

.field public static final SUPPORT_SETAS:I = 0x20

.field public static final SUPPORT_SHARE:I = 0x4

.field public static final SUPPORT_SHOW_ON_MAP:I = 0x10

.field public static final SUPPORT_TAGGING:I = 0x20000

.field public static final SUPPORT_TRIM:I = 0x1000

.field public static final SUPPORT_UNLOCK:I = 0x2000

.field private static sVersionSerial:J


# instance fields
.field protected mDataVersion:J

.field protected final mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->sVersionSerial:J

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V
    .locals 0
    .parameter "path"
    .parameter "version"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1, p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->setObject(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)V

    .line 76
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 77
    iput-wide p2, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->mDataVersion:J

    .line 78
    return-void
.end method

.method public static getTypeFromString(Ljava/lang/String;)I
    .locals 1
    .parameter "s"

    .prologue
    .line 145
    const-string v0, "all"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x6

    .line 150
    :goto_0
    return v0

    .line 147
    :cond_0
    const-string v0, "image"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    const/4 v0, 0x2

    goto :goto_0

    .line 149
    :cond_1
    const-string v0, "video"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    const/4 v0, 0x4

    goto :goto_0

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTypeString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 155
    packed-switch p0, :pswitch_data_0

    .line 163
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 157
    :pswitch_1
    const-string v0, "image"

    .line 161
    :goto_0
    return-object v0

    .line 159
    :pswitch_2
    const-string v0, "video"

    goto :goto_0

    .line 161
    :pswitch_3
    const-string v0, "all"

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static declared-synchronized nextVersionNumber()J
    .locals 6

    .prologue
    .line 138
    const-class v1, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    monitor-enter v1

    :try_start_0
    sget-wide v2, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->sVersionSerial:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->sVersionSerial:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-wide v2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public Import()Z
    .locals 1

    .prologue
    .line 109
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cache(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clearCachedPanoramaSupport()V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheFlag()I
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheSize()J
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCacheStatus()I
    .locals 1

    .prologue
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getDataVersion()J
    .locals 2

    .prologue
    .line 118
    iget-wide v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->mDataVersion:J

    return-wide v0
.end method

.method public getDetails()Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;-><init>()V

    .line 114
    .local v0, details:Lcom/pantech/app/vegacamera/bridge/data/MediaDetails;
    return-object v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->mPath:Lcom/pantech/app/vegacamera/bridge/data/Path;

    return-object v0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public rotate(I)V
    .locals 1
    .parameter "degrees"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
