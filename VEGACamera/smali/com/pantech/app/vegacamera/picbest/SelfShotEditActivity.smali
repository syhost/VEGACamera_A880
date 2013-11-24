.class public Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;
.super Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;
.source "SelfShotEditActivity.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;


# instance fields
.field private Pic_Num:I

.field private animation_first:Landroid/view/animation/Animation;

.field private mCurrentPerson:I

.field private mCurrentRotateDegree:I

.field private mOrientation:I

.field protected mPersonViewArray:[Landroid/widget/ImageView;

.field private mPicBestLayout:Landroid/widget/RelativeLayout;

.field private mSaveButton:Landroid/widget/FrameLayout;

.field private mThumbImage:[I

.field private mThumbMenu:Landroid/widget/LinearLayout;

.field private maniThumb_menu_down:Landroid/view/animation/Animation;

.field private maniThumb_menu_left:Landroid/view/animation/Animation;

.field private maniThumb_menu_right:Landroid/view/animation/Animation;

.field private maniThumb_menu_up:Landroid/view/animation/Animation;

.field miChildSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 32
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;-><init>()V

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [I

    sget v1, Lcom/pantech/app/vegacamera/R$id;->thumb_selfimg_1:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Lcom/pantech/app/vegacamera/R$id;->thumb_selfimg_2:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/pantech/app/vegacamera/R$id;->thumb_selfimg_3:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbImage:[I

    .line 42
    iput v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mOrientation:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPersonViewArray:[Landroid/widget/ImageView;

    .line 299
    new-instance v0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$1;-><init>(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->miChildSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    .line 32
    return-void
.end method

.method private AdjustSaveButtonLayout()V
    .locals 4

    .prologue
    const/16 v3, 0xb

    .line 234
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 235
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    .local v0, lp2:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 237
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 238
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 239
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    :goto_0
    return-void

    .line 241
    .end local v0           #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .restart local v0       #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 244
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 245
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 246
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private ImageResizing(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "path"
    .parameter "sWidth"
    .parameter "sHeight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 279
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 281
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 282
    .local v1, f:Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 283
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    sub-int v7, v7, p3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sub-int/2addr v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-lt v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 284
    .local v6, scaleByHeight:Ljava/lang/Boolean;
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v7, v8

    mul-int/lit8 v7, v7, 0x2

    const/16 v8, 0x4000

    if-lt v7, v8, :cond_0

    .line 285
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v7, v7, p3

    :goto_1
    int-to-double v4, v7

    .line 286
    .local v4, sampleSize:D
    const-wide/high16 v7, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    const-wide/high16 v11, 0x4000

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 288
    .end local v4           #sampleSize:D
    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 289
    const/16 v7, 0x4000

    new-array v7, v7, [B

    iput-object v7, v2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 290
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v8, 0x0

    invoke-static {v7, v8, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 291
    .local v0, b:Landroid/graphics/Bitmap;
    iget-boolean v7, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->is_13M:Z

    if-eqz v7, :cond_1

    .line 292
    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotos:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getOrientation(Ljava/lang/String;)I

    move-result v3

    .line 293
    .local v3, orientation:I
    invoke-direct {p0, v0, v3}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 295
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #orientation:I
    :cond_1
    return-object v0

    .line 283
    .end local v6           #scaleByHeight:Ljava/lang/Boolean;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 285
    .restart local v6       #scaleByHeight:Ljava/lang/Boolean;
    :cond_3
    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v7, p2

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mOrientation:I

    return v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_left:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_right:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_down:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_up:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    return v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 198
    sget v1, Lcom/pantech/app/vegacamera/R$id;->picbest:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    .line 199
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 200
    sget v1, Lcom/pantech/app/vegacamera/R$id;->largePhoto:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    .line 201
    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_save_layout:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    .line 202
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 204
    iput v4, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentRotateDegree:I

    .line 205
    sget v1, Lcom/pantech/app/vegacamera/R$anim;->bottommenu_slidedown:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_down:Landroid/view/animation/Animation;

    .line 206
    sget v1, Lcom/pantech/app/vegacamera/R$anim;->bottommenu_slideup:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_up:Landroid/view/animation/Animation;

    .line 207
    sget v1, Lcom/pantech/app/vegacamera/R$anim;->bottommenu_slideleft:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_left:Landroid/view/animation/Animation;

    .line 208
    sget v1, Lcom/pantech/app/vegacamera/R$anim;->bottommenu_slideright:I

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_right:Landroid/view/animation/Animation;

    .line 213
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_down:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 214
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_up:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 215
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_left:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 216
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_right:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 217
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3e99999a

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->animation_first:Landroid/view/animation/Animation;

    .line 218
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->animation_first:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 220
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 221
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 222
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotos:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 223
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->AdjustSaveButtonLayout()V

    .line 225
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v1, v2

    sget v2, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->BURST13M:I

    if-le v1, v2, :cond_0

    .line 226
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->is_13M:Z

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$integer;->self_number_of_images:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->Pic_Num:I

    .line 229
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->Pic_Num:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPersonViewArray:[Landroid/widget/ImageView;

    .line 230
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v1, p0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->setProcessListener(Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;)V

    .line 231
    return-void
.end method

.method private onPersonChoose(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 251
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->Pic_Num:I

    if-lt v0, v1, :cond_1

    .line 260
    :cond_0
    :goto_1
    return-void

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPersonViewArray:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 253
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    if-eq v1, v0, :cond_0

    .line 254
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setPersonChooseIndex(I)V

    .line 255
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setFirstImage(Z)V

    goto :goto_1

    .line 251
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 156
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 157
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 160
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 161
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p1, v7, :cond_0

    .line 162
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    move-object p1, v7

    .line 169
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p1

    .line 165
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setAnimationListener()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->animation_first:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$2;-><init>(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 87
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_up:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$3;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$3;-><init>(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 104
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_down:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$4;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$4;-><init>(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 120
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_right:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$5;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$5;-><init>(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 137
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->maniThumb_menu_left:Landroid/view/animation/Animation;

    new-instance v1, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$6;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity$6;-><init>(Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 153
    return-void
.end method

.method private setFirstImage(Z)V
    .locals 6
    .parameter "isfirst"

    .prologue
    .line 173
    if-eqz p1, :cond_1

    .line 174
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotos:[Ljava/lang/String;

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    aget-object v2, v2, v3

    .line 175
    sget v3, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->screenScaleSize:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 176
    sget v4, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->screenScaleSize:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 174
    invoke-static {v2, v3, v4}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 177
    .local v0, firstImage:Landroid/graphics/Bitmap;
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->is_13M:Z

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotos:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getOrientation(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, orientation:I
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-direct {p0, v0, v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 186
    .end local v0           #firstImage:Landroid/graphics/Bitmap;
    .end local v1           #orientation:I
    :goto_0
    return-void

    .line 181
    .restart local v0       #firstImage:Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 184
    .end local v0           #firstImage:Landroid/graphics/Bitmap;
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->animation_first:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private setPersonChooseIndex(I)V
    .locals 2
    .parameter "newPerson"

    .prologue
    .line 263
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->Pic_Num:I

    if-le p1, v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->Pic_Num:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPersonViewArray:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPersonViewArray:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 268
    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_effect_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 270
    :cond_2
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    .line 271
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPersonViewArray:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPersonViewArray:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 273
    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->camera_effect_selected:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private setPicEditLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, EditView:Landroid/view/View;
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 398
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->selfedit_port:I

    invoke-static {p0, v1, v3}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 400
    sget v1, Lcom/pantech/app/vegacamera/R$id;->thumb_menu:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;

    .line 406
    :goto_0
    return-void

    .line 402
    :cond_0
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->selfedit_land:I

    invoke-static {p0, v1, v3}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 404
    sget v1, Lcom/pantech/app/vegacamera/R$id;->thumb_menu:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbMenu:Landroid/widget/LinearLayout;

    goto :goto_0
.end method


# virtual methods
.method public OnChangePage(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 455
    return-void
.end method

.method protected bestface_deleteTempFile()V
    .locals 5

    .prologue
    .line 460
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 467
    return-void

    .line 461
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/com.pantech.app.vegacamera/files/bestface/selfshot_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, FPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 463
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 460
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->bestface_createNprocess_Popup()V

    .line 411
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->onPersonChoose(Landroid/view/View;)V

    .line 446
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_save_layout:I

    if-ne v0, v1, :cond_0

    .line 447
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 448
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->SaveDirect()V

    .line 450
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mOrientation:I

    .line 326
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->onPicEditStart()V

    .line 327
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->AdjustSaveButtonLayout()V

    .line 328
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 329
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/pantech/app/vegacamera/R$layout;->selfmain:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mOrientation:I

    .line 51
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->init()V

    .line 52
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setPicEditLayout()V

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setFirstImage(Z)V

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->StartProcess()V

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->miSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setListener(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;)V

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->miChildSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->miSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    .line 57
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setAnimationListener()V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->bitmapRecycle()V

    .line 194
    invoke-super {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->onDestroy()V

    .line 195
    return-void
.end method

.method public onPicEditFinish()V
    .locals 0

    .prologue
    .line 416
    return-void
.end method

.method public onPicEditStart()V
    .locals 7

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setPicEditLayout()V

    .line 353
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 354
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->Pic_Num:I

    if-lt v1, v3, :cond_1

    .line 390
    :cond_0
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->setPersonChooseIndex(I)V

    .line 391
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 392
    return-void

    .line 355
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbImage:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 357
    .local v2, imageView:Landroid/widget/ImageView;
    :try_start_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotos:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 358
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/pantech/app/vegacamera/R$dimen;->selfshot_thumb_height:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 359
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->selfshot_thumb_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 357
    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->ImageResizing(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 367
    :goto_1
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentRotateDegree:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 368
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPersonViewArray:[Landroid/widget/ImageView;

    aput-object v2, v3, v1

    .line 369
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 362
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 363
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 365
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 372
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v1           #i:I
    .end local v2           #imageView:Landroid/widget/ImageView;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->Pic_Num:I

    if-ge v1, v3, :cond_0

    .line 373
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mThumbImage:[I

    aget v3, v3, v1

    invoke-virtual {p0, v3}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 375
    .restart local v2       #imageView:Landroid/widget/ImageView;
    :try_start_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotos:[Ljava/lang/String;

    aget-object v3, v3, v1

    .line 376
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/pantech/app/vegacamera/R$dimen;->selfshot_thumb_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 377
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->selfshot_thumb_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 375
    invoke-direct {p0, v3, v4, v5}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->ImageResizing(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 385
    :goto_3
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentRotateDegree:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setRotation(F)V

    .line 386
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPersonViewArray:[Landroid/widget/ImageView;

    aput-object v2, v3, v1

    .line 387
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 378
    :catch_2
    move-exception v0

    .line 380
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_3

    .line 381
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 383
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method public onProcessImgFinish()V
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 340
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->hideProgressDialog()V

    .line 341
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->onPicEditStart()V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mTime:J

    .line 343
    return-void
.end method

.method public onProcessImgNoFace()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public onProcessImgStart()V
    .locals 0

    .prologue
    .line 334
    return-void
.end method

.method public onSaveDirect()V
    .locals 8

    .prologue
    .line 420
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mresultDir:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 422
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 425
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 426
    .local v0, dateTaken:J
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->CreateJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 427
    .local v3, name:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->SaveFileName:Ljava/lang/String;

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->SaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPhotos:[Ljava/lang/String;

    iget v6, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mCurrentPerson:I

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mresultDir:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->SaveFileName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->saveFileFromPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->CheckMediaScanner(Ljava/lang/String;Ljava/lang/String;J)V

    .line 433
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/SelfShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 436
    return-void
.end method

.method public onSaveMergeResult()V
    .locals 0

    .prologue
    .line 441
    return-void
.end method
