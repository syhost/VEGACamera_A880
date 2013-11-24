.class public Lcom/pantech/app/vegacamera/bridge/data/FilterSource;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
.source "FilterSource.java"


# static fields
.field private static final FILTER_BY_CAMERA_SHORTCUT:I = 0x4

.field private static final FILTER_BY_CAMERA_SHORTCUT_ITEM:I = 0x5

.field private static final FILTER_BY_DELETE:I = 0x1

.field private static final FILTER_BY_EMPTY:I = 0x2

.field private static final FILTER_BY_EMPTY_ITEM:I = 0x3

.field private static final FILTER_BY_MEDIATYPE:I = 0x0

.field public static final FILTER_CAMERA_SHORTCUT:Ljava/lang/String; = "/filter/camera_shortcut"

.field private static final FILTER_CAMERA_SHORTCUT_ITEM:Ljava/lang/String; = "/filter/camera_shortcut_item"

.field public static final FILTER_EMPTY_ITEM:Ljava/lang/String; = "/filter/empty_prompt"


# instance fields
.field private mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

.field private mCameraShortcutItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

.field private mEmptyItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

.field private mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 40
    const-string v0, "filter"

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 41
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 42
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/filter/mediatype/*/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 44
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/filter/delete/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/filter/empty/*"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 46
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/filter/empty_prompt"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 47
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/filter/camera_shortcut"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 48
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/filter/camera_shortcut_item"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 50
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/EmptyAlbumImage;

    const-string v1, "/filter/empty_prompt"

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/EmptyAlbumImage;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mEmptyItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 51
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/CameraShortcutImage;

    const-string v1, "/filter/camera_shortcut_item"

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/CameraShortcutImage;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mCameraShortcutItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 52
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 8
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    .line 59
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v5, p1}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->match(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v1

    .line 60
    .local v1, matchType:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v5}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    .line 61
    .local v0, dataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    packed-switch v1, :pswitch_data_0

    .line 88
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bad path: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 63
    :pswitch_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getIntVar(I)I

    move-result v2

    .line 64
    .local v2, mediaType:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, setsName:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v3

    .line 66
    .local v3, sets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    new-instance v5, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v0, v6, v2}, Lcom/pantech/app/vegacamera/bridge/data/FilterTypeSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/DataManager;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;I)V

    .line 85
    .end local v2           #mediaType:I
    .end local v3           #sets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .end local v4           #setsName:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 69
    :pswitch_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 70
    .restart local v4       #setsName:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v3

    .line 71
    .restart local v3       #sets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    new-instance v5, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;

    aget-object v6, v3, v7

    invoke-direct {v5, p1, v6}, Lcom/pantech/app/vegacamera/bridge/data/FilterDeleteSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V

    goto :goto_0

    .line 74
    .end local v3           #sets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .end local v4           #setsName:Ljava/lang/String;
    :pswitch_2
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v5, v7}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->getVar(I)Ljava/lang/String;

    move-result-object v4

    .line 75
    .restart local v4       #setsName:Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v3

    .line 76
    .restart local v3       #sets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    new-instance v5, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;

    aget-object v6, v3, v7

    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mEmptyItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-direct {v5, p1, v6, v7}, Lcom/pantech/app/vegacamera/bridge/data/FilterEmptyPromptSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    goto :goto_0

    .line 79
    .end local v3           #sets:[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;
    .end local v4           #setsName:Ljava/lang/String;
    :pswitch_3
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mEmptyItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    goto :goto_0

    .line 82
    :pswitch_4
    new-instance v5, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mCameraShortcutItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-direct {v5, p1, v6}, Lcom/pantech/app/vegacamera/bridge/data/SingleItemAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    goto :goto_0

    .line 85
    :pswitch_5
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/data/FilterSource;->mCameraShortcutItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
