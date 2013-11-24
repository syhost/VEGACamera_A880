.class public Lvisidon/Lib/enhancementutils/ImageDecoder;
.super Landroid/content/AsyncTaskLoader;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvisidon/Lib/enhancementutils/ImageDecoder$ImageDecoderCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Lvisidon/Lib/enhancementutils/ImageDecoder$ImageDecoderCallback;

.field private mPhotoData:[B

.field private mPhotoUri:Ljava/lang/String;

.field private mRequestedHeight:I

.field private mRequestedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 2
    .parameter "context"
    .parameter "photoUri"
    .parameter "requestedWidth"
    .parameter "requestedHeight"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, "ImageDecoder"

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->LOG_TAG:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoUri:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    .line 53
    iput-object p2, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoUri:Ljava/lang/String;

    .line 54
    iput p3, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mRequestedWidth:I

    .line 55
    iput p4, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mRequestedHeight:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BLvisidon/Lib/enhancementutils/ImageDecoder$ImageDecoderCallback;II)V
    .locals 2
    .parameter "context"
    .parameter "photoData"
    .parameter "callback"
    .parameter "requestedWidth"
    .parameter "requestedHeight"

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 25
    const-string v0, "ImageDecoder"

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->LOG_TAG:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoUri:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    .line 68
    iput-object p2, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    .line 69
    iput p4, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mRequestedWidth:I

    .line 70
    iput p5, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mRequestedHeight:I

    .line 71
    iput-object p3, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mCallback:Lvisidon/Lib/enhancementutils/ImageDecoder$ImageDecoderCallback;

    .line 72
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 10
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 94
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 95
    .local v5, wideDim:I
    move v4, p2

    .line 96
    .local v4, reqWideDim:I
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 97
    .local v1, narrowDim:I
    move v3, p3

    .line 102
    .local v3, reqNarrowDim:I
    iget-object v7, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mCallback:Lvisidon/Lib/enhancementutils/ImageDecoder$ImageDecoderCallback;

    iget v8, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-interface {v7, v8, v9}, Lvisidon/Lib/enhancementutils/ImageDecoder$ImageDecoderCallback;->onImageSizeDecoded(II)V

    .line 104
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v7, v8, :cond_0

    .line 105
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 106
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 109
    :cond_0
    if-le p3, p2, :cond_1

    .line 110
    move v4, p3

    .line 111
    move v3, p2

    .line 114
    :cond_1
    const/4 v0, 0x1

    .line 116
    .local v0, inSampleSize:I
    if-gt v1, v3, :cond_2

    if-le v5, v4, :cond_3

    .line 119
    :cond_2
    int-to-float v7, v5

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 120
    .local v6, wideRatio:I
    int-to-float v7, v1

    int-to-float v8, v3

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 125
    .local v2, narrowRatio:I
    if-le v6, v2, :cond_4

    move v0, v6

    .line 130
    .end local v2           #narrowRatio:I
    .end local v6           #wideRatio:I
    :cond_3
    :goto_0
    return v0

    .restart local v2       #narrowRatio:I
    .restart local v6       #wideRatio:I
    :cond_4
    move v0, v2

    .line 125
    goto :goto_0
.end method


# virtual methods
.method public deliverResult(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 175
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p0, p1}, Lvisidon/Lib/enhancementutils/ImageDecoder;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 183
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 185
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 194
    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 195
    invoke-virtual {p0, v0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 197
    :cond_2
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lvisidon/Lib/enhancementutils/ImageDecoder;->deliverResult(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public loadInBackground()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 139
    iget-object v2, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    if-eqz v2, :cond_1

    .line 141
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 142
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 143
    iget-object v2, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    iget-object v3, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    array-length v3, v3

    invoke-static {v2, v1, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 145
    iget v2, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mRequestedWidth:I

    iget v3, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mRequestedHeight:I

    invoke-direct {p0, v7, v2, v3}, Lvisidon/Lib/enhancementutils/ImageDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 146
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 147
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 149
    iget-object v2, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    iget-object v3, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    array-length v3, v3

    invoke-static {v2, v1, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    invoke-static {v2}, Lvisidon/Lib/enhancementutils/Exif;->getOrientation([B)I

    move-result v8

    .line 156
    .local v8, orientation:I
    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    .line 157
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, v8

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 159
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    .line 159
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 165
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v8           #orientation:I
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->loadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p0, p1}, Lvisidon/Lib/enhancementutils/ImageDecoder;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 235
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lvisidon/Lib/enhancementutils/ImageDecoder;->onCanceled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onReleaseResources(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 260
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 263
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 245
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->onStopLoading()V

    .line 249
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 253
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->deliverResult(Landroid/graphics/Bitmap;)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 213
    :cond_1
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->forceLoad()V

    .line 215
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/ImageDecoder;->cancelLoad()Z

    .line 223
    return-void
.end method

.method public setPhoto(Ljava/lang/String;)V
    .locals 1
    .parameter "photoUri"

    .prologue
    .line 79
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoUri:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    .line 81
    return-void
.end method

.method public setPhoto([B)V
    .locals 1
    .parameter "photoData"

    .prologue
    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoUri:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/ImageDecoder;->mPhotoData:[B

    .line 90
    return-void
.end method
