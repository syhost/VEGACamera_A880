.class public Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;
.super Landroid/content/AsyncTaskLoader;
.source "FaceEnhancer.java"


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

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCallback:Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;

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

.field private mInputImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;IIIIIIIIII)V
    .locals 1
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
    .line 43
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "FaceEnhancer"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->LOG_TAG:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mInputImage:Landroid/graphics/Bitmap;

    .line 56
    check-cast p1, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;

    .end local p1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mCallback:Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/util/ArrayList;)V
    .locals 1
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
    .line 60
    .local p3, activeEnhancements:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lvisidon/Lib/enhancement/Enhancement;>;"
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 23
    const-string v0, "FaceEnhancer"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->LOG_TAG:Ljava/lang/String;

    .line 61
    check-cast p1, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;

    .end local p1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mCallback:Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;

    .line 62
    iput-object p3, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mEnhancements:Ljava/util/ArrayList;

    .line 63
    iput-object p2, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mInputImage:Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->isReset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mBitmap:Landroid/graphics/Bitmap;

    .line 108
    .local v0, oldBitmap:Landroid/graphics/Bitmap;
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mBitmap:Landroid/graphics/Bitmap;

    .line 110
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 119
    :cond_1
    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 122
    :cond_2
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->deliverResult(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public loadInBackground()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 69
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mInputImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mInputImage:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 73
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->LOG_TAG:Ljava/lang/String;

    const-string v3, "releasing api"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    .line 76
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->LOG_TAG:Ljava/lang/String;

    const-string v3, "initializing api"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Lvisidon/Lib/enhancement/EnhancementAPI$Mode;->STILL:Lvisidon/Lib/enhancement/EnhancementAPI$Mode;

    invoke-static {v2, v3, v4}, Lvisidon/Lib/enhancement/EnhancementAPI;->initialize(IILvisidon/Lib/enhancement/EnhancementAPI$Mode;)Lvisidon/Lib/enhancement/EnhancementAPI$InitState;

    .line 80
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mEnhancements:Ljava/util/ArrayList;

    invoke-static {v0, v2, v5}, Lvisidon/Lib/enhancement/EnhancementAPI;->enhanceFaces(Landroid/graphics/Bitmap;Ljava/util/ArrayList;Z)Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    move-result-object v1

    .line 82
    .local v1, state:Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "enhance state "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lvisidon/Lib/enhancement/EnhancementAPI;->release()Lvisidon/Lib/enhancement/EnhancementAPI$ReleaseState;

    .line 86
    sget-object v2, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->FAILED:Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;

    invoke-virtual {v1, v2}, Lvisidon/Lib/enhancement/EnhancementAPI$EnhanceState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mCallback:Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;

    invoke-interface {v2}, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;->onEnhancementFailed()V

    .line 92
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
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->loadInBackground()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bitmap"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 154
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 155
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->onCanceled(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onReleaseResources(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 179
    :cond_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/content/AsyncTaskLoader;->onReset()V

    .line 163
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->onStopLoading()V

    .line 167
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->onReleaseResources(Landroid/graphics/Bitmap;)V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mBitmap:Landroid/graphics/Bitmap;

    .line 171
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->deliverResult(Landroid/graphics/Bitmap;)V

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->forceLoad()V

    .line 138
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;->cancelLoad()Z

    .line 145
    return-void
.end method
