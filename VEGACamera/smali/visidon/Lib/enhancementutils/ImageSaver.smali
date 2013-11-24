.class public Lvisidon/Lib/enhancementutils/ImageSaver;
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

.field private mCheekBlush:I

.field private mColorAdjust:I

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

.field private mEyeBrownShaping:I

.field private mEyeEnlargement:I

.field private mFaceContour:I

.field private mFilterImage:Z

.field private mHeight:I

.field private mImageSaved:Z

.field private mMouthShaping:I

.field private mNoseShaping:I

.field private mOutputFileName:Ljava/lang/String;

.field private mOutputPath:Ljava/io/File;

.field private mPhoto:[B

.field private mSmoothSkin:I

.field private mSmoothSpots:I

.field private mTeethWhitening:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;[BIILjava/io/File;Ljava/lang/String;IIIIIIIIII)V
    .locals 2
    .parameter "context"
    .parameter "photo"
    .parameter "width"
    .parameter "height"
    .parameter "outputPath"
    .parameter "ouputFileName"
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
    .line 79
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v1, "ImageSaver"

    iput-object v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->LOG_TAG:Ljava/lang/String;

    .line 39
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mSmoothSkin:I

    .line 40
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mSmoothSpots:I

    .line 41
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mTeethWhitening:I

    .line 42
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mFaceContour:I

    .line 43
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEyeEnlargement:I

    .line 44
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mCheekBlush:I

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mColorAdjust:I

    .line 46
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mMouthShaping:I

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mNoseShaping:I

    .line 48
    const/4 v1, 0x1

    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEyeBrownShaping:I

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mImageSaved:Z

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputPath:Ljava/io/File;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputFileName:Ljava/lang/String;

    .line 137
    const/4 v1, 0x1

    iput-boolean v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mFilterImage:Z

    .line 81
    iput p7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mSmoothSkin:I

    .line 82
    iput p8, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mSmoothSpots:I

    .line 83
    iput p9, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mTeethWhitening:I

    .line 84
    iput p10, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mFaceContour:I

    .line 85
    iput p11, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEyeEnlargement:I

    .line 86
    iput p12, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mCheekBlush:I

    .line 87
    iput p13, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mColorAdjust:I

    .line 88
    move/from16 v0, p14

    iput v0, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mMouthShaping:I

    .line 89
    move/from16 v0, p15

    iput v0, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mNoseShaping:I

    .line 90
    move/from16 v0, p16

    iput v0, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEyeBrownShaping:I

    .line 91
    iput-object p2, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mPhoto:[B

    .line 92
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mContext:Landroid/content/Context;

    .line 93
    iput p3, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mWidth:I

    .line 94
    iput p4, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mHeight:I

    .line 95
    iput-object p5, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputPath:Ljava/io/File;

    .line 96
    iput-object p6, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputFileName:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BIILjava/io/File;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "context"
    .parameter "photo"
    .parameter "width"
    .parameter "height"
    .parameter "outputPath"
    .parameter "ouputFileName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[BII",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p7, enhancements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/Enhancement;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 110
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "ImageSaver"

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->LOG_TAG:Ljava/lang/String;

    .line 39
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mSmoothSkin:I

    .line 40
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mSmoothSpots:I

    .line 41
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mTeethWhitening:I

    .line 42
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mFaceContour:I

    .line 43
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEyeEnlargement:I

    .line 44
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mCheekBlush:I

    .line 45
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mColorAdjust:I

    .line 46
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mMouthShaping:I

    .line 47
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mNoseShaping:I

    .line 48
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEyeBrownShaping:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mImageSaved:Z

    .line 56
    iput-object v2, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputPath:Ljava/io/File;

    .line 57
    iput-object v2, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputFileName:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mFilterImage:Z

    .line 112
    iput-object p2, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mPhoto:[B

    .line 113
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mContext:Landroid/content/Context;

    .line 114
    iput p3, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mWidth:I

    .line 115
    iput p4, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mHeight:I

    .line 117
    iput-object p7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEnhancements:Ljava/util/ArrayList;

    .line 118
    iput-object p5, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputPath:Ljava/io/File;

    .line 119
    iput-object p6, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputFileName:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[BIILjava/io/File;Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .locals 3
    .parameter "context"
    .parameter "photo"
    .parameter "width"
    .parameter "height"
    .parameter "outputPath"
    .parameter "ouputFileName"
    .parameter
    .parameter "filterImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[BII",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p7, enhancements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/Enhancement;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 123
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, "ImageSaver"

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->LOG_TAG:Ljava/lang/String;

    .line 39
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mSmoothSkin:I

    .line 40
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mSmoothSpots:I

    .line 41
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mTeethWhitening:I

    .line 42
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mFaceContour:I

    .line 43
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEyeEnlargement:I

    .line 44
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mCheekBlush:I

    .line 45
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mColorAdjust:I

    .line 46
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mMouthShaping:I

    .line 47
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mNoseShaping:I

    .line 48
    iput v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEyeBrownShaping:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mImageSaved:Z

    .line 56
    iput-object v2, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputPath:Ljava/io/File;

    .line 57
    iput-object v2, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputFileName:Ljava/lang/String;

    .line 137
    iput-boolean v1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mFilterImage:Z

    .line 125
    iput-object p2, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mPhoto:[B

    .line 126
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mContext:Landroid/content/Context;

    .line 127
    iput p3, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mWidth:I

    .line 128
    iput p4, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mHeight:I

    .line 130
    iput-object p7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEnhancements:Ljava/util/ArrayList;

    .line 131
    iput-object p5, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputPath:Ljava/io/File;

    .line 132
    iput-object p6, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputFileName:Ljava/lang/String;

    .line 134
    iput-boolean p8, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mFilterImage:Z

    .line 135
    return-void
.end method


# virtual methods
.method public loadInBackground()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 148
    .local v5, time:J
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    .line 150
    iget v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mWidth:I

    iget v8, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mHeight:I

    sget-object v9, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->STILL:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    invoke-static {v7, v8, v9}, Lvisidon/Lib/enhancement/EnhancementAPI;->initialize(IILvisidon/Lib/enhancement/EnhancementAPI$Mode;)Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    .line 158
    iget-object v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mPhoto:[B

    iget-object v8, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mEnhancements:Ljava/util/ArrayList;

    iget-boolean v9, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mFilterImage:Z

    invoke-static {v7, v8, v9}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFaces([BLjava/util/ArrayList;Z)[B

    move-result-object v0

    .line 164
    .local v0, enhancedPhoto:[B
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    .line 166
    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-object v11

    .line 176
    :cond_0
    iget-object v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputPath:Ljava/io/File;

    if-nez v7, :cond_1

    .line 177
    sget-object v7, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputPath:Ljava/io/File;

    .line 179
    :cond_1
    iget-object v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputFileName:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 180
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

    move-result-object v7

    iput-object v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputFileName:Ljava/lang/String;

    .line 182
    :cond_2
    new-instance v3, Ljava/io/File;

    iget-object v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputPath:Ljava/io/File;

    iget-object v8, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mOutputFileName:Ljava/lang/String;

    invoke-direct {v3, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v3, photoFile:Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 186
    .local v4, stream:Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    array-length v8, v0

    invoke-virtual {v4, v0, v7, v8}, Ljava/io/FileOutputStream;->write([BII)V

    .line 187
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 188
    const/4 v7, 0x1

    iput-boolean v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mImageSaved:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    :try_start_1
    iget-object v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mContext:Landroid/content/Context;

    .line 197
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    .line 198
    new-instance v10, Lvisidon/Lib/enhancementutils/ImageSaver$1;

    invoke-direct {v10, p0}, Lvisidon/Lib/enhancementutils/ImageSaver$1;-><init>(Lvisidon/Lib/enhancementutils/ImageSaver;)V

    .line 196
    invoke-static {v7, v8, v9, v10}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v2

    .line 205
    .local v2, exe:Ljava/lang/Exception;
    iget-object v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Exception in adding to mediastorage"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 190
    .end local v2           #exe:Ljava/lang/Exception;
    .end local v4           #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    .line 191
    .local v1, ex:Ljava/io/IOException;
    iget-object v7, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->LOG_TAG:Ljava/lang/String;

    const-string v8, "Exception in image saving"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/ImageSaver;->loadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lvisidon/Lib/enhancementutils/ImageSaver;->mImageSaved:Z

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/ImageSaver;->forceLoad()V

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lvisidon/Lib/enhancementutils/ImageSaver;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method
