.class public Lvisidon/Lib/enhancementutils/FaceBeautifier;
.super Landroid/content/AsyncTaskLoader;
.source "FaceBeautifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;
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

.field private mCallback:Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;

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

.field mFilterImage:Z

.field private mInputImage:Landroid/graphics/Bitmap;

.field private mMouthShaping:I

.field private mNoseShaping:I

.field private mSmoothSkin:I

.field private mSmoothSpots:I

.field private mTeethWhitening:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIIIIIII)V
    .locals 2
    .parameter "context"
    .parameter "photo"
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
    const/4 v1, 0x1

    .line 81
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "FaceBeautifier"

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->LOG_TAG:Ljava/lang/String;

    .line 38
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mSmoothSkin:I

    .line 39
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mSmoothSpots:I

    .line 40
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mTeethWhitening:I

    .line 41
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mFaceContour:I

    .line 42
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEyeEnlargement:I

    .line 43
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mCheekBlush:I

    .line 44
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mColorAdjust:I

    .line 45
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mMouthShaping:I

    .line 46
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mNoseShaping:I

    .line 47
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEyeBrownShaping:I

    .line 119
    iput-boolean v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mFilterImage:Z

    .line 82
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mInputImage:Landroid/graphics/Bitmap;

    .line 84
    iput p3, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mSmoothSkin:I

    .line 85
    iput p4, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mSmoothSpots:I

    .line 86
    iput p5, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mTeethWhitening:I

    .line 87
    iput p6, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mFaceContour:I

    .line 88
    iput p7, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEyeEnlargement:I

    .line 89
    iput p8, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mCheekBlush:I

    .line 90
    iput p9, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mColorAdjust:I

    .line 91
    iput p10, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mMouthShaping:I

    .line 92
    iput p11, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mNoseShaping:I

    .line 93
    iput p12, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEyeBrownShaping:I

    .line 94
    check-cast p1, Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;

    .end local p1
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mCallback:Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter "photo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, activeEnhancements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/Enhancement;>;"
    const/4 v1, 0x1

    .line 105
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "FaceBeautifier"

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->LOG_TAG:Ljava/lang/String;

    .line 38
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mSmoothSkin:I

    .line 39
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mSmoothSpots:I

    .line 40
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mTeethWhitening:I

    .line 41
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mFaceContour:I

    .line 42
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEyeEnlargement:I

    .line 43
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mCheekBlush:I

    .line 44
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mColorAdjust:I

    .line 45
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mMouthShaping:I

    .line 46
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mNoseShaping:I

    .line 47
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEyeBrownShaping:I

    .line 119
    iput-boolean v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mFilterImage:Z

    .line 106
    check-cast p1, Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;

    .end local p1
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mCallback:Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;

    .line 107
    iput-object p3, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEnhancements:Ljava/util/ArrayList;

    .line 108
    iput-object p2, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mInputImage:Landroid/graphics/Bitmap;

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter "context"
    .parameter "photo"
    .parameter
    .parameter "filterImage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, activeEnhancements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/Enhancement;>;"
    const/4 v1, 0x1

    .line 112
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "FaceBeautifier"

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->LOG_TAG:Ljava/lang/String;

    .line 38
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mSmoothSkin:I

    .line 39
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mSmoothSpots:I

    .line 40
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mTeethWhitening:I

    .line 41
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mFaceContour:I

    .line 42
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEyeEnlargement:I

    .line 43
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mCheekBlush:I

    .line 44
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mColorAdjust:I

    .line 45
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mMouthShaping:I

    .line 46
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mNoseShaping:I

    .line 47
    iput v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEyeBrownShaping:I

    .line 119
    iput-boolean v1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mFilterImage:Z

    .line 113
    check-cast p1, Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;

    .end local p1
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mCallback:Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;

    .line 114
    iput-object p3, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEnhancements:Ljava/util/ArrayList;

    .line 115
    iput-object p2, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mInputImage:Landroid/graphics/Bitmap;

    .line 116
    iput-boolean p4, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mFilterImage:Z

    .line 117
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 162
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 170
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    iput-object p1, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 172
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 175
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 181
    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {p0, v0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 184
    :cond_2
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->deliverResult(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public loadInBackground()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 127
    iget-object v2, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mInputImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 129
    iget-object v2, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mInputImage:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    .line 135
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->STILL:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    invoke-static {v2, v3, v4}, Lvisidon/Lib/enhancement/EnhancementAPI;->initialize(IILvisidon/Lib/enhancement/EnhancementAPI$Mode;)Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    .line 140
    iget-object v2, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mEnhancements:Ljava/util/ArrayList;

    iget-boolean v3, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mFilterImage:Z

    invoke-static {v0, v2, v3}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFaces(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    move-result-object v1

    .line 144
    .local v1, state:Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    .line 146
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->FAILED:Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    invoke-virtual {v1, v2}, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mCallback:Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;

    invoke-interface {v2}, Lvisidon/Lib/enhancementutils/FaceBeautifier$BeautificationLoaderCallbacks;->onEnhancementFailed()V

    .line 152
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #state:Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;
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
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->loadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 221
    invoke-virtual {p0, p1}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 222
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->onCanceled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onReleaseResources(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 247
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 232
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->onStopLoading()V

    .line 236
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 238
    const/4 v0, 0x0

    iput-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mBitmap:Landroid/graphics/Bitmap;

    .line 240
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->deliverResult(Landroid/graphics/Bitmap;)V

    .line 197
    :cond_0
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lvisidon/Lib/enhancementutils/FaceBeautifier;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 200
    :cond_1
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->forceLoad()V

    .line 202
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lvisidon/Lib/enhancementutils/FaceBeautifier;->cancelLoad()Z

    .line 210
    return-void
.end method
