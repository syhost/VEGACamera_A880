.class public Lcom/pantech/app/vegacamera/bridge/data/DataManager;
.super Ljava/lang/Object;
.source "DataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/DataManager$DateTakenComparator;,
        Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_PICTURE:Ljava/lang/String; = "com.pantech.app.vegacamera.action.DELETE_PICTURE"

.field public static final INCLUDE_ALL:I = 0x3

.field public static final INCLUDE_IMAGE:I = 0x1

.field public static final INCLUDE_LOCAL_ALL_ONLY:I = 0x7

.field public static final INCLUDE_LOCAL_IMAGE_ONLY:I = 0x5

.field public static final INCLUDE_LOCAL_ONLY:I = 0x4

.field public static final INCLUDE_LOCAL_VIDEO_ONLY:I = 0x6

.field public static final INCLUDE_VIDEO:I = 0x2

.field public static final LOCK:Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "DataManager"

.field private static final TOP_IMAGE_SET_PATH:Ljava/lang/String; = "/combo/{/mtp,/local/image,/picasa/image}"

.field private static final TOP_LOCAL_IMAGE_SET_PATH:Ljava/lang/String; = "/local/image"

.field private static final TOP_LOCAL_SET_PATH:Ljava/lang/String; = "/local/all"

.field private static final TOP_LOCAL_VIDEO_SET_PATH:Ljava/lang/String; = "/local/video"

.field private static final TOP_SET_PATH:Ljava/lang/String; = "/combo/{/mtp,/local/all,/picasa/all}"

.field private static final TOP_VIDEO_SET_PATH:Ljava/lang/String; = "/combo/{/local/video,/picasa/video}"

.field public static final sDateTakenComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActiveCount:I

.field private mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

.field private final mDefaultMainHandler:Landroid/os/Handler;

.field private mNotifierMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->LOCK:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/DataManager$DateTakenComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager$DateTakenComparator;-><init>(Lcom/pantech/app/vegacamera/bridge/data/DataManager$DateTakenComparator;)V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->sDateTakenComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 2
    .parameter "application"

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mActiveCount:I

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    .line 95
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    .line 97
    return-void
.end method


# virtual methods
.method addSource(Lcom/pantech/app/vegacamera/bridge/data/MediaSource;)V
    .locals 2
    .parameter "source"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    return-void
.end method

.method public broadcastLocalDeletion()V
    .locals 3

    .prologue
    .line 315
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 316
    .local v1, manager:Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.pantech.app.vegacamera.action.DELETE_PICTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 318
    return-void
.end method

