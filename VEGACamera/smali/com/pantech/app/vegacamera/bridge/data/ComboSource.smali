.class Lcom/pantech/app/vegacamera/bridge/data/ComboSource;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
.source "ComboSource.java"


# static fields
.field private static final COMBO_ALBUM:I = 0x1

.field private static final COMBO_ALBUMSET:I


# instance fields
.field private mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

.field private mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 3
    .parameter "application"

    .prologue
    .line 28
    const-string v0, "combo"

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 30
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    .line 31
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/combo/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 32
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/combo/*/*"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 33
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 5
    .parameter "path"

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 38
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, segments:[Ljava/lang/String;
    array-length v2, v1

    if-ge v2, v3, :cond_0

    .line 40
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bad path: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    .line 44
    .local v0, dataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->match(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 51
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 46
    :pswitch_0
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/ComboSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    aget-object v4, v1, v4

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v4

    invoke-direct {v2, p1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbumSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;)V

    goto :goto_0

    .line 49
    :pswitch_1
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;

    aget-object v3, v1, v3

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaSetsFromString(Ljava/lang/String;)[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;

    move-result-object v3

    aget-object v4, v1, v4

    invoke-direct {v2, p1, v3, v4}, Lcom/pantech/app/vegacamera/bridge/data/ComboAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;[Lcom/pantech/app/vegacamera/bridge/data/MediaSet;Ljava/lang/String;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
