.class public Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;
.super Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;
.source "BestShotEditActivity.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;


# static fields
.field private static final IS_FIRST_ENTERED:Ljava/lang/String; = "is_first_entered"

.field private static final SCROLL_MOVE_STEP:I = 0xf7

.field public static final STATE_BASIC_BASE:I = 0x1

.field private static final STATE_LARGE_PHOTO:I = 0x1

.field private static final STATE_NO_PERSON:I = 0x4

.field private static final STATE_PIC_CONFIRM:I = 0x3

.field private static final STATE_PIC_EDIT:I = 0x2

.field private static final TEMP_PATH:Ljava/lang/String; = "/data/data/com.pantech.app.vegacamera/files/tempImage.jpg"


# instance fields
.field mBedoing:Z

.field private mCandidateFaceNum:[I

.field private mChangeTempArray:[I

.field private mConfirmButton:Landroid/widget/FrameLayout;

.field private mConfirm_Image:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private mCurrentCandidate:I

.field private mCurrentPerson:I

.field private mCurrentRotateDegree:I

.field private mDotImage:[I

.field private mFaceRectArray:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTimeEdit:Z

.field private mInfo_Image:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private mIsPhotoEdited:Z

.field private mLargeAnim:Landroid/view/animation/Animation;

.field private mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

.field private mPersonChoose:I

.field private mPersonLayout:Landroid/widget/LinearLayout;

.field private mPersonNum:I

.field private mPicBestLayout:Landroid/widget/RelativeLayout;

.field private mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

.field private mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

.field private mReferenceImageId:I

.field private mReplaceHistoryArray:[I

.field private mSaveButton:Landroid/widget/FrameLayout;

.field private mSave_Image:Lcom/pantech/app/vegacamera/ui/RotateImageView;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mScrollY:I

.field private mSmallAnimArray:[Landroid/view/animation/Animation;

.field private mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

.field private mToolbarLayout:Landroid/widget/RelativeLayout;

.field private mTutorial:Landroid/widget/RelativeLayout;

.field private mTutorial_CurrentContent:I

.field private mflInfoButton:Landroid/widget/FrameLayout;

.field private mflTutorial:Landroid/widget/FrameLayout;

.field private mhScrollView:Landroid/widget/HorizontalScrollView;

.field miChildSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;-><init>()V

    .line 70
    iput v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [I

    sget v1, Lcom/pantech/app/vegacamera/R$id;->edit_dot_1:I

    aput v1, v0, v3

    sget v1, Lcom/pantech/app/vegacamera/R$id;->edit_dot_2:I

    aput v1, v0, v4

    const/4 v1, 0x2

    sget v2, Lcom/pantech/app/vegacamera/R$id;->edit_dot_3:I

    aput v2, v0, v1

    sget v1, Lcom/pantech/app/vegacamera/R$id;->edit_dot_4:I

    aput v1, v0, v5

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mDotImage:[I

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    .line 86
    iput-boolean v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFirstTimeEdit:Z

    .line 94
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 111
    new-instance v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$1;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->miChildSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    .line 39
    return-void
.end method

.method private CheckFirstEnter()V
    .locals 1

    .prologue
    .line 851
    const-string v0, "is_first_entered"

    invoke-static {p0, v0}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->isFirstEntered(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    const-string v0, "is_first_entered"

    invoke-static {p0, v0}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->setFirstEntered(Landroid/content/Context;Ljava/lang/String;)V

    .line 853
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    .line 854
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ShowTutorial()V

    .line 856
    :cond_0
    return-void
.end method

.method private InitPicScreen()V
    .locals 6

    .prologue
    .line 232
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 233
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 234
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 235
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 236
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v3, 0x2

    .line 237
    .local v2, srcWidth:I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v1, v3, 0x2

    .line 238
    .local v1, srcHeight:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    sget v4, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    sget v5, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    invoke-virtual {v3, v4, v5, v2, v1}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->init(IIII)V

    .line 244
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setInfoBarLayout(I)V

    .line 245
    return-void

    .line 240
    .end local v1           #srcHeight:I
    .end local v2           #srcWidth:I
    :cond_0
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v3, 0x2

    .line 241
    .restart local v2       #srcWidth:I
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v1, v3, 0x2

    .line 242
    .restart local v1       #srcHeight:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    sget v4, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    sget v5, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->init(IIII)V

    goto :goto_0
.end method

.method private ShowTutorial()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 420
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->removeAllAppsTutorial()V

    .line 421
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 422
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 423
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_0

    .line 424
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedBestshotOrientation()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 425
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 426
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->tutorial_land:I

    invoke-static {p0, v1, v4}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    .line 427
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflTutorial:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 428
    sget v1, Lcom/pantech/app/vegacamera/R$id;->cling:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;

    .line 429
    .local v0, cling:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->SetOnTutorialChangeListener(Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;)V

    .line 430
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->init()V

    .line 431
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    invoke-virtual {v0, v1, v3}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->setOrientation(II)V

    .line 459
    .end local v0           #cling:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->tutorial_port:I

    invoke-static {p0, v1, v4}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    .line 434
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflTutorial:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 435
    sget v1, Lcom/pantech/app/vegacamera/R$id;->cling:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;

    .line 436
    .restart local v0       #cling:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->SetOnTutorialChangeListener(Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;)V

    .line 437
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->init()V

    .line 438
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    invoke-virtual {v0, v1, v3}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->setOrientation(II)V

    goto :goto_0

    .line 441
    .end local v0           #cling:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
    :cond_2
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    sget v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ORIENTATION_0:I

    if-ne v1, v2, :cond_3

    .line 442
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->tutorial_land:I

    invoke-static {p0, v1, v4}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    .line 443
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflTutorial:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 444
    sget v1, Lcom/pantech/app/vegacamera/R$id;->cling:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;

    .line 445
    .restart local v0       #cling:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->SetOnTutorialChangeListener(Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;)V

    .line 446
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->init()V

    .line 447
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    invoke-virtual {v0, v1, v3}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->setOrientation(II)V

    goto :goto_0

    .line 449
    .end local v0           #cling:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
    :cond_3
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->tutorial_port:I

    invoke-static {p0, v1, v4}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    .line 450
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflTutorial:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 451
    sget v1, Lcom/pantech/app/vegacamera/R$id;->cling:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;

    .line 452
    .restart local v0       #cling:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
    invoke-virtual {v0, p0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->SetOnTutorialChangeListener(Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout$ISetTutorialChangeListener;)V

    .line 453
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->init()V

    .line 454
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->setOrientation(II)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;II)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 969
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getPersonChoose(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;
    .locals 1
    .parameter

    .prologue
    .line 67
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 91
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollY:I

    return v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mhScrollView:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I

    return-object v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I

    return-object v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 66
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    return v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    return-void
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)[I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I

    return-object v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    return v0
.end method

.method private bestface_resetResouceonDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 909
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 910
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 912
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonLayout:Landroid/widget/LinearLayout;

    .line 913
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    .line 914
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mhScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_3

    .line 916
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mhScrollView:Landroid/widget/HorizontalScrollView;

    .line 917
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 918
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    .line 919
    :cond_4
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_5

    .line 920
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    .line 921
    :cond_5
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_6

    .line 922
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    .line 923
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    if-eqz v0, :cond_7

    .line 924
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    .line 925
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_8

    .line 926
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeAnim:Landroid/view/animation/Animation;

    .line 927
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    if-eqz v0, :cond_9

    .line 928
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    .line 929
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    if-eqz v0, :cond_a

    .line 930
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    .line 931
    :cond_a
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    if-eqz v0, :cond_b

    .line 932
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    .line 933
    :cond_b
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    if-eqz v0, :cond_c

    .line 934
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    .line 935
    :cond_c
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I

    if-eqz v0, :cond_d

    .line 936
    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I

    .line 937
    :cond_d
    return-void
.end method

.method private getPersonChoose(II)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    .line 970
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 971
    .local v4, newRect:Landroid/graphics/Rect;
    const/4 v3, -0x1

    .line 973
    .local v3, index:I
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->getZoomSize()F

    move-result v8

    .line 974
    .local v8, zoomSize:F
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->getOffsetX()I

    move-result v5

    .line 975
    .local v5, offsetX:I
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    invoke-virtual {v9}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->getOffsetY()I

    move-result v6

    .line 977
    .local v6, offsetY:I
    const/4 v0, 0x0

    .line 978
    .local v0, Screen_Width:I
    const/4 v1, 0x0

    .line 980
    .local v1, Screen_height:I
    iget-boolean v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->is_13M:Z

    if-eqz v9, :cond_2

    .line 981
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    .line 982
    sget v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    .line 983
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    .line 993
    :goto_0
    sget v9, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_0:I

    iget v10, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    if-ne v9, v10, :cond_5

    .line 994
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-lt v2, v9, :cond_3

    .line 1046
    .end local v2           #i:I
    :cond_0
    :goto_2
    return v3

    .line 985
    :cond_1
    sget v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    .line 986
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    .line 988
    goto :goto_0

    .line 989
    :cond_2
    sget v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    .line 990
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    goto :goto_0

    .line 995
    .restart local v2       #i:I
    :cond_3
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 996
    .local v7, rectItem:Landroid/graphics/Rect;
    iget v9, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    add-int/2addr v9, v5

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 997
    iget v9, v7, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    add-int/2addr v9, v6

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 998
    iget v9, v7, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    add-int/2addr v9, v5

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 999
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    add-int/2addr v9, v6

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 1000
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1001
    move v3, v2

    .line 1002
    iput v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonChoose:I

    goto :goto_2

    .line 994
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1006
    .end local v2           #i:I
    .end local v7           #rectItem:Landroid/graphics/Rect;
    :cond_5
    sget v9, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_270:I

    iget v10, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    if-ne v9, v10, :cond_7

    .line 1007
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 1008
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 1009
    .restart local v7       #rectItem:Landroid/graphics/Rect;
    int-to-float v9, v5

    iget v10, v7, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 1010
    int-to-float v9, v1

    int-to-float v10, v6

    iget v11, v7, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float/2addr v11, v8

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 1011
    int-to-float v9, v5

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 1012
    int-to-float v9, v1

    int-to-float v10, v6

    iget v11, v7, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    div-float/2addr v11, v8

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 1013
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1014
    move v3, v2

    .line 1015
    iput v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonChoose:I

    goto/16 :goto_2

    .line 1007
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1019
    .end local v2           #i:I
    .end local v7           #rectItem:Landroid/graphics/Rect;
    :cond_7
    sget v9, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_90:I

    iget v10, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    if-ne v9, v10, :cond_9

    .line 1020
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 1021
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 1022
    .restart local v7       #rectItem:Landroid/graphics/Rect;
    int-to-float v9, v0

    int-to-float v10, v5

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float/2addr v11, v8

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 1023
    int-to-float v9, v6

    iget v10, v7, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 1024
    int-to-float v9, v0

    int-to-float v10, v5

    iget v11, v7, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    div-float/2addr v11, v8

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 1025
    int-to-float v9, v6

    iget v10, v7, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 1026
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1027
    move v3, v2

    .line 1028
    iput v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonChoose:I

    goto/16 :goto_2

    .line 1020
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1032
    .end local v2           #i:I
    .end local v7           #rectItem:Landroid/graphics/Rect;
    :cond_9
    sget v9, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->ORIENTATION_180:I

    iget v10, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    if-ne v9, v10, :cond_0

    .line 1033
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_5
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 1034
    iget-object v9, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v9, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 1035
    .restart local v7       #rectItem:Landroid/graphics/Rect;
    int-to-float v9, v0

    iget v10, v7, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    int-to-float v11, v5

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 1036
    int-to-float v9, v1

    iget v10, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    int-to-float v11, v6

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 1037
    int-to-float v9, v0

    iget v10, v7, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    int-to-float v11, v5

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    .line 1038
    int-to-float v9, v1

    iget v10, v7, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    div-float/2addr v10, v8

    int-to-float v11, v6

    add-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    .line 1039
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 1040
    move v3, v2

    .line 1041
    iput v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonChoose:I

    goto/16 :goto_2

    .line 1033
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private init()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 149
    sget v5, Lcom/pantech/app/vegacamera/R$id;->picbest:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    .line 150
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    sget v5, Lcom/pantech/app/vegacamera/R$id;->largePhoto:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    .line 152
    new-array v5, v9, [Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    .line 154
    sget v5, Lcom/pantech/app/vegacamera/R$id;->tutorial_layout:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflTutorial:Landroid/widget/FrameLayout;

    .line 156
    sget v5, Lcom/pantech/app/vegacamera/R$id;->toolbar_save_layout:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    .line 157
    sget v5, Lcom/pantech/app/vegacamera/R$id;->toolbar_confirm_layout:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    .line 158
    sget v5, Lcom/pantech/app/vegacamera/R$id;->toolbar_Info_layout:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    .line 160
    sget v5, Lcom/pantech/app/vegacamera/R$id;->confirm_image:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirm_Image:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 161
    sget v5, Lcom/pantech/app/vegacamera/R$id;->save_image:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSave_Image:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 162
    sget v5, Lcom/pantech/app/vegacamera/R$id;->info_image:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/ui/RotateImageView;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mInfo_Image:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    .line 163
    sget v5, Lcom/pantech/app/vegacamera/R$id;->toolbar_layout:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mToolbarLayout:Landroid/widget/RelativeLayout;

    .line 165
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 169
    sget v5, Lcom/pantech/app/vegacamera/R$id;->customView:I

    invoke-virtual {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    .line 170
    new-array v5, v9, [Landroid/view/animation/Animation;

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    .line 171
    sget v5, Lcom/pantech/app/vegacamera/R$anim;->scale_animation:I

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeAnim:Landroid/view/animation/Animation;

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    array-length v5, v5

    if-lt v0, v5, :cond_3

    .line 175
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setAnimationStartOrder()V

    .line 176
    iput v8, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    .line 177
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedBestshotOrientation()Z

    move-result v5

    if-nez v5, :cond_0

    .line 179
    new-instance v5, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$2;

    invoke-direct {v5, p0, p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$2;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 204
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 205
    .local v1, opts:Landroid/graphics/BitmapFactory$Options;
    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 206
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 207
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v5, v6

    sget v6, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->BURST13M:I

    if-le v5, v6, :cond_1

    .line 208
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->is_13M:Z

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 211
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v4, v5, 0x2

    .line 212
    .local v4, srcWidth:I
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v3, v5, 0x2

    .line 213
    .local v3, srcHeight:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v5, v4, v3, v6, v7}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->init(II[Ljava/lang/String;I)I

    .line 214
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v5, p0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->setProcessListener(Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;)V

    .line 223
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->InitPicScreen()V

    .line 224
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->is_13M:Z

    if-eqz v5, :cond_2

    .line 225
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getOrientation(Ljava/lang/String;)I

    move-result v2

    .line 226
    .local v2, orientation:I
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    .line 227
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setOrientation(I)V

    .line 229
    .end local v2           #orientation:I
    :cond_2
    return-void

    .line 173
    .end local v1           #opts:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #srcHeight:I
    .end local v4           #srcWidth:I
    :cond_3
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    sget v6, Lcom/pantech/app/vegacamera/R$anim;->scale_animation:I

    invoke-static {p0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    aput-object v6, v5, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .restart local v1       #opts:Landroid/graphics/BitmapFactory$Options;
    :cond_4
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v4, v5, 0x2

    .line 218
    .restart local v4       #srcWidth:I
    iget v5, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/lit8 v5, v5, 0x2

    mul-int/lit8 v3, v5, 0x2

    .line 219
    .restart local v3       #srcHeight:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    array-length v7, v7

    invoke-virtual {v5, v3, v4, v6, v7}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->init(II[Ljava/lang/String;I)I

    .line 220
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v5, p0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->setProcessListener(Lcom/pantech/app/vegacamera/picbest/app/ProcessListener;)V

    goto :goto_1
.end method

.method private onCandidateFaceClick(I)V
    .locals 2
    .parameter "newFace"

    .prologue
    .line 623
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aget v0, v0, v1

    if-le p1, v0, :cond_1

    .line 640
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    array-length v1, v1

    if-gt v0, v1, :cond_2

    .line 627
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setIsSelected(Z)V

    .line 630
    :cond_2
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    .line 631
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aput p1, v0, v1

    .line 633
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setCurrentLargeFaceView()V

    .line 634
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    .line 635
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setIsSelected(Z)V

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 638
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private onPersonChoose(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 565
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    if-lt v0, v1, :cond_1

    .line 576
    :cond_0
    :goto_1
    return-void

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 567
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    if-eq v1, v0, :cond_0

    .line 568
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 569
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setPersonChooseIndex(I)V

    .line 570
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setCurrentSmallFaceView()V

    .line 571
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 565
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setAnimationStartOrder()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x3

    .line 282
    const/4 v1, 0x6

    new-array v0, v1, [I

    const/4 v1, -0x1

    aput v1, v0, v5

    aput v4, v0, v6

    aput v4, v0, v3

    aput v3, v0, v7

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 284
    .local v0, order:[I
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$3;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;[I)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 307
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    aget-object v1, v1, v3

    new-instance v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$4;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$4;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 328
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    aget-object v1, v1, v4

    new-instance v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$5;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$5;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 349
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    aget-object v1, v1, v5

    new-instance v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$6;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 370
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    aget-object v1, v1, v6

    new-instance v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$7;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$7;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 390
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallAnimArray:[Landroid/view/animation/Animation;

    aget-object v1, v1, v7

    new-instance v2, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$8;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$8;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 405
    return-void
.end method

.method private setCurrentLargeFaceView()V
    .locals 7

    .prologue
    .line 644
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->GetFaceGroup()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->GetFaceImg()[B

    move-result-object v1

    .line 646
    .local v1, largeFaceData:[B
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/pantech/app/vegacamera/R$dimen;->shot_frame_diameter:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 647
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/pantech/app/vegacamera/R$dimen;->shot_frame_diameter:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 646
    invoke-static {v1, v3, v4}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromByte([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 648
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 649
    invoke-static {v0}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 650
    .local v2, roundBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 651
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    sget v4, Lcom/pantech/app/vegacamera/R$drawable;->camera_shot_main_frame:I

    sget v5, Lcom/pantech/app/vegacamera/R$drawable;->camera_shot_main_frame:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setFaceSource(Landroid/graphics/Bitmap;II)V

    .line 652
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setRotateDegress(F)V

    .line 653
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/pantech/app/vegacamera/R$dimen;->shot_frame_diameter:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 654
    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->shot_frame_diameter:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 653
    invoke-virtual {v3, v4, v5}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setFaceSize(II)V

    .line 656
    .end local v2           #roundBitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private setCurrentSmallFaceView()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    .line 579
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v6, 0x5

    if-lt v2, v6, :cond_0

    .line 582
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mDotImage:[I

    array-length v6, v6

    if-lt v3, v6, :cond_1

    .line 585
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I

    iget v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aget v0, v6, v7

    .line 586
    .local v0, CandidateFaceNum:I
    const/4 v2, 0x0

    :goto_2
    if-lt v2, v0, :cond_2

    .line 606
    return-void

    .line 580
    .end local v0           #CandidateFaceNum:I
    .end local v3           #j:I
    :cond_0
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aget-object v6, v6, v2

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setVisibility(I)V

    .line 579
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    .restart local v3       #j:I
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mDotImage:[I

    aget v6, v6, v3

    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 582
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 587
    .restart local v0       #CandidateFaceNum:I
    :cond_2
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v6

    iget v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->GetFaceGroup()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->GetFaceImg()[B

    move-result-object v5

    .line 589
    .local v5, smallFaceData:[B
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/pantech/app/vegacamera/R$dimen;->small_face_frame_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 590
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/pantech/app/vegacamera/R$dimen;->small_face_frame_height:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 588
    invoke-static {v5, v6, v7}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromByte([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 591
    .local v1, bitmap:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 592
    invoke-static {v1}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 593
    .local v4, roundBitmap:Landroid/graphics/Bitmap;
    const/4 v5, 0x0

    .line 594
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 595
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aget-object v6, v6, v2

    sget v7, Lcom/pantech/app/vegacamera/R$drawable;->camera_best_shot_frame_nor:I

    .line 596
    sget v8, Lcom/pantech/app/vegacamera/R$drawable;->camera_best_shot_frame_sel:I

    .line 595
    invoke-virtual {v6, v4, v7, v8}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setFaceSource(Landroid/graphics/Bitmap;II)V

    .line 597
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aget-object v6, v6, v2

    iget v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setRotateDegress(F)V

    .line 598
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aget-object v6, v6, v2

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/pantech/app/vegacamera/R$dimen;->small_face_width:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    .line 599
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/pantech/app/vegacamera/R$dimen;->small_face_height:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 598
    invoke-virtual {v6, v7, v8}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setFaceSize(II)V

    .line 600
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aget-object v6, v6, v2

    invoke-virtual {v6, p0}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    .end local v4           #roundBitmap:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v6, 0x1

    if-lt v2, v6, :cond_4

    .line 603
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mDotImage:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 586
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method

.method private setFirstImage()V
    .locals 5

    .prologue
    .line 462
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 463
    sget v2, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->screenScaleSize:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 464
    sget v3, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->screenScaleSize:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 462
    invoke-static {v1, v2, v3}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 465
    .local v0, firstImage:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 466
    return-void
.end method

.method private setInfoBarLayout(I)V
    .locals 9
    .parameter "orientation"

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 248
    if-ne p1, v5, :cond_0

    .line 249
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 250
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 251
    invoke-virtual {v0, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 252
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 253
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 254
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 257
    .local v1, lp2:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 258
    invoke-virtual {v1, v7, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 259
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 260
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 261
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    :goto_0
    return-void

    .line 264
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 265
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 266
    invoke-virtual {v0, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 267
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 268
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 269
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mToolbarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 272
    .restart local v1       #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v6, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 273
    invoke-virtual {v1, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 274
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 275
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->toolbar_image_margin_right:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 276
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setPersonChooseIndex(I)V
    .locals 2
    .parameter "newPerson"

    .prologue
    .line 609
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    if-le p1, v0, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->setIsSelected(Z)V

    .line 615
    :cond_2
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    .line 616
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->onCandidateFaceClick(I)V

    .line 617
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    aget-object v0, v0, v1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->setIsSelected(Z)V

    goto :goto_0
.end method

.method private setPicEditLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 825
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 826
    const/4 v0, 0x0

    .line 827
    .local v0, EditView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    .line 828
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->picbestedit_port:I

    invoke-static {p0, v1, v3}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 829
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 830
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->camera_shot_main_dim_bg:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 831
    iput-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 832
    sget v1, Lcom/pantech/app/vegacamera/R$id;->facescroll:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mhScrollView:Landroid/widget/HorizontalScrollView;

    .line 840
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    const/4 v3, 0x0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface1:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aput-object v1, v2, v3

    .line 841
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface2:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aput-object v1, v2, v4

    .line 842
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    const/4 v3, 0x2

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface3:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aput-object v1, v2, v3

    .line 843
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    const/4 v3, 0x3

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface4:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aput-object v1, v2, v3

    .line 844
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    const/4 v3, 0x4

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface5:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aput-object v1, v2, v3

    .line 845
    sget v1, Lcom/pantech/app/vegacamera/R$id;->largeface:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    .line 846
    sget v1, Lcom/pantech/app/vegacamera/R$id;->facelayout:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonLayout:Landroid/widget/LinearLayout;

    .line 847
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 848
    return-void

    .line 834
    :cond_0
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->picbestedit_land:I

    invoke-static {p0, v1, v3}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 836
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->camera_shot_main_dim_bg_land:I

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 837
    iput-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mhScrollView:Landroid/widget/HorizontalScrollView;

    .line 838
    sget v1, Lcom/pantech/app/vegacamera/R$id;->facescroll:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollView:Landroid/widget/ScrollView;

    goto :goto_0
.end method

.method private setScrollBarLocation(II)V
    .locals 5
    .parameter "index"
    .parameter "step"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 859
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollY:I

    .line 861
    const/4 v0, 0x5

    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    if-lt v0, v1, :cond_3

    .line 862
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollY:I

    .line 870
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$9;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$9;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 878
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mhScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_2

    .line 879
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mhScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$10;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity$10;-><init>(Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->post(Ljava/lang/Runnable;)Z

    .line 886
    :cond_2
    return-void

    .line 863
    :cond_3
    if-ge p1, v4, :cond_4

    .line 864
    iput v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollY:I

    goto :goto_0

    .line 865
    :cond_4
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    sub-int/2addr v0, p1

    if-ge v0, v4, :cond_5

    .line 866
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    add-int/lit8 v0, v0, -0x4

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollY:I

    goto :goto_0

    .line 867
    :cond_5
    if-le p1, v3, :cond_0

    .line 868
    add-int/lit8 v0, p1, -0x2

    mul-int/2addr v0, p2

    iput v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mScrollY:I

    goto :goto_0
.end method


# virtual methods
.method public OnChangePage(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1081
    iput p1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    .line 1084
    return-void
.end method

.method protected bestface_deleteTempFile()V
    .locals 5

    .prologue
    .line 1116
    invoke-super {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->bestface_deleteTempFile()V

    .line 1118
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 1126
    return-void

    .line 1119
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/com.pantech.app.vegacamera/files/bestface/bestshot_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, FPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1122
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1118
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getIsPhotoEdited()Z
    .locals 2

    .prologue
    .line 1087
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mIsPhotoEdited:Z

    .line 1089
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I

    if-eqz v1, :cond_0

    .line 1090
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1097
    .end local v0           #i:I
    :cond_0
    :goto_1
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mIsPhotoEdited:Z

    return v1

    .line 1091
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I

    aget v1, v1, v0

    if-eqz v1, :cond_2

    .line 1092
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mIsPhotoEdited:Z

    goto :goto_1

    .line 1090
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 941
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    if-eqz v1, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 945
    sget v1, Lcom/pantech/app/vegacamera/R$id;->cling:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;

    .line 946
    .local v0, cling:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
    if-eqz v0, :cond_0

    .line 947
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;->dimiss()V

    goto :goto_0

    .line 952
    .end local v0           #cling:Lcom/pantech/app/vegacamera/picbest/app/Tutorial_Layout;
    :cond_2
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    if-eq v1, v5, :cond_3

    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    if-ne v1, v3, :cond_4

    .line 953
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->bestface_createNprocess_Popup()V

    goto :goto_0

    .line 955
    :cond_4
    sget v1, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 956
    sput v5, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    .line 958
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 959
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 961
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 962
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 966
    :cond_5
    invoke-super {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 525
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    if-eqz v0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 528
    :cond_1
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->onPersonChoose(Landroid/view/View;)V

    .line 530
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface1:I

    if-ne v0, v1, :cond_2

    .line 531
    invoke-direct {p0, v4}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->onCandidateFaceClick(I)V

    goto :goto_0

    .line 532
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface2:I

    if-ne v0, v1, :cond_3

    .line 533
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->onCandidateFaceClick(I)V

    goto :goto_0

    .line 534
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface3:I

    if-ne v0, v1, :cond_4

    .line 535
    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->onCandidateFaceClick(I)V

    goto :goto_0

    .line 536
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface4:I

    if-ne v0, v1, :cond_5

    .line 537
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->onCandidateFaceClick(I)V

    goto :goto_0

    .line 538
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->smallface5:I

    if-ne v0, v1, :cond_6

    .line 539
    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->onCandidateFaceClick(I)V

    goto :goto_0

    .line 540
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->largeface:I

    if-eq v0, v1, :cond_0

    .line 542
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_confirm_layout:I

    if-ne v0, v1, :cond_7

    .line 543
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 544
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->showProgressDialog()V

    .line 545
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I

    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->WriteNativeHistory([I[I)V

    goto :goto_0

    .line 546
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_save_layout:I

    if-ne v0, v1, :cond_a

    .line 547
    sget v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    if-eq v0, v5, :cond_0

    .line 550
    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 551
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 552
    sget v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    if-eq v3, v0, :cond_8

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getIsPhotoEdited()Z

    move-result v0

    if-nez v0, :cond_9

    .line 553
    :cond_8
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->SaveDirect()V

    goto/16 :goto_0

    .line 555
    :cond_9
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->SaveMergeResult()V

    goto/16 :goto_0

    .line 557
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->toolbar_Info_layout:I

    if-ne v0, v1, :cond_0

    .line 558
    iput v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    .line 559
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ShowTutorial()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->InitPicScreen()V

    .line 410
    sget v0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->PicEditStart()V

    .line 413
    :cond_0
    iget v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 414
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ShowTutorial()V

    .line 416
    :cond_1
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 417
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget v1, Lcom/pantech/app/vegacamera/R$layout;->arcmain:I

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->CheckFileList()Z

    move-result v0

    .line 101
    .local v0, isCorrect:Z
    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->init()V

    .line 105
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setFirstImage()V

    .line 106
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->StartProcess()V

    .line 107
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->miSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setListener(Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;)V

    .line 108
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->miChildSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->miSingleTapUp:Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity$IsingleTapUp;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 890
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->removeAllAppsTutorial()V

    .line 891
    invoke-super {p0}, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->onDestroy()V

    .line 892
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    if-eqz v1, :cond_0

    .line 893
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 899
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    if-eqz v1, :cond_1

    .line 900
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->bitmapRecycle()V

    .line 902
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    if-eqz v1, :cond_2

    .line 903
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->bitmapRecycle()V

    .line 905
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->bestface_resetResouceonDestroy()V

    .line 906
    return-void

    .line 894
    .restart local v0       #i:I
    :cond_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    .line 895
    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->bitmapRecycle()V

    .line 893
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onPicEditFinish()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1052
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 1057
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getIsPhotoEdited()Z

    .line 1058
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->getMergeResult()[B

    move-result-object v3

    .line 1059
    .local v3, preResult:[B
    if-eqz v3, :cond_0

    .line 1060
    const-string v1, "tempImage.jpg"

    .line 1061
    .local v1, fileSaveNameString:Ljava/lang/String;
    invoke-static {p0, v1, v3}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->SaveoneLocalFile(Landroid/content/Context;Ljava/lang/String;[B)Z

    .line 1062
    sget v4, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->screenScaleSize:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 1063
    sget v5, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    int-to-float v5, v5

    iget v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->screenScaleSize:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 1062
    invoke-static {v3, v4, v5}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromByte([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1064
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v4, v0}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1065
    const/4 v3, 0x0

    .line 1066
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1067
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1068
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1069
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1070
    const/4 v4, 0x1

    sput v4, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    .line 1072
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #fileSaveNameString:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->getRectVector()Ljava/util/Vector;

    move-result-object v4

    iput-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    .line 1073
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->drawFacePath(Ljava/util/Vector;)V

    .line 1074
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->hideProgressDialog()V

    .line 1075
    iput-boolean v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 1076
    return-void

    .line 1053
    .end local v3           #preResult:[B
    :cond_1
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I

    aget v4, v4, v2

    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I

    aget v5, v5, v2

    if-eq v4, v5, :cond_2

    .line 1054
    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I

    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I

    aget v5, v5, v2

    aput v5, v4, v2

    .line 1052
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onPicEditStart()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 778
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setPicEditLayout()V

    .line 779
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 780
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    array-length v5, v5

    if-lt v1, v5, :cond_2

    .line 812
    :cond_0
    iget v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonChoose:I

    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setPersonChooseIndex(I)V

    .line 813
    iget v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonChoose:I

    const/16 v6, 0xf7

    invoke-direct {p0, v5, v6}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setScrollBarLocation(II)V

    .line 814
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setCurrentSmallFaceView()V

    .line 815
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeAnim:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 816
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 817
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFirstTimeEdit:Z

    if-eqz v5, :cond_1

    .line 818
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    iget v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentPerson:I

    iget v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentCandidate:I

    invoke-virtual {v5, v6, v7}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->getLargeFace(II)[B

    .line 819
    iput-boolean v8, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFirstTimeEdit:Z

    .line 822
    :cond_1
    return-void

    .line 781
    :cond_2
    sget v5, Lcom/pantech/app/vegacamera/R$layout;->facelistview_port:I

    invoke-static {p0, v5, v9}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 782
    .local v4, templateView:Landroid/view/View;
    sget v5, Lcom/pantech/app/vegacamera/R$id;->faceImage:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    .line 783
    .local v2, imageView:Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->GetFaceGroup()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->GetFaceImg()[B

    move-result-object v3

    .line 785
    .local v3, personFaceData:[B
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->top_face_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 786
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/pantech/app/vegacamera/R$dimen;->top_face_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 784
    invoke-static {v3, v5, v6}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromByte([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 787
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->setFaceSource(Landroid/graphics/Bitmap;)V

    .line 788
    const/4 v3, 0x0

    .line 789
    iget v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->setRotateDegress(F)V

    .line 790
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    aput-object v2, v5, v1

    .line 791
    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 792
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 780
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 796
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #i:I
    .end local v2           #imageView:Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;
    .end local v3           #personFaceData:[B
    .end local v4           #templateView:Landroid/view/View;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 797
    sget v5, Lcom/pantech/app/vegacamera/R$layout;->facelistview_land:I

    invoke-static {p0, v5, v9}, Landroid/widget/LinearLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 798
    .restart local v4       #templateView:Landroid/view/View;
    sget v5, Lcom/pantech/app/vegacamera/R$id;->faceImage:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    .line 799
    .restart local v2       #imageView:Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->GetFaceGroup()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;->GetFaceImg()[B

    move-result-object v3

    .line 801
    .restart local v3       #personFaceData:[B
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/pantech/app/vegacamera/R$dimen;->top_face_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 802
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/pantech/app/vegacamera/R$dimen;->top_face_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 800
    invoke-static {v3, v5, v6}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromByte([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 803
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->setFaceSource(Landroid/graphics/Bitmap;)V

    .line 804
    const/4 v3, 0x0

    .line 805
    iget v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentRotateDegree:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->setRotateDegress(F)V

    .line 806
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    aput-object v2, v5, v1

    .line 807
    invoke-virtual {v2, p0}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 796
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onProcessImgFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 665
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->getImageId()I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReferenceImageId:I

    .line 666
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->getProcessResult()Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    .line 667
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReferenceImageId:I

    aget-object v1, v3, v4

    .line 669
    .local v1, imagePath:Ljava/lang/String;
    sget v3, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->screenScaleSize:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 670
    sget v4, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->screenScaleSize:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 668
    invoke-static {v1, v3, v4}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 671
    .local v2, referenceImage:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 672
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 673
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 674
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 675
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->getRectVector()Ljava/util/Vector;

    move-result-object v3

    iput-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    .line 676
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mFaceRectArray:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->drawFacePath(Ljava/util/Vector;)V

    .line 677
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicturesBestEngine:Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/picbest/app/PicturesBestEngine;->getPersonNum()I

    move-result v3

    iput v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    .line 679
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    new-array v3, v3, [Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    iput-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    .line 680
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I

    .line 681
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I

    .line 682
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I

    .line 683
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonNum:I

    if-lt v0, v3, :cond_0

    .line 690
    const/4 v3, 0x1

    sput v3, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    .line 691
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->hideProgressDialog()V

    .line 693
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->CheckFirstEnter()V

    .line 695
    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTime:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTime:J

    .line 697
    return-void

    .line 684
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I

    iget-object v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mProcessResult:Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_PersonGroupInfo;->GetFaceGroupInfo()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-virtual {v4}, Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceGroupInfo;->GetFaceGroup()[Lcom/pantech/app/vegacamera/picbest/jni/PicBest_FaceInfo;

    move-result-object v4

    array-length v4, v4

    aput v4, v3, v0

    .line 685
    const-string v3, "xian"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "FaceDetectProcess face num = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCandidateFaceNum:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReplaceHistoryArray:[I

    aput v6, v3, v0

    .line 687
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mChangeTempArray:[I

    aput v6, v3, v0

    .line 683
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onProcessImgNoFace()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 752
    iput v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReferenceImageId:I

    .line 753
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReferenceImageId:I

    aget-object v2, v2, v3

    if-nez v2, :cond_0

    .line 754
    const/16 v2, 0x88

    invoke-static {p0, v2}, Lcom/pantech/app/vegacamera/util/Util;->ShowDisableCustomToast(Landroid/app/Activity;I)V

    .line 755
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->finish()V

    .line 774
    :goto_0
    return-void

    .line 758
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReferenceImageId:I

    aget-object v0, v2, v3

    .line 760
    .local v0, imagePath:Ljava/lang/String;
    sget v2, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_WIDTH_INIT_ACTIVITY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->screenScaleSize:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 761
    sget v3, Lcom/pantech/app/vegacamera/picbest/ArcPicturesBestInitActivity;->SCREEN_HEIGHT_INIT_ACTIVITY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->screenScaleSize:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 759
    invoke-static {v0, v2, v3}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->getBitmapFromPath(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 762
    .local v1, referenceImage:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 763
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 764
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 765
    iget-object v2, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirmButton:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 766
    sput v6, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    .line 767
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->hideProgressDialog()V

    .line 768
    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 769
    sget v2, Lcom/pantech/app/vegacamera/R$string;->burstshot_noti_no_face:I

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 773
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->CheckFirstEnter()V

    goto :goto_0
.end method

.method public onProcessImgStart()V
    .locals 0

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->showProgressDialog()V

    .line 661
    return-void
.end method

.method public onSaveDirect()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 701
    new-instance v2, Ljava/io/File;

    sget-object v5, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mresultDir:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 704
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 707
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 708
    .local v0, dateTaken:J
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->CreateJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 709
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

    iput-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SaveFileName:Ljava/lang/String;

    .line 711
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SaveFileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotos:[Ljava/lang/String;

    iget v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mReferenceImageId:I

    aget-object v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mresultDir:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SaveFileName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->saveFileFromPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->CheckMediaScanner(Ljava/lang/String;Ljava/lang/String;J)V

    .line 717
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPicBestLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 718
    iget-object v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    invoke-virtual {v5, v8}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->setVisibility(I)V

    .line 719
    const/4 v5, 0x3

    sput v5, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    .line 721
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 722
    return-void
.end method

.method public onSaveMergeResult()V
    .locals 8

    .prologue
    .line 729
    const-string v5, "/data/data/com.pantech.app.vegacamera/files/tempImage.jpg"

    .line 730
    .local v5, srcPath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    sget-object v6, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mresultDir:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 732
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 733
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 736
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 737
    .local v0, dateTaken:J
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/Util;->CreateJpegName(J)Ljava/lang/String;

    move-result-object v3

    .line 738
    .local v3, name:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".jpg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SaveFileName:Ljava/lang/String;

    .line 740
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SaveFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 741
    .local v4, path:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mresultDir:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->SaveFileName:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/pantech/app/vegacamera/picbest/util/Utils;->saveFileFromPath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->CheckMediaScanner(Ljava/lang/String;Ljava/lang/String;J)V

    .line 744
    iget-object v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->setVisibility(I)V

    .line 745
    const/4 v6, 0x3

    sput v6, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mCurrentState:I

    .line 747
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mBedoing:Z

    .line 748
    return-void
.end method

.method public removeAllAppsTutorial()V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflTutorial:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial:Landroid/widget/RelativeLayout;

    .line 1112
    :cond_0
    return-void
.end method

.method protected setOrientation(I)V
    .locals 6
    .parameter "ori"

    .prologue
    const/4 v5, 0x3

    .line 469
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    if-eqz v3, :cond_0

    .line 470
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    array-length v3, v3

    if-lt v0, v3, :cond_8

    .line 476
    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    if-eqz v3, :cond_1

    .line 477
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    array-length v3, v3

    if-lt v0, v3, :cond_a

    .line 483
    .end local v0           #i:I
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    if-eqz v3, :cond_2

    .line 484
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mLargeFaceView:Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setRotateDegress(F)V

    .line 486
    :cond_2
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    if-eqz v3, :cond_3

    .line 487
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPhotoView:Lcom/pantech/app/vegacamera/picbest/app/PicImgView;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/picbest/app/PicImgView;->setRotateDegress(F)V

    .line 489
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    if-eqz v3, :cond_4

    .line 490
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mRectView:Lcom/pantech/app/vegacamera/picbest/app/CustomView;

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/picbest/app/CustomView;->setRotateDegress(F)V

    .line 492
    :cond_4
    invoke-static {}, Lcom/pantech/app/vegacamera/CameraFeatures;->IsSupportedBestshotOrientation()Z

    move-result v3

    if-nez v3, :cond_6

    .line 495
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mInfo_Image:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    rsub-int v4, p1, 0x168

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setDegree(I)V

    .line 496
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mConfirm_Image:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    rsub-int v4, p1, 0x168

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setDegree(I)V

    .line 497
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSave_Image:Lcom/pantech/app/vegacamera/ui/RotateImageView;

    rsub-int v4, p1, 0x168

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/ui/RotateImageView;->setDegree(I)V

    .line 499
    const/16 v3, 0x5a

    if-eq p1, v3, :cond_5

    const/16 v3, 0x10e

    if-ne p1, v3, :cond_c

    .line 500
    :cond_5
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 501
    .local v1, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x5

    sget v4, Lcom/pantech/app/vegacamera/R$id;->toolbar_Info_layout:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 502
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 504
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 505
    .local v2, lp2:Landroid/widget/RelativeLayout$LayoutParams;
    sget v3, Lcom/pantech/app/vegacamera/R$id;->toolbar_save_layout:I

    invoke-virtual {v2, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 506
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 517
    .end local v1           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2           #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->setInfoBarLayout(I)V

    .line 518
    iget v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mTutorial_CurrentContent:I

    if-eq v3, v5, :cond_7

    .line 519
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->ShowTutorial()V

    .line 521
    :cond_7
    return-void

    .line 471
    .restart local v0       #i:I
    :cond_8
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    aget-object v3, v3, v0

    if-eqz v3, :cond_9

    .line 472
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mPersonViewArray:[Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;

    aget-object v3, v3, v0

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/picbest/app/RectImageView_Person;->setRotateDegress(F)V

    .line 470
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 478
    :cond_a
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aget-object v3, v3, v0

    if-eqz v3, :cond_b

    .line 479
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSmallFaceViewArray:[Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;

    aget-object v3, v3, v0

    int-to-float v4, p1

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/picbest/app/ArcImageView;->setRotateDegress(F)V

    .line 477
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 508
    .end local v0           #i:I
    :cond_c
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    .restart local v1       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x6

    sget v4, Lcom/pantech/app/vegacamera/R$id;->toolbar_save_layout:I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 510
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mflInfoButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    .restart local v2       #lp2:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x1

    sget v4, Lcom/pantech/app/vegacamera/R$id;->toolbar_Info_layout:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 514
    iget-object v3, p0, Lcom/pantech/app/vegacamera/picbest/BestShotEditActivity;->mSaveButton:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method
