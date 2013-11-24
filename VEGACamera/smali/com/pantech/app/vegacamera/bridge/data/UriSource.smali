.class Lcom/pantech/app/vegacamera/bridge/data/UriSource;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaSource;
.source "UriSource.java"


# static fields
.field private static final IMAGE_TYPE_ANY:Ljava/lang/String; = "image/*"

.field private static final IMAGE_TYPE_PREFIX:Ljava/lang/String; = "image/"


# instance fields
.field private mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const-string v0, "uri"

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaSource;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/data/UriSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 40
    return-void
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 64
    const-string v2, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, extension:Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, type:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 75
    .end local v0           #extension:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 72
    .end local v1           #type:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/data/UriSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .restart local v1       #type:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 74
    const-string v1, "image/*"

    goto :goto_0
.end method


# virtual methods
.method public createMediaObject(Lcom/pantech/app/vegacamera/bridge/data/Path;)Lcom/pantech/app/vegacamera/bridge/data/MediaObject;
    .locals 6
    .parameter "path"

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, segment:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 46
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bad path: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 50
    .local v2, uri:Ljava/lang/String;
    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v0, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 54
    :goto_0
    const/4 v1, 0x0

    .line 56
    .local v1, type:Ljava/lang/String;
    const/4 v3, 0x2

    :try_start_1
    aget-object v3, v0, v3

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 60
    :goto_1
    new-instance v3, Lcom/pantech/app/vegacamera/bridge/data/UriImage;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/data/UriSource;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, p1, v5, v1}, Lcom/pantech/app/vegacamera/bridge/data/UriImage;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;Lcom/pantech/app/vegacamera/bridge/data/Path;Landroid/net/Uri;Ljava/lang/String;)V

    return-object v3

    .line 57
    :catch_0
    move-exception v3

    goto :goto_1

    .line 51
    .end local v1           #type:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    .locals 4
    .parameter "uri"
    .parameter "type"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/UriSource;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, mimeType:Ljava/lang/String;
    if-eqz p2, :cond_0

    const-string v1, "image/*"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    move-object p2, v0

    .line 87
    :cond_1
    const-string v1, "image/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/uri/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {p2, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/data/Path;->fromString(Ljava/lang/String;)Lcom/pantech/app/vegacamera/bridge/data/Path;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v1

    .line 95
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