.method public delete(Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 233
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->delete()V

    .line 234
    return-void
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 5
    .parameter "uri"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 249
    if-nez p1, :cond_0

    move-object v0, v2

    .line 256
    :goto_0
    return-object v0

    .line 251
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v0, v2

    .line 256
    goto :goto_0

    .line 251
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;

    .line 252
    .local v1, source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    invoke-virtual {v1, p1, p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    .line 253
    .local v0, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public getContentUri(Lcom/pantech/app/vegacamera/bridge/data/Path;)Landroid/net/Uri;
    .locals 1
    .parameter "path"

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSetOf(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 3
    .parameter "item"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;

    .line 261
    .local v0, source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->getDefaultSetOf(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method public getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 150
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getObject()Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    .line 151
    .local v0, obj:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    if-eqz v0, :cond_0

    .line 170
    .end local v0           #obj:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :goto_0
    return-object v0

    .line 154
    .restart local v0       #obj:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :cond_0
    const-string v5, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getMediaObject path : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;

    .line 157
    .local v2, source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    if-nez v2, :cond_1

    .line 158
    const-string v5, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot find media source for path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    .line 159
    goto :goto_0

    .line 163
    :cond_1
    :try_start_0
    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v1

    .line 164
    .local v1, object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    if-nez v1, :cond_2

    .line 165
    const-string v5, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "cannot create media object: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v1

    .line 167
    goto :goto_0

    .line 168
    .end local v1           #object:Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    :catch_0
    move-exception v3

    .line 169
    .local v3, t:Ljava/lang/Throwable;
    const-string v5, "DataManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "exception in creating media object: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 170
    goto :goto_0
.end method

.method public getMediaObject(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 1
    .parameter "s"

    .prologue
    .line 175
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public getMediaSet(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 1
    .parameter "path"

    .prologue
    .line 179
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    return-object v0
.end method

.method public getMediaSet(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 1
    .parameter "s"

    .prologue
    .line 183
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    return-object v0
.end method

.method public getMediaSetsFromString(Ljava/lang/String;)[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .locals 6
    .parameter "segment"

    .prologue
    .line 187
    const-string v4, "DataManager"

    const-string v5, "getMediaSetsFromString"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->splitSequence(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, seq:[Ljava/lang/String;
    array-length v1, v2

    .line 190
    .local v1, n:I
    new-array v3, v1, [Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    .line 191
    .local v3, sets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 194
    return-object v3

    .line 192
    :cond_0
    aget-object v4, v2, v0

    invoke-virtual {p0, v4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v4

    aput-object v4, v3, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMediaType(Lcom/pantech/app/vegacamera/bridge/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->getMediaType()I

    move-result v0

    return v0
.end method

.method public getSupportedOperations(Lcom/pantech/app/vegacamera/bridge/data/Path;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->getSupportedOperations()I

    move-result v0

    return v0
.end method

.method public getTopSetPath(I)Ljava/lang/String;
    .locals 1
    .parameter "typeBits"

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 136
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 124
    :pswitch_1
    const-string v0, "/combo/{/mtp,/local/image,/picasa/image}"

    .line 134
    :goto_0
    return-object v0

    .line 126
    :pswitch_2
    const-string v0, "/combo/{/local/video,/picasa/video}"

    goto :goto_0

    .line 128
    :pswitch_3
    const-string v0, "/combo/{/mtp,/local/all,/picasa/all}"

    goto :goto_0

    .line 130
    :pswitch_4
    const-string v0, "/local/image"

    goto :goto_0

    .line 132
    :pswitch_5
    const-string v0, "/local/video"

    goto :goto_0

    .line 134
    :pswitch_6
    const-string v0, "/local/all"

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getTotalTargetCacheSize()J
    .locals 6

    .prologue
    .line 276
    const-wide/16 v1, 0x0

    .line 277
    .local v1, sum:J
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 280
    return-wide v1

    .line 277
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;

    .line 278
    .local v0, source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->getTotalTargetCacheSize()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0
.end method

.method public getTotalUsedCacheSize()J
    .locals 6

    .prologue
    .line 266
    const-wide/16 v1, 0x0

    .line 267
    .local v1, sum:J
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 270
    return-wide v1

    .line 267
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;

    .line 268
    .local v0, source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->getTotalUsedCacheSize()J

    move-result-wide v4

    add-long/2addr v1, v4

    goto :goto_0
.end method

.method public declared-synchronized initializeSourceMap()V
    .locals 3

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    monitor-exit p0

    return-void

    .line 104
    :cond_1
    :try_start_1
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/LocalSource;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->addSource(Lcom/pantech/app/vegacamera/bridge/data/MediaSource;)V

    .line 105
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->addSource(Lcom/pantech/app/vegacamera/bridge/data/MediaSource;)V

    .line 107
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/ComboSource;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/ComboSource;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->addSource(Lcom/pantech/app/vegacamera/bridge/data/MediaSource;)V

    .line 109
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->addSource(Lcom/pantech/app/vegacamera/bridge/data/MediaSource;)V

    .line 110
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/UriSource;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/UriSource;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->addSource(Lcom/pantech/app/vegacamera/bridge/data/MediaSource;)V

    .line 111
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->addSource(Lcom/pantech/app/vegacamera/bridge/data/MediaSource;)V

    .line 113
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mActiveCount:I

    if-lez v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;

    .line 115
    .local v0, source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->resume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    .end local v0           #source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public mapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;I)V
    .locals 10
    .parameter
    .parameter "consumer"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/data/Path;",
            ">;",
            "Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/Path;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 207
    .local v4, n:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 219
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 225
    return-void

    .line 208
    :cond_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/bridge/data/Path;

    .line 209
    .local v5, path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getPrefix()Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, prefix:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 211
    .local v1, group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;"
    if-nez v1, :cond_2

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .restart local v1       #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;"
    invoke-virtual {v3, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_2
    new-instance v8, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;

    add-int v9, v2, p3

    invoke-direct {v8, v5, v9}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v1           #group:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;"
    .end local v5           #path:Lcom/pantech/app/vegacamera/bridge/data/Path;
    .end local v6           #prefix:Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/pantech/app/vegacamera/bridge/data/MediaSource$PathId;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 221
    .restart local v6       #prefix:Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;

    .line 222
    .local v7, source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    if-eqz v7, :cond_0

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v7, v8, p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->mapMediaItems(Ljava/util/ArrayList;Lcom/pantech/app/vegacamera/bridge/data/MediaSet$ItemConsumer;)V

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 305
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mActiveCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mActiveCount:I

    if-nez v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 310
    :cond_0
    return-void

    .line 306
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;

    .line 307
    .local v0, source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->pause()V

    goto :goto_0
.end method

.method public peekMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 1
    .parameter "path"

    .prologue
    .line 146
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getObject()Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    return-object v0
.end method

.method public registerChangeNotifier(Landroid/net/Uri;Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;)V
    .locals 6
    .parameter "uri"
    .parameter "notifier"

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, broker:Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 286
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;

    move-object v1, v0

    .line 287
    if-nez v1, :cond_0

    .line 288
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mDefaultMainHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;-><init>(Landroid/os/Handler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    .end local v1           #broker:Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    .local v2, broker:Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    :try_start_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mCameraApp:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 290
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mNotifierMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 285
    .end local v2           #broker:Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    :cond_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    invoke-virtual {v1, p2}, Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;->registerNotifier(Lcom/pantech/app/vegacamera/bridge/data/ChangeNotifier;)V

    .line 294
    return-void

    .line 285
    :catchall_0
    move-exception v3

    :goto_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .end local v1           #broker:Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    .restart local v2       #broker:Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #broker:Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    .restart local v1       #broker:Lcom/pantech/app/vegacamera/bridge/data/DataManager$NotifyBroker;
    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 297
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mActiveCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mActiveCount:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 298
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->mSourceMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 302
    :cond_0
    return-void

    .line 298
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;

    .line 299
    .local v0, source:Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;->resume()V

    goto :goto_0
.end method

.method public rotate(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V
    .locals 1
    .parameter "path"
    .parameter "degrees"

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->rotate(I)V

    .line 238
    return-void
.end method
