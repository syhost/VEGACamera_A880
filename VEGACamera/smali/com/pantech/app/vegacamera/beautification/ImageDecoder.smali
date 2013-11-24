.class public Lcom/pantech/app/vegacamera/beautification/ImageDecoder;
.super Landroid/content/AsyncTaskLoader;
.source "ImageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/beautification/ImageDecoder$ImageDecoderCallback;
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

.field private mCallback:Lcom/pantech/app/vegacamera/beautification/ImageDecoder$ImageDecoderCallback;

.field private mPhotoData:[B

.field private mRequestedHeight:I

.field private mRequestedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 1
    .parameter "context"
    .parameter "photoUri"
    .parameter "requestedWidth"
    .parameter "requestedHeight"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "ImageDecoder"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->LOG_TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    .line 28
    iput p3, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mRequestedWidth:I

    .line 29
    iput p4, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mRequestedHeight:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BLcom/pantech/app/vegacamera/beautification/ImageDecoder$ImageDecoderCallback;II)V
    .locals 1
    .parameter "context"
    .parameter "photoData"
    .parameter "callback"
    .parameter "requestedWidth"
    .parameter "requestedHeight"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 11
    const-string v0, "ImageDecoder"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->LOG_TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    .line 34
    iput-object p2, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    .line 35
    iput p4, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mRequestedWidth:I

    .line 36
    iput p5, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mRequestedHeight:I

    .line 37
    iput-object p3, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mCallback:Lcom/pantech/app/vegacamera/beautification/ImageDecoder$ImageDecoderCallback;

    .line 38
    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 10
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 52
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 53
    .local v5, wideDim:I
    move v4, p2

    .line 54
    .local v4, reqWideDim:I
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 55
    .local v1, narrowDim:I
    move v3, p3

    .line 57
    .local v3, reqNarrowDim:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "req size "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "photo size "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mCallback:Lcom/pantech/app/vegacamera/beautification/ImageDecoder$ImageDecoderCallback;

    iget v8, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-interface {v7, v8, v9}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder$ImageDecoderCallback;->onImageSizeDecoded(II)V

    .line 62
    iget v7, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v7, v8, :cond_0

    .line 63
    iget v5, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 64
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 67
    :cond_0
    if-le p3, p2, :cond_1

    .line 68
    move v4, p3

    .line 69
    move v3, p2

    .line 72
    :cond_1
    const/4 v0, 0x1

    .line 74
    .local v0, inSampleSize:I
    if-gt v1, v3, :cond_2

    if-le v5, v4, :cond_3

    .line 77
    :cond_2
    int-to-float v7, v5

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 78
    .local v6, wideRatio:I
    int-to-float v7, v1

    int-to-float v8, v3

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 83
    .local v2, narrowRatio:I
    if-le v6, v2, :cond_4

    move v0, v6

    .line 86
    .end local v2           #narrowRatio:I
    .end local v6           #wideRatio:I
    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sample size: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return v0

    .restart local v2       #narrowRatio:I
    .restart local v6       #wideRatio:I
    :cond_4
    move v0, v2

    .line 83
    goto :goto_0
.end method


# virtual methods
.method public deliverResult(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 135
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 146
    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 149
    :cond_2
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->deliverResult(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public loadInBackground()Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 94
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    if-eqz v2, :cond_1

    .line 96
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 97
    .local v7, options:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 98
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    array-length v3, v3

    invoke-static {v2, v1, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 100
    iget v2, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mRequestedWidth:I

    iget v3, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mRequestedHeight:I

    invoke-direct {p0, v7, v2, v3}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 101
    iput-boolean v1, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 102
    iput-boolean v6, v7, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 104
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    array-length v3, v3

    invoke-static {v2, v1, v3, v7}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 106
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bitmap size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    invoke-static {v2}, Lcom/pantech/app/vegacamera/beautification/Exif;->getOrientation([B)I

    move-result v8

    .line 109
    .local v8, orientation:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image orienation: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    if-eqz v0, :cond_0

    if-eqz v8, :cond_0

    .line 112
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 113
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v2, v8

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 114
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 119
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
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->loadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 177
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 182
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->onCanceled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onReleaseResources(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 203
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 206
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 190
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->onStopLoading()V

    .line 194
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    .line 198
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->deliverResult(Landroid/graphics/Bitmap;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->forceLoad()V

    .line 165
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->cancelLoad()Z

    .line 172
    return-void
.end method

.method public setPhoto([B)V
    .locals 0
    .parameter "photoData"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;->mPhotoData:[B

    .line 48
    return-void
.end method
