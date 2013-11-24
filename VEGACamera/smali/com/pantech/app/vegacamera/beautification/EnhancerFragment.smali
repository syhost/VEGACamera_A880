.class public Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;
.super Landroid/app/Fragment;
.source "EnhancerFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/pantech/app/vegacamera/beautification/ImageDecoder$ImageDecoderCallback;
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;",
        "Lcom/pantech/app/vegacamera/beautification/ImageDecoder$ImageDecoderCallback;",
        "Landroid/app/ActionBar$OnNavigationListener;"
    }
.end annotation


# instance fields
.field private final LOAD_ID_FACE_ENHANCE:I

.field private final LOAD_ID_IMAGE_DECODE:I

.field private final LOAD_ID_IMAGE_SAVE:I

.field private LOG_TAG:Ljava/lang/String;

.field private mActiveFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lvisidon/Lib/enhancement/Enhancement;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Landroid/app/Activity;

.field private mEnhancementAdapter:Landroid/widget/SpinnerAdapter;

.field private mEnhancerStrength:Landroid/widget/SeekBar;

.field private mImageView:Landroid/widget/ImageView;

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mLoadingFragment:Lcom/pantech/app/vegacamera/beautification/LoadingFragment;

.field private mOriginalImage:Landroid/graphics/Bitmap;

.field private mPhoto:[B

.field private mPhotoHeight:I

.field private mPhotoWidth:I

.field private mRequestedHeight:I

.field private mRequestedWidth:I

.field private mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 24
    const-string v0, "EnhancerFragment"

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOAD_ID_IMAGE_DECODE:I

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOAD_ID_FACE_ENHANCE:I

    .line 28
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOAD_ID_IMAGE_SAVE:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;

    .line 23
    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActivity:Landroid/app/Activity;

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mLoaderManager:Landroid/app/LoaderManager;

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    .line 62
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    new-instance v4, Lvisidon/Lib/enhancement/Enhancement;

    sget-object v5, Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;->SKIN_SMOOTHING:Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;

    invoke-direct {v4, v5}, Lvisidon/Lib/enhancement/Enhancement;-><init>(Lvisidon/Lib/enhancement/EnhancementAPI$Enhancements;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;

    if-nez v3, :cond_1

    .line 71
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvisidon/Lib/enhancement/Enhancement;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;

    .line 82
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, enhancerNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_3

    .line 87
    new-instance v3, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActivity:Landroid/app/Activity;

    const v5, 0x1090009

    invoke-direct {v3, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mEnhancementAdapter:Landroid/widget/SpinnerAdapter;

    .line 93
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->setHasOptionsMenu(Z)V

    .line 94
    return-void

    .line 73
    .end local v0           #enhancerNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v3}, Lvisidon/Lib/enhancement/Enhancement;->getValue()I

    move-result v2

    .line 74
    .local v2, value:I
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v3}, Lvisidon/Lib/enhancement/Enhancement;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvisidon/Lib/enhancement/Enhancement;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v4}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v4

    invoke-virtual {v3, v4}, Lvisidon/Lib/enhancement/Enhancement;->setStrength(I)V

    .line 77
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvisidon/Lib/enhancement/Enhancement;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;

    .line 74
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 85
    .end local v2           #value:I
    .restart local v0       #enhancerNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v3}, Lvisidon/Lib/enhancement/Enhancement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 6
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 144
    .local v0, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    packed-switch p1, :pswitch_data_0

    .line 163
    :goto_0
    return-object v0

    .line 147
    :pswitch_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "creating image decoder"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;

    .end local v0           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mPhoto:[B

    iget v4, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mRequestedWidth:I

    iget v5, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mRequestedHeight:I

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/beautification/ImageDecoder;-><init>(Landroid/content/Context;[BLcom/pantech/app/vegacamera/beautification/ImageDecoder$ImageDecoderCallback;II)V

    .line 149
    .restart local v0       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "creating face enhancer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;

    .end local v0           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mOriginalImage:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/beautification/FaceEnhancer;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/util/ArrayList;)V

    .line 155
    .restart local v0       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "creating image saver"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v0, Lcom/pantech/app/vegacamera/beautification/ImageSaver;

    .end local v0           #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mPhoto:[B

    iget v3, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mPhotoWidth:I

    iget v4, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mPhotoHeight:I

    iget-object v5, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/beautification/ImageSaver;-><init>(Landroid/content/Context;[BIILjava/util/ArrayList;)V

    .restart local v0       #loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 112
    return-void
.end method

.method public onImageSizeDecoded(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 211
    iput p1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mPhotoWidth:I

    .line 212
    iput p2, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mPhotoHeight:I

    .line 213
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 171
    :pswitch_0
    iput-object p2, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mOriginalImage:Landroid/graphics/Bitmap;

    .line 172
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mOriginalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 173
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 177
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;->onLoadFinish()V

    .line 178
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mLoadingFragment:Lcom/pantech/app/vegacamera/beautification/LoadingFragment;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/beautification/LoadingFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 168
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    check-cast p1, Landroid/content/Loader;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->onLoadFinished(Landroid/content/Loader;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 202
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "image decoder is reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :pswitch_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "face enhancer is reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "image saver is reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onNavigationItemSelected(IJ)Z
    .locals 2
    .parameter "position"
    .parameter "id"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActiveFilters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvisidon/Lib/enhancement/Enhancement;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;

    .line 218
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mEnhancerStrength:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;

    invoke-virtual {v1}, Lvisidon/Lib/enhancement/Enhancement;->getStrength()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 133
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;->onLoadFinish()V

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment$EnhancerCallbacks;->onLoadStart()V

    .line 127
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 128
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outBundle"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 99
    iget-object v0, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "saving state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method

.method public setPhoto([B)V
    .locals 0
    .parameter "mPhoto"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mPhoto:[B

    .line 138
    return-void
.end method

.method public setRequestedSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 205
    iput p1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mRequestedWidth:I

    .line 206
    iput p2, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mRequestedHeight:I

    .line 207
    return-void
.end method

.method public setSelectedEnhancement(Lvisidon/Lib/enhancement/Enhancement;)V
    .locals 0
    .parameter "enhancement"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/pantech/app/vegacamera/beautification/EnhancerFragment;->mSelectedEnhancement:Lvisidon/Lib/enhancement/Enhancement;

    .line 107
    return-void
.end method
