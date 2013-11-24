.class public Lcom/pantech/app/vegacamera/bridge/data/ActionImage;
.super Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
.source "ActionImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

.field private mResourceId:I


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/data/Path;Lcom/pantech/app/vegacamera/bridge/CameraApp;I)V
    .locals 2
    .parameter "path"
    .parameter "application"
    .parameter "resourceId"

    .prologue
    .line 36
    invoke-static {}, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;-><init>(Lcom/pantech/app/vegacamera/bridge/data/Path;J)V

    .line 37
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/CameraApp;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    .line 38
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->mResourceId:I

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/data/ActionImage;)Lcom/pantech/app/vegacamera/bridge/CameraApp;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->mApplication:Lcom/pantech/app/vegacamera/bridge/CameraApp;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/data/ActionImage;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage;->mResourceId:I

    return v0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaType()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-string v0, ""

    return-object v0
.end method

.method public getSupportedOperations()I
    .locals 1

    .prologue
    .line 74
    const v0, 0x8000

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
    .locals 1
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;

    invoke-direct {v0, p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/ActionImage$BitmapJob;-><init>(Lcom/pantech/app/vegacamera/bridge/data/ActionImage;I)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return-object v0
.end method
