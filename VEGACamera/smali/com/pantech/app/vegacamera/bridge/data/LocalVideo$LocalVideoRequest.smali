.class public Lcom/pantech/app/vegacamera/bridge/data/LocalVideo$LocalVideoRequest;
.super Lcom/pantech/app/vegacamera/bridge/data/ImageCacheRequest;
.source "LocalVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/bridge/data/LocalVideo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalVideoRequest"
.end annotation


# instance fields
.field private mLocalFilePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;Lcom/pantech/app/vegacamera/bridge/data/Path;ILjava/lang/String;)V
    .locals 1
    .parameter "application"
    .parameter "path"
    .parameter "type"
    .parameter "localFilePath"

    .prologue
    .line 149
    invoke-static {p3}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getTargetSize(I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheRequest;-><init>(Lcom/pantech/app/vegacamera/bridge/CameraApp;Lcom/pantech/app/vegacamera/bridge/data/Path;II)V

    .line 150
    iput-object p4, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    .line 151
    return-void
.end method


# virtual methods
.method public onDecodeOriginal(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "jc"
    .parameter "type"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/data/LocalVideo$LocalVideoRequest;->mLocalFilePath:Ljava/lang/String;

    invoke-static {v1}, Lcom/pantech/app/vegacamera/bridge/common/BitmapUtils;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 156
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    :cond_0
    const/4 v0, 0x0

    .line 158
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method

.method public bridge synthetic run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/bridge/data/ImageCacheRequest;->run(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
