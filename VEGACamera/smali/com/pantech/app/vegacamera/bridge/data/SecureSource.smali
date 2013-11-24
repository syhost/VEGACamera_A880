.class public Lcom/pantech/app/vegacamera/bridge/data/SecureSource;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
.source "SecureSource.java"


# static fields
.field private static final SECURE_ALBUM:I = 0x0

.field private static final SECURE_UNLOCK:I = 0x1

.field private static mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;


# instance fields
.field private mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;-><init>()V

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    .line 28
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/secure/all/*"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 29
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/secure/unlock"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "secure"

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 35
    return-void
.end method

.method public static isSecurePath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 38
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-static {p0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->match(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 5
    .parameter "path"

    .prologue
    .line 43
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->match(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 52
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

    .line 45
    :pswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getDataManager()Lcom/pantech/app/vegacamera/bridge/data/DataManager;

    move-result-object v0

    .line 46
    .local v0, dataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    const-string v2, "/secure/unlock"

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 47
    .local v1, unlock:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v2, p1, v3, v1}, Lcom/pantech/app/vegacamera/bridge/data/SecureAlbum;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V

    .line 50
    .end local v0           #dataManager:Lcom/pantech/app/vegacamera/bridge/data/DataManager;
    .end local v1           #unlock:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    :goto_0
    return-object v2

    :pswitch_1
    new-instance v2, Lcom/pantech/app/vegacamera/bridge/data/UnlockImage;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/data/SecureSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-direct {v2, p1, v3}, Lcom/pantech/app/vegacamera/bridge/data/UnlockImage;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;)V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
