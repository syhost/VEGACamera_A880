.class public Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;
.super Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/bridge/app/PhotoPage$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_IMAGE:I = 0x1

.field private static final SIZE_BACKUP:I = 0x400

.field private static final TAG:Ljava/lang/String; = "SinglePhotoDataAdapter"


# instance fields
.field private mBitmapScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;

.field private mHandler:Landroid/os/Handler;

.field private mHasFullImage:Z

.field private mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

.field private mLargeListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
            "<",
            "Landroid/graphics/BitmapRegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingState:I

.field private mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

.field private mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

.field private mThumbListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/data/MediaItem;)V
    .locals 2
    .parameter "activity"
    .parameter "view"
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageViewAdapter;-><init>()V

    .line 53
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 85
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$1;-><init>(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;

    .line 105
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$2;-><init>(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;

    .line 57
    invoke-static {p3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    .line 58
    invoke-virtual {p3}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    .line 59
    invoke-static {p2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    .line 60
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$3;

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$3;-><init>(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getThreadPool()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    .line 73
    return-void

    :cond_0
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;)Z
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/pantech/app/vegacamera/bridge/util/Future;)V

    return-void
.end method

.method private onDecodeLargeComplete(Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p1, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v2}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v3}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 126
    iget-object v1, p1, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->setRegionDecoder(Landroid/graphics/BitmapRegionDecoder;)V

    .line 127
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "SinglePhotoDataAdapter"

    const-string v2, "fail to decode large"

    invoke-static {v1, v2, v0}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private onDecodeThumbComplete(Lcom/pantech/app/vegacamera/bridge/util/Future;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/vegacamera/bridge/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, future:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<Landroid/graphics/Bitmap;>;"
    :try_start_0
    invoke-interface {p1}, Lcom/pantech/app/vegacamera/bridge/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 136
    .local v0, backup:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 137
    const/4 v2, 0x2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 147
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 140
    .restart local v0       #backup:Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mLoadingState:I

    .line 142
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    .line 143
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 144
    .end local v0           #backup:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 145
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "SinglePhotoDataAdapter"

    const-string v3, "fail to decode thumb"

    invoke-static {v2, v3, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setScreenNail(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 119
    new-instance v0, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;

    invoke-virtual {p0, v0, p2, p3}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;II)V

    .line 121
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 192
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getFullImageRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageSize(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V
    .locals 1
    .parameter "offset"
    .parameter "size"

    .prologue
    const/4 v0, 0x0

    .line 181
    if-nez p1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    .line 183
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    iput v0, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    .line 186
    iput v0, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getLoadingState(I)I
    .locals 1
    .parameter "offset"

    .prologue
    .line 257
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mLoadingState:I

    return v0
.end method

.method public getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    .locals 1
    .parameter "offset"

    .prologue
    .line 232
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenNail(I)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    .locals 1
    .parameter "offset"

    .prologue
    .line 197
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->getScreenNail()Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public isDeletable(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getSupportedOperations()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public isStaticCamera(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public isVideo(I)Z
    .locals 2
    .parameter "offset"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 176
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 162
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 163
    .local v0, task:Lcom/pantech/app/vegacamera/bridge/util/Future;,"Lcom/pantech/app/vegacamera/bridge/util/Future<*>;"
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/Future;->cancel()V

    .line 164
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/Future;->waitDone()V

    .line 165
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/util/Future;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 166
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;->recycle()V

    .line 170
    iput-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/pantech/app/vegacamera/bridge/glui/BitmapScreenNail;

    .line 172
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    if-nez v0, :cond_0

    .line 152
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->requestLargeImage()Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mItem:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->requestImage(I)Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/pantech/app/vegacamera/bridge/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/ThreadPool;->submit(Lcom/pantech/app/vegacamera/bridge/util/ThreadPool$Job;Lcom/pantech/app/vegacamera/bridge/util/FutureListener;)Lcom/pantech/app/vegacamera/bridge/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/bridge/app/SinglePhotoDataAdapter;->mTask:Lcom/pantech/app/vegacamera/bridge/util/Future;

    goto :goto_0
.end method

.method public setCurrentPhoto(Lcom/pantech/app/vegacamera/bridge/data/Path;I)V
    .locals 0
    .parameter "path"
    .parameter "indexHint"

    .prologue
    .line 243
    return-void
.end method

.method public setFocusHintDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 248
    return-void
.end method

.method public setFocusHintPath(Lcom/pantech/app/vegacamera/bridge/data/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 253
    return-void
.end method

.method public setNeedFullImage(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 203
    return-void
.end method
