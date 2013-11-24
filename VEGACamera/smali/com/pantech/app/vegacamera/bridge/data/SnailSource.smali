.class public Lcom/pantech/app/vegacamera/bridge/data/SnailSource;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
.source "SnailSource.java"


# static fields
.field private static final SNAIL_ALBUM:I = 0x0

.field private static final SNAIL_ITEM:I = 0x1

.field private static sNextId:I


# instance fields
.field private mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

.field private mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 31
    const-string v0, "snail"

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 32
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 33
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    .line 34
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/snail/set/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 35
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/snail/item/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method public static getItemPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 1
    .parameter "id"

    .prologue
    .line 67
    const-string v0, "/snail/item"

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public static getSetPath(I)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 1
    .parameter "id"

    .prologue
    .line 63
    const-string v0, "/snail/set"

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->getChild(I)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized newId()I
    .locals 3

    .prologue
    .line 59
    const-class v1, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->sNextId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->sNextId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 6
    .parameter "path"

    .prologue
    .line 41
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    .line 42
    .local v0, dataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->match(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 52
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 44
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/snail/item/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/SnailSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, itemPath:Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 46
    .local v1, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    new-instance v3, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;

    invoke-direct {v3, p1, v1}, Lcom/pantech/app/vegacamera/bridge/data/SnailAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    goto :goto_0

    .line 49
    .end local v1           #item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .end local v2           #itemPath:Ljava/lang/String;
    :pswitch_1
    new-instance v3, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;

    invoke-direct {v3, p1}, Lcom/pantech/app/vegacamera/bridge/data/SnailItem;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;)V

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
