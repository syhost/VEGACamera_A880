.class public Lcom/pantech/app/vegacamera/beautification/ImageSaver;
.super Landroid/content/AsyncTaskLoader;
.source "ImageSaver.java"


# annotations
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

.field private mContext:Landroid/content/Context;

.field private mEnhancements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mImageSaved:Z

.field private mPhoto:[B

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[BIIIIIIIIIIII)V
    .locals 1
    .parameter "context"
    .parameter "photo"
    .parameter "width"
    .parameter "height"
    .parameter "smoothSkin"
    .parameter "smoothSpots"
    .parameter "teethWhitening"
    .parameter "faceContour"
    .parameter "eyeEnlargement"
    .parameter "cheekBlush"
    .parameter "colorAdjust"
    .parameter "mouthShaping"
    .parameter "noseShaping"
    .parameter "eyeBrownShaping"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "ImageSaver"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mImageSaved:Z

    .line 52
    iput-object p2, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mPhoto:[B

    .line 53
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mContext:Landroid/content/Context;

    .line 54
    iput p3, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mWidth:I

    .line 55
    iput p4, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mHeight:I

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BIILjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "photo"
    .parameter "width"
    .parameter "height"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[BII",
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p5, enhancements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/Enhancement;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, "ImageSaver"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->LOG_TAG:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mImageSaved:Z

    .line 61
    iput-object p2, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mPhoto:[B

    .line 62
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mContext:Landroid/content/Context;

    .line 63
    iput p3, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mWidth:I

    .line 64
    iput p4, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mHeight:I

    .line 66
    iput-object p5, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mEnhancements:Ljava/util/ArrayList;

    .line 67
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 71
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->LOG_TAG:Ljava/lang/String;

    const-string v8, "releasing api"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    .line 74
    iget v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mWidth:I

    iget v8, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mHeight:I

    sget-object v9, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->STILL:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    invoke-static {v7, v8, v9}, Lvisidon/Lib/enhancement/EnhancementAPI;->initialize(IILvisidon/Lib/enhancement/EnhancementAPI$Mode;)Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    .line 76
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->LOG_TAG:Ljava/lang/String;

    const-string v8, "enhance!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mPhoto:[B

    iget-object v8, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mEnhancements:Ljava/util/ArrayList;

    invoke-static {v7, v8, v10}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFaces([BLjava/util/ArrayList;Z)[B

    move-result-object v0

    .line 81
    .local v0, enhancedPhoto:[B
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    .line 83
    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-object v11

    .line 87
    :cond_0
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->LOG_TAG:Ljava/lang/String;

    const-string v8, "enhancement done!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 91
    .local v4, path:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".jpg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, name:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    .local v5, photoFile:Ljava/io/File;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 97
    .local v6, stream:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 98
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 99
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mImageSaved:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 107
    :try_start_1
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    .line 108
    new-instance v10, Lcom/pantech/app/vegacamera/beautification/ImageSaver$1;

    invoke-direct {v10, p0}, Lcom/pantech/app/vegacamera/beautification/ImageSaver$1;-><init>(Lcom/pantech/app/vegacamera/beautification/ImageSaver;)V

    .line 107
    invoke-static {v7, v8, v9, v10}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 115
    .local v2, exe:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Exception in adding to mediastorage"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 101
    .end local v2           #exe:Ljava/lang/Exception;
    .end local v6           #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 102
    .local v1, ex:Ljava/io/IOException;
    iget-object v7, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Exception in image saving"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->loadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->mImageSaved:Z

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->forceLoad()V

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/beautification/ImageSaver;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
