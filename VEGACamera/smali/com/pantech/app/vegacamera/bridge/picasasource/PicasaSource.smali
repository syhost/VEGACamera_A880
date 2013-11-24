.class public Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
.source "PicasaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource$EmptyAlbumSet;
    }
.end annotation


# static fields
.field public static final ALBUM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

.field private static final PICASA_ALBUMSET:I


# instance fields
.field private mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "/picasa/all"

    invoke-static {v0}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource;->ALBUM_PATH:Lcom/pantech/app/vegacamera/bridge/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 3
    .parameter "application"

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v0, "picasa"

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-direct {v0}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    .line 53
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/picasa/all"

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/picasa/image"

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    const-string v1, "/picasa/video"

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->add(Ljava/lang/String;I)V

    .line 56
    return-void
.end method

.method public static extractExifValues(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;Landroid/media/ExifInterface;)V
    .locals 0
    .parameter "item"
    .parameter "exif"

    .prologue
    .line 152
    return-void
.end method

.method public static getContentType(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)Ljava/lang/String;
    .locals 1
    .parameter "image"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getDateTaken(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)J
    .locals 1
    .parameter "image"

    .prologue
    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getFaceItem(Landroid/content/Context;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 1
    .parameter "context"
    .parameter "item"
    .parameter "faceIndex"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getImageSize(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getImageTitle(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)Ljava/lang/String;
    .locals 1
    .parameter "image"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getLatitude(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)D
    .locals 1
    .parameter "image"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getLongitude(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)D
    .locals 1
    .parameter "image"

    .prologue
    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getPicasaId(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)J
    .locals 1
    .parameter "image"

    .prologue
    .line 122
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getRotation(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)I
    .locals 1
    .parameter "image"

    .prologue
    .line 118
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getUserAccount(Landroid/content/Context;Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "image"

    .prologue
    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static getVersionCheckDialog(Landroid/app/Activity;)Landroid/app/Dialog;
    .locals 1
    .parameter "activity"

    .prologue
    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 134
    return-void
.end method

.method public static isPicasaImage(Lcom/pantech/app/vegacamera/bridge/data/MediaObject;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static onPackageAdded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 143
    return-void
.end method

.method public static onPackageChanged(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 149
    return-void
.end method

.method public static onPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 146
    return-void
.end method

.method public static openFile(Landroid/content/Context;Lcom/pantech/app/vegacamera/bridge/data/MediaObject;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "context"
    .parameter "image"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static requestSync(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 137
    return-void
.end method

.method public static showSignInReminder(Landroid/app/Activity;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 140
    return-void
.end method


# virtual methods
.method public createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 3
    .parameter "path"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource;->mMatcher:Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/data/PathMatcher;->match(Lcom/pantech/app/vegacamera/bridge/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :pswitch_0
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource$EmptyAlbumSet;

    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/MediaObject;->nextVersionNumber()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/pantech/app/vegacamera/bridge/picasasource/PicasaSource$EmptyAlbumSet;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    return-object v0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
