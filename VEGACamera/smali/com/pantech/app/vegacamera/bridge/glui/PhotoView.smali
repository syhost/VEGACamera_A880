.class public Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;
.super Lcom/pantech/app/vegacamera/bridge/glui/GLView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;,
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;,
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;,
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;,
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;,
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;,
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;,
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;,
        Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ZInterpolator;
    }
.end annotation


# static fields
.field private static final CARD_EFFECT:Z = true

.field private static final HOLD_CAPTURE_ANIMATION:I = 0x2

.field private static final HOLD_DELETE:I = 0x4

.field private static final HOLD_TOUCH_DOWN:I = 0x1

.field private static final ICON_RATIO:I = 0x6

.field public static final INVALID_DATA_VERSION:J = -0x1L

.field public static final INVALID_SIZE:I = -0x1

.field private static final MSG_CANCEL_EXTRA_SCALING:I = 0x2

.field private static final MSG_CAPTURE_ANIMATION_DONE:I = 0x4

.field private static final MSG_DELETE_ANIMATION_DONE:I = 0x5

.field private static final MSG_DELETE_DONE:I = 0x6

.field private static final MSG_QUICK_VIEW_TIMEOUT:I = 0x9

.field private static final MSG_SET_FILM_MODE:I = 0xa

.field private static final MSG_SWITCH_FOCUS:I = 0x3

.field private static final MSG_SWITCH_TO_NEXT:I = 0xb

.field private static final MSG_UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final MSG_UNDO_BAR_TIMEOUT:I = 0x7

.field private static final OFFSET_EFFECT:Z = true

.field public static final SCREEN_NAIL_MAX:I = 0x3

.field private static final SWIPE_THRESHOLD:F = 300.0f

.field private static final TAG:Ljava/lang/String; = "PhotoView"

.field private static TRANSITION_SCALE_FACTOR:F = 0.0f

.field private static final UNDO_BAR_DELETE_LAST:I = 0x10

.field private static final UNDO_BAR_FULL_CAMERA:I = 0x8

.field private static final UNDO_BAR_SHOW:I = 0x1

.field private static final UNDO_BAR_TIMEOUT:I = 0x2

.field private static final UNDO_BAR_TOUCHED:I = 0x4


# instance fields
.field private mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

.field private mCameraRect:Landroid/graphics/Rect;

.field private mCameraRelativeFrame:Landroid/graphics/Rect;

.field private mCancelExtraScalingPending:Z

.field private mCompensation:I

.field private mContext:Landroid/content/Context;

.field private mDisplayRotation:I

.field private mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

.field private mFilmMode:Z

.field private final mFrameFocusedColor:I

.field private mFullScreenCamera:Z

.field private final mGestureListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;

.field private final mGestureRecognizer:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

.field private mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

.field private mHolding:I

.field private mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

.field private mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

.field private mNextBound:I

.field private final mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/RangeArray",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;",
            ">;"
        }
    .end annotation
.end field

.field private final mPlaceholderColor:I

.field private final mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

.field private mPrevBound:I

.field private mScaleInterpolator:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ZInterpolator;

.field private mSizes:[Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

.field private mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

.field private mTouchBoxDeletable:Z

.field private mTouchBoxIndex:I

.field private mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

.field private mUndoBarState:I

.field private mUndoIndexHint:I

.field private mVideoPlayIcon:Lcom/pantech/app/vegacamera/bridge/glui/Texture;

.field private mWantPictureCenterCallbacks:Z

.field private showView_MS:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 179
    const v0, 0x3f3d70a4

    sput v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    .line 1567
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 257
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;-><init>()V

    .line 189
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ZInterpolator;

    const/high16 v2, 0x3f00

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ZInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mScaleInterpolator:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ZInterpolator;

    .line 192
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f666666

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    .line 199
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v2, -0x3

    invoke-direct {v1, v2, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    .line 200
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mSizes:[Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    .line 220
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    .line 221
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 222
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mDisplayRotation:I

    .line 223
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    .line 225
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    .line 226
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    .line 246
    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I

    .line 253
    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoIndexHint:I

    .line 1562
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I

    .line 258
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-direct {v1, p1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;-><init>(Lcom/pantech/app/vegacamera/bridge/app/GalleryContext;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    .line 259
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->addComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 260
    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    .line 261
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->photo_placeholder:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPlaceholderColor:I

    .line 262
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->photopage_frame_focused:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFrameFocusedColor:I

    .line 264
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    .line 265
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->addComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 266
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    .line 267
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->addComponent(Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 268
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->setVisibility(I)V

    .line 269
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$1;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->setOnClickListener(Lcom/pantech/app/vegacamera/bridge/glui/GLView$OnClickListener;)V

    .line 282
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;

    invoke-virtual {p1}, Lcom/pantech/app/vegacamera/bridge/app/AbstractGalleryActivity;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyHandler;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    .line 284
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mGestureListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;

    .line 285
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mGestureListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer$Listener;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mGestureRecognizer:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    .line 287
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;

    invoke-direct {v3, p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$2;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;-><init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    .line 318
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    sget v3, Lcom/pantech/app/vegacamera/R$drawable;->gallery_video_btn_play_nor:I

    invoke-direct {v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mVideoPlayIcon:Lcom/pantech/app/vegacamera/bridge/glui/Texture;

    .line 319
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-le v0, v4, :cond_0

    .line 326
    return-void

    .line 320
    :cond_0
    if-nez v0, :cond_1

    .line 321
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$FullPicture;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 319
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;

    invoke-direct {v2, p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ScreenNailPicture;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mGestureRecognizer:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    .locals 1
    .parameter

    .prologue
    .line 204
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1571
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showUndoBar(Z)V

    return-void
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I
    .locals 1
    .parameter

    .prologue
    .line 238
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    return v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 238
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    return-void
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1789
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->snapback()V

    return-void
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1601
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->checkHideUndoBar(I)V

    return-void
.end method

.method static synthetic access$15(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1562
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I

    return-void
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1857
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToFirstImage()V

    return-void
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I
    .locals 1
    .parameter

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getPanoramaRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I
    .locals 1
    .parameter

    .prologue
    .line 651
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getCameraRotation()I

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCancelExtraScalingPending:Z

    return-void
.end method

.method static synthetic access$20(III)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1075
    invoke-static {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getRotated(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mWantPictureCenterCallbacks:Z

    return v0
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$23(III)F
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1973
    invoke-static {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->calculateMoveOutProgress(III)F

    move-result v0

    return v0
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2020
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getScrollScale(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$25(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2013
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getScrollAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$26(FFF)F
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2047
    invoke-static {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$27(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;F)F
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2053
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getOffsetAlpha(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$28(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$29(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1051
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawBodder(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1695
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchFocus()V

    return-void
.end method

.method static synthetic access$30(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1061
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawVideoPlayIcon(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;I)V

    return-void
.end method

.method static synthetic access$31(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1069
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawLoadingFailMessage(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V

    return-void
.end method

.method static synthetic access$32(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1056
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->drawPlaceHolder(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$33(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1737
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToHitPicture(II)V

    return-void
.end method

.method static synthetic access$34(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFullScreenCamera:Z

    return v0
.end method

.method static synthetic access$35(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I
    .locals 1
    .parameter

    .prologue
    .line 246
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I

    return v0
.end method

.method static synthetic access$36(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 249
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxDeletable:Z

    return v0
.end method

.method static synthetic access$37(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1764
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->swipeImages(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$38(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$39(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 246
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I

    return-void
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1949
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->captureAnimationDone(I)V

    return-void
.end method

.method static synthetic access$40(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoIndexHint:I

    return-void
.end method

.method static synthetic access$41(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCancelExtraScalingPending:Z

    return v0
.end method

.method static synthetic access$42(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxDeletable:Z

    return-void
.end method

.method static synthetic access$43(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I
    .locals 1
    .parameter

    .prologue
    .line 1562
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I

    return v0
.end method

.method static synthetic access$44(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;
    .locals 1
    .parameter

    .prologue
    .line 211
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    return-object v0
.end method

.method static synthetic access$45(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Z
    .locals 1
    .parameter

    .prologue
    .line 1798
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$46(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)V
    .locals 0
    .parameter

    .prologue
    .line 1583
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->hideUndoBar()V

    return-void
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;
    .locals 1
    .parameter

    .prologue
    .line 206
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;
    .locals 1
    .parameter

    .prologue
    .line 216
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I
    .locals 1
    .parameter

    .prologue
    .line 233
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I

    return v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)I
    .locals 1
    .parameter

    .prologue
    .line 232
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I

    return v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;
    .locals 1
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    return-object v0
.end method

.method private static calculateMoveOutProgress(III)F
    .locals 4
    .parameter "left"
    .parameter "right"
    .parameter "viewWidth"

    .prologue
    .line 1977
    sub-int v0, p1, p0

    .line 1984
    .local v0, w:I
    if-ge v0, p2, :cond_1

    .line 1985
    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v3, v0, 0x2

    sub-int v1, v2, v3

    .line 1986
    .local v1, zx:I
    if-le p0, v1, :cond_0

    .line 1987
    sub-int v2, p0, v1

    neg-int v2, v2

    int-to-float v2, v2

    sub-int v3, p2, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2008
    .end local v1           #zx:I
    :goto_0
    return v2

    .line 1990
    .restart local v1       #zx:I
    :cond_0
    sub-int v2, p0, v1

    int-to-float v2, v2

    neg-int v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_0

    .line 2000
    .end local v1           #zx:I
    :cond_1
    if-lez p0, :cond_2

    .line 2001
    neg-int v2, p0

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 2004
    :cond_2
    if-ge p1, p2, :cond_3

    .line 2005
    sub-int v2, p2, p1

    int-to-float v2, v2

    int-to-float v3, p2

    div-float/2addr v2, v3

    goto :goto_0

    .line 2008
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private captureAnimationDone(I)V
    .locals 2
    .parameter "offset"

    .prologue
    const/4 v1, 0x1

    .line 1951
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    .line 1952
    if-ne p1, v1, :cond_0

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1955
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onActionBarWanted()V

    .line 1957
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->snapback()V

    .line 1958
    return-void
.end method

.method private checkFocusSwitching()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 1681
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_1

    .line 1692
    :cond_0
    :goto_0
    return-void

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1686
    const-string v0, "PhotoView"

    const-string v1, "checkFocusSwitching, MSG_SWITCH_TO_NEXT ongoing, skip switchPosition"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1689
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private checkHideUndoBar(I)V
    .locals 7
    .parameter "addition"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1603
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    or-int/2addr v6, p1

    iput v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    .line 1604
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_1

    .line 1613
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v4

    .line 1607
    .local v2, timeout:Z
    :goto_1
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    move v3, v4

    .line 1608
    .local v3, touched:Z
    :goto_2
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_6

    move v1, v4

    .line 1609
    .local v1, fullCamera:Z
    :goto_3
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v0, v4

    .line 1610
    .local v0, deleteLast:Z
    :goto_4
    if-eqz v2, :cond_2

    if-nez v0, :cond_3

    :cond_2
    if-nez v1, :cond_3

    if-eqz v3, :cond_0

    .line 1611
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->hideUndoBar()V

    goto :goto_0

    .end local v0           #deleteLast:Z
    .end local v1           #fullCamera:Z
    .end local v2           #timeout:Z
    .end local v3           #touched:Z
    :cond_4
    move v2, v5

    .line 1606
    goto :goto_1

    .restart local v2       #timeout:Z
    :cond_5
    move v3, v5

    .line 1607
    goto :goto_2

    .restart local v3       #touched:Z
    :cond_6
    move v1, v5

    .line 1608
    goto :goto_3

    .restart local v1       #fullCamera:Z
    :cond_7
    move v0, v5

    .line 1609
    goto :goto_4
.end method

.method private compensateUndoBarView(II)V
    .locals 10
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 574
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/pantech/app/vegacamera/R$dimen;->photopage_undo_bar_offset:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v6, v7

    .line 576
    .local v6, undoBarOffset:I
    const/4 v4, 0x0

    .local v4, compensatedTop:I
    const/4 v1, 0x0

    .local v1, compensatedBottom:I
    const/4 v2, 0x0

    .local v2, compensatedLeft:I
    const/4 v3, 0x0

    .line 577
    .local v3, compensatedRight:I
    const/4 v0, 0x0

    .local v0, bottomOffset:I
    const/4 v5, 0x0

    .line 579
    .local v5, rightOffset:I
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    const/16 v8, 0xb4

    if-ne v7, v8, :cond_0

    .line 580
    move v5, v6

    .line 584
    :goto_0
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    const/16 v8, 0x10e

    if-ne v7, v8, :cond_1

    .line 585
    move v0, v6

    .line 589
    :goto_1
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->orientationChanged(I)V

    .line 590
    sub-int v1, p2, v0

    .line 591
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    invoke-virtual {v7}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->getMeasuredHeight()I

    move-result v7

    sub-int v4, v1, v7

    .line 592
    rsub-int/lit8 v2, v5, 0x0

    .line 593
    sub-int v3, p1, v5

    .line 594
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    invoke-virtual {v7, v2, v4, v3, v1}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->layout(IIII)V

    .line 595
    const-string v7, "PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "onLayout layout top:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , bottom:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , Left:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 596
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , Right:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 595
    invoke-static {v7, v8}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    return-void

    .line 582
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 587
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawBodder(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 1052
    iget v0, p2, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, -0xa

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/lit8 v0, v0, 0x14

    int-to-float v4, v0

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFrameFocusedColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->fillRect(FFFFI)V

    .line 1053
    return-void
.end method

.method private drawLoadingFailMessage(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 1073
    return-void
.end method

.method private drawPlaceHolder(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V
    .locals 6
    .parameter "canvas"
    .parameter "r"

    .prologue
    .line 1057
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPlaceholderColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->fillRect(FFFFI)V

    .line 1058
    return-void
.end method

.method private drawVideoPlayIcon(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;I)V
    .locals 6
    .parameter "canvas"
    .parameter "side"

    .prologue
    .line 1063
    div-int/lit8 v4, p2, 0x6

    .line 1065
    .local v4, s:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mVideoPlayIcon:Lcom/pantech/app/vegacamera/bridge/glui/Texture;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v4

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/Texture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 1066
    return-void
.end method

.method private static gapToSide(II)I
    .locals 2
    .parameter "imageWidth"
    .parameter "viewWidth"

    .prologue
    .line 1836
    const/4 v0, 0x0

    sub-int v1, p1, p0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getCameraRotation()I
    .locals 2

    .prologue
    .line 652
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mDisplayRotation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    return v0
.end method

.method private getOffsetAlpha(F)F
    .locals 3
    .parameter "offset"

    .prologue
    const/high16 v2, 0x3f80

    .line 2054
    const/high16 v1, 0x3f00

    div-float/2addr p1, v1

    .line 2055
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    sub-float v0, v2, p1

    .line 2056
    .local v0, alpha:F
    :goto_0
    const v1, 0x3cf5c28f

    invoke-static {v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(FFF)F

    move-result v1

    return v1

    .line 2055
    .end local v0           #alpha:F
    :cond_0
    add-float v0, v2, p1

    goto :goto_0
.end method

.method private getPanoramaRotation()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 656
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v2, v5, Landroid/content/res/Configuration;->orientation:I

    .line 657
    .local v2, orientation:I
    if-ne v2, v3, :cond_1

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_0

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_1

    :cond_0
    move v1, v3

    .line 658
    .local v1, invertPortrait:Z
    :goto_0
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mDisplayRotation:I

    const/16 v6, 0xb4

    if-lt v5, v6, :cond_2

    move v0, v3

    .line 659
    .local v0, invert:Z
    :goto_1
    if-eq v0, v1, :cond_3

    .line 660
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    add-int/lit16 v3, v3, 0xb4

    rem-int/lit16 v3, v3, 0x168

    .line 662
    :goto_2
    return v3

    .end local v0           #invert:Z
    .end local v1           #invertPortrait:Z
    :cond_1
    move v1, v4

    .line 657
    goto :goto_0

    .restart local v1       #invertPortrait:Z
    :cond_2
    move v0, v4

    .line 658
    goto :goto_1

    .line 662
    .restart local v0       #invert:Z
    :cond_3
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    goto :goto_2
.end method

.method private static getRotated(III)I
    .locals 1
    .parameter "degree"
    .parameter "original"
    .parameter "theother"

    .prologue
    .line 1076
    rem-int/lit16 v0, p0, 0xb4

    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p2

    goto :goto_0
.end method

.method private getScrollAlpha(F)F
    .locals 3
    .parameter "scrollProgress"

    .prologue
    const/high16 v0, 0x3f80

    .line 2015
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mAlphaInterpolator:Landroid/view/animation/AccelerateInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/animation/AccelerateInterpolator;->getInterpolation(F)F

    move-result v0

    :cond_0
    return v0
.end method

.method private getScrollScale(F)F
    .locals 4
    .parameter "scrollProgress"

    .prologue
    .line 2022
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mScaleInterpolator:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ZInterpolator;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$ZInterpolator;->getInterpolation(F)F

    move-result v0

    .line 2023
    .local v0, interpolatedProgress:F
    const/high16 v2, 0x3f80

    sub-float/2addr v2, v0

    sget v3, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->TRANSITION_SCALE_FACTOR:F

    mul-float/2addr v3, v0

    add-float v1, v2, v3

    .line 2024
    .local v1, scale:F
    return v1
.end method

.method private hideUndoBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1585
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 1586
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onCommitDeleteImage()V

    .line 1587
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->animateVisibility(I)V

    .line 1588
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    .line 1589
    const v0, 0x7fffffff

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoIndexHint:I

    .line 1590
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1591
    return-void
.end method

.method private static interpolate(FFF)F
    .locals 1
    .parameter "ratio"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2048
    sub-float v0, p2, p1

    mul-float/2addr v0, p0

    mul-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private setPictureSize(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 527
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    .line 528
    .local v0, p:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->getSize()Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    move-result-object v3

    if-nez p1, :cond_0

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    :goto_0
    invoke-virtual {v2, p1, v3, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setImageSize(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;Landroid/graphics/Rect;)V

    .line 529
    return-void

    .line 528
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showUndoBar(Z)V
    .locals 5
    .parameter "deleteLast"

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 1573
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    invoke-virtual {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 1574
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    .line 1575
    if-eqz p1, :cond_0

    .line 1576
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    .line 1577
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->animateVisibility(I)V

    .line 1578
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v4, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1579
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    if-eqz v0, :cond_1

    .line 1580
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onUndoBarVisibilityChanged(Z)V

    .line 1581
    :cond_1
    return-void
.end method

.method private slideToNextPicture()Z
    .locals 1

    .prologue
    .line 1820
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I

    if-gtz v0, :cond_0

    .line 1821
    const/4 v0, 0x0

    .line 1824
    :goto_0
    return v0

    .line 1822
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToNextImage()V

    .line 1823
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startHorizontalSlide()V

    .line 1824
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private slideToPrevPicture()Z
    .locals 1

    .prologue
    .line 1828
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I

    if-ltz v0, :cond_0

    .line 1829
    const/4 v0, 0x0

    .line 1832
    :goto_0
    return v0

    .line 1830
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToPrevImage()V

    .line 1831
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startHorizontalSlide()V

    .line 1832
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private snapToNeighborImage()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 1799
    const-string v5, "PhotoView"

    const-string v6, "snapToNeighborImage"

    invoke-static {v5, v6}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1800
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-eqz v5, :cond_1

    .line 1816
    :cond_0
    :goto_0
    return v4

    .line 1804
    :cond_1
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v5, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1805
    .local v1, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getWidth()I

    move-result v3

    .line 1806
    .local v3, viewW:I
    div-int/lit8 v0, v3, 0x5

    .line 1807
    .local v0, moveThreshold:I
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-static {v5, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->gapToSide(II)I

    move-result v5

    add-int v2, v0, v5

    .line 1810
    .local v2, threshold:I
    iget v5, v1, Landroid/graphics/Rect;->right:I

    sub-int v5, v3, v5

    if-le v5, v2, :cond_2

    .line 1811
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->slideToNextPicture()Z

    move-result v4

    goto :goto_0

    .line 1812
    :cond_2
    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v5, v2, :cond_0

    .line 1813
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->slideToPrevPicture()Z

    move-result v4

    goto :goto_0
.end method

.method private snapback()V
    .locals 1

    .prologue
    .line 1791
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, -0x5

    if-eqz v0, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1793
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->snapToNeighborImage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1794
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->snapback()V

    goto :goto_0
.end method

.method private swipeImages(FF)Z
    .locals 6
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v3, 0x0

    .line 1765
    const-string v4, "PhotoView"

    const-string v5, "swipeImages"

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    iget-boolean v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-eqz v4, :cond_1

    .line 1786
    :cond_0
    :goto_0
    return v3

    .line 1771
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    .line 1772
    .local v0, controller:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 1773
    .local v2, isMinimal:Z
    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getImageAtEdges()I

    move-result v1

    .line 1774
    .local v1, edges:I
    if-nez v2, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1775
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_0

    and-int/lit8 v4, v1, 0x8

    if-eqz v4, :cond_0

    .line 1780
    :cond_2
    const/high16 v4, -0x3c6a

    cmpg-float v4, p1, v4

    if-gez v4, :cond_4

    if-nez v2, :cond_3

    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_4

    .line 1781
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->slideToNextPicture()Z

    move-result v3

    goto :goto_0

    .line 1782
    :cond_4
    const/high16 v4, 0x4396

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    if-nez v2, :cond_5

    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_0

    .line 1783
    :cond_5
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->slideToPrevPicture()Z

    move-result v3

    goto :goto_0
.end method

.method private switchFocus()V
    .locals 2

    .prologue
    .line 1696
    const-string v0, "PhotoView"

    const-string v1, "switchFocus"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    if-eqz v0, :cond_0

    .line 1707
    :goto_0
    return-void

    .line 1699
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1701
    :pswitch_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToPrevImage()V

    goto :goto_0

    .line 1704
    :pswitch_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToNextImage()V

    goto :goto_0

    .line 1699
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private switchPosition()I
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v7, -0x1

    .line 1713
    iget-object v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v10, v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1714
    .local v1, curr:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getWidth()I

    move-result v10

    div-int/lit8 v0, v10, 0x2

    .line 1716
    .local v0, center:I
    iget v10, v1, Landroid/graphics/Rect;->left:I

    if-le v10, v0, :cond_0

    iget v10, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I

    if-gez v10, :cond_0

    .line 1717
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v8, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1718
    .local v5, prev:Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int v2, v8, v0

    .line 1719
    .local v2, currDist:I
    iget v8, v5, Landroid/graphics/Rect;->right:I

    sub-int v6, v0, v8

    .line 1720
    .local v6, prevDist:I
    if-ge v6, v2, :cond_1

    .line 1732
    .end local v2           #currDist:I
    .end local v5           #prev:Landroid/graphics/Rect;
    .end local v6           #prevDist:I
    :goto_0
    return v7

    .line 1723
    :cond_0
    iget v7, v1, Landroid/graphics/Rect;->right:I

    if-ge v7, v0, :cond_1

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I

    if-lez v7, :cond_1

    .line 1724
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 1725
    .local v3, next:Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int v2, v0, v7

    .line 1726
    .restart local v2       #currDist:I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int v4, v7, v0

    .line 1727
    .local v4, nextDist:I
    if-ge v4, v2, :cond_1

    move v7, v8

    .line 1728
    goto :goto_0

    .end local v2           #currDist:I
    .end local v3           #next:Landroid/graphics/Rect;
    .end local v4           #nextDist:I
    :cond_1
    move v7, v9

    .line 1732
    goto :goto_0
.end method

.method private switchToFirstImage()V
    .locals 3

    .prologue
    .line 1858
    const-string v0, "PhotoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PhotoView] switchToFirstImage , mModel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1859
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    if-nez v0, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1861
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->moveTo(I)V

    goto :goto_0
.end method

.method private switchToHitPicture(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1738
    const-string v1, "PhotoView"

    const-string v2, "switchToHitPicture"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_1

    .line 1740
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1741
    .local v0, r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    if-lt v1, p1, :cond_1

    .line 1742
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->slideToPrevPicture()Z

    .line 1754
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 1747
    :cond_1
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I

    if-lez v1, :cond_0

    .line 1748
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1749
    .restart local v0       #r:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-gt v1, p1, :cond_0

    .line 1750
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->slideToNextPicture()Z

    goto :goto_0
.end method

.method private switchToNextImage()V
    .locals 2

    .prologue
    .line 1848
    const-string v0, "PhotoView"

    const-string v1, "[PhotoView] switchToNextImage"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->moveTo(I)V

    .line 1850
    return-void
.end method

.method private switchToPrevImage()V
    .locals 2

    .prologue
    .line 1853
    const-string v0, "PhotoView"

    const-string v1, "[PhotoView] switchToPrevImage"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1854
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->moveTo(I)V

    .line 1855
    return-void
.end method

.method private switchWithCaptureAnimationLocked(I)Z
    .locals 6
    .parameter "offset"

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1906
    const-string v3, "PhotoView"

    const-string v4, "[PhotoView] switchWithCaptureAnimationLocked"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    if-eqz v3, :cond_0

    .line 1946
    :goto_0
    return v1

    .line 1910
    :cond_0
    if-ne p1, v1, :cond_3

    .line 1911
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I

    if-gtz v3, :cond_1

    move v1, v2

    .line 1912
    goto :goto_0

    .line 1915
    :cond_1
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-nez v3, :cond_2

    .line 1916
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v3, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1918
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToNextImage()V

    .line 1919
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v3, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startCaptureAnimationSlide(I)V

    .line 1943
    :goto_1
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    .line 1944
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/4 v4, 0x4

    invoke-virtual {v3, v4, p1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1945
    .local v0, m:Landroid/os/Message;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1920
    .end local v0           #m:Landroid/os/Message;
    :cond_3
    if-ne p1, v5, :cond_7

    .line 1921
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I

    if-ltz v3, :cond_4

    move v1, v2

    .line 1922
    goto :goto_0

    .line 1924
    :cond_4
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-eqz v3, :cond_5

    .line 1925
    const-string v3, "PhotoView"

    const-string v4, "switchWithCaptureAnimationLocked setFilmMode false"

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 1932
    :cond_5
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-interface {v3}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getCurrentIndex()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_6

    .line 1933
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToFirstImage()V

    .line 1934
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 1938
    :cond_6
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchToFirstImage()V

    .line 1939
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v3, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startCaptureAnimationSlide(I)V

    goto :goto_1

    :cond_7
    move v1, v2

    .line 1941
    goto :goto_0
.end method

.method private updateActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1485
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->isCamera()Z

    move-result v0

    .line 1486
    .local v0, isCamera:Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-nez v1, :cond_1

    .line 1488
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1490
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onActionBarAllowed(Z)V

    .line 1491
    iget-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-eqz v1, :cond_0

    .line 1492
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onActionBarWanted()V

    goto :goto_0
.end method

.method private updateCameraRect()V
    .locals 12

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getWidth()I

    move-result v6

    .line 606
    .local v6, w:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getHeight()I

    move-result v1

    .line 607
    .local v1, h:I
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    rem-int/lit16 v7, v7, 0xb4

    if-eqz v7, :cond_0

    .line 608
    move v5, v6

    .line 609
    .local v5, tmp:I
    move v6, v1

    .line 610
    move v1, v5

    .line 612
    .end local v5           #tmp:I
    :cond_0
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v2, v7, Landroid/graphics/Rect;->left:I

    .line 613
    .local v2, l:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v4, v7, Landroid/graphics/Rect;->top:I

    .line 614
    .local v4, t:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v3, v7, Landroid/graphics/Rect;->right:I

    .line 615
    .local v3, r:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 618
    .local v0, b:I
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    sparse-switch v7, :sswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 620
    :sswitch_0
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v2, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 623
    :sswitch_1
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v1, v0

    sub-int v9, v1, v4

    invoke-virtual {v7, v8, v2, v9, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 626
    :sswitch_2
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v1, v0

    sub-int v10, v6, v2

    sub-int v11, v1, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 629
    :sswitch_3
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    sub-int v8, v6, v3

    sub-int v9, v6, v2

    invoke-virtual {v7, v4, v8, v0, v9}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 618
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public buildFallbackEffect(Lcom/pantech/app/vegacamera/bridge/glui/GLView;Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;
    .locals 17
    .parameter "root"
    .parameter "canvas"

    .prologue
    .line 2073
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 2074
    .local v12, location:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v12}, Lcom/pantech/app/vegacamera/bridge/glui/GLView;->getBoundsOf(Lcom/pantech/app/vegacamera/bridge/glui/GLView;Landroid/graphics/Rect;)Z

    move-result v3

    invoke-static {v3}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->assertTrue(Z)V

    .line 2076
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->bounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2077
    .local v9, fullRect:Landroid/graphics/Rect;
    new-instance v8, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;

    invoke-direct {v8}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;-><init>()V

    .line 2078
    .local v8, effect:Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;
    const/4 v10, -0x3

    .local v10, i:I
    :goto_0
    const/4 v3, 0x3

    if-le v10, v3, :cond_0

    .line 2117
    return-object v8

    .line 2079
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getMediaItem(I)Lcom/pantech/app/vegacamera/bridge/data/MediaItem;

    move-result-object v11

    .line 2080
    .local v11, item:Lcom/pantech/app/vegacamera/bridge/data/MediaItem;
    if-nez v11, :cond_2

    .line 2078
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 2082
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getScreenNail(I)Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;

    move-result-object v2

    .line 2083
    .local v2, sc:Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;
    instance-of v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/bridge/glui/TiledScreenNail;->isShowingPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2087
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getPhotoRect(I)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v13, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2088
    .local v13, rect:Landroid/graphics/Rect;
    invoke-static {v9, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2090
    iget v3, v12, Landroid/graphics/Rect;->left:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 2092
    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getWidth()I

    move-result v6

    .line 2093
    .local v6, width:I
    invoke-interface {v2}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->getHeight()I

    move-result v7

    .line 2095
    .local v7, height:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-interface {v3, v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getImageRotation(I)I

    move-result v14

    .line 2100
    .local v14, rotation:I
    rem-int/lit16 v3, v14, 0xb4

    if-nez v3, :cond_3

    .line 2101
    new-instance v15, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    const/4 v3, 0x1

    invoke-direct {v15, v6, v7, v3}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;-><init>(IIZ)V

    .line 2102
    .local v15, texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->beginRenderTarget(Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V

    .line 2103
    int-to-float v3, v6

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v7

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 2111
    :goto_2
    int-to-float v3, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v16, 0x3f80

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->rotate(FFFF)V

    .line 2112
    neg-int v3, v6

    int-to-float v3, v3

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    neg-int v4, v7

    int-to-float v4, v4

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    .line 2113
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v7}, Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;IIII)V

    .line 2114
    invoke-interface/range {p2 .. p2}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->endRenderTarget()V

    .line 2115
    invoke-virtual {v11}, Lcom/pantech/app/vegacamera/bridge/data/MediaItem;->getPath()Lcom/pantech/app/vegacamera/bridge/data/Path;

    move-result-object v3

    invoke-virtual {v8, v3, v13, v15}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoFallbackEffect;->addEntry(Lcom/pantech/app/vegacamera/bridge/data/Path;Landroid/graphics/Rect;Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V

    goto/16 :goto_1

    .line 2105
    .end local v15           #texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;
    :cond_3
    new-instance v15, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;

    const/4 v3, 0x1

    invoke-direct {v15, v7, v6, v3}, Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;-><init>(IIZ)V

    .line 2106
    .restart local v15       #texture:Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->beginRenderTarget(Lcom/pantech/app/vegacamera/bridge/glui/RawTexture;)V

    .line 2107
    int-to-float v3, v7

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    int-to-float v4, v6

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v4}, Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;->translate(FF)V

    goto :goto_2
.end method

.method public canUndo()Z
    .locals 1

    .prologue
    .line 1624
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBarState:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 330
    const-string v0, "PhotoView"

    const-string v1, "finalize"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 332
    return-void
.end method

.method public getFilmMode()Z
    .locals 1

    .prologue
    .line 1514
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    return v0
.end method

.method public getPhotoRect(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 2068
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isDeleting()Z
    .locals 1

    .prologue
    .line 510
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->hasDeletingBox()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDataChange([III)V
    .locals 12
    .parameter "fromIndex"
    .parameter "prevBound"
    .parameter "nextBound"

    .prologue
    .line 455
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    if-nez v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 458
    :cond_0
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I

    .line 459
    iput p3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I

    .line 462
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 463
    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I

    .line 464
    .local v8, k:I
    const v0, 0x7fffffff

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I

    .line 465
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/4 v0, 0x7

    if-lt v6, v0, :cond_4

    .line 474
    .end local v6           #i:I
    .end local v8           #k:I
    :cond_1
    :goto_2
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoIndexHint:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 475
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoIndexHint:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-interface {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->getCurrentIndex()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 476
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->hideUndoBar()V

    .line 481
    :cond_2
    const/4 v6, -0x3

    .restart local v6       #i:I
    :goto_3
    const/4 v0, 0x3

    if-le v6, v0, :cond_6

    .line 487
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->hasDeletingBox()Z

    move-result v11

    .line 490
    .local v11, wasDeleting:Z
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPrevBound:I

    if-gez v1, :cond_7

    const/4 v2, 0x1

    :goto_4
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mNextBound:I

    if-lez v1, :cond_8

    const/4 v3, 0x1

    :goto_5
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->isCamera(I)Z

    move-result v4

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mSizes:[Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->moveBox([IZZZ[Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V

    .line 492
    const/4 v6, -0x3

    :goto_6
    const/4 v0, 0x3

    if-le v6, v0, :cond_9

    .line 496
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->hasDeletingBox()Z

    move-result v7

    .line 500
    .local v7, isDeleting:Z
    if-eqz v11, :cond_3

    if-nez v7, :cond_3

    .line 501
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 502
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    .line 503
    .local v9, m:Landroid/os/Message;
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v9, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 506
    .end local v9           #m:Landroid/os/Message;
    :cond_3
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->invalidate()V

    goto :goto_0

    .line 466
    .end local v7           #isDeleting:Z
    .end local v11           #wasDeleting:Z
    .restart local v8       #k:I
    :cond_4
    aget v0, p1, v6

    if-ne v0, v8, :cond_5

    .line 467
    add-int/lit8 v0, v6, -0x3

    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTouchBoxIndex:I

    goto :goto_2

    .line 465
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 482
    .end local v8           #k:I
    :cond_6
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v0, v6}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    .line 483
    .local v10, p:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;
    invoke-interface {v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->reload()V

    .line 484
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mSizes:[Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    add-int/lit8 v1, v6, 0x3

    invoke-interface {v10}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->getSize()Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;

    move-result-object v2

    aput-object v2, v0, v1

    .line 481
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 490
    .end local v10           #p:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;
    .restart local v11       #wasDeleting:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    .line 493
    :cond_9
    invoke-direct {p0, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setPictureSize(I)V

    .line 492
    add-int/lit8 v6, v6, 0x1

    goto :goto_6
.end method

.method public notifyImageChange(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 515
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    if-nez v0, :cond_0

    .line 524
    :goto_0
    return-void

    .line 518
    :cond_0
    if-nez p1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onCurrentImageUpdated()V

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->reload()V

    .line 522
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setPictureSize(I)V

    .line 523
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->invalidate()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changeSize"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v9, 0x0

    .line 533
    sub-int v6, p4, p2

    .line 534
    .local v6, w:I
    sub-int v2, p5, p3

    .line 535
    .local v2, h:I
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->layout(IIII)V

    .line 536
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    invoke-virtual {v7, v9, v9, v6, v2}, Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;->layout(IIII)V

    .line 537
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    invoke-virtual {v7, v9, v9}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->measure(II)V

    .line 538
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->getMeasuredHeight()I

    move-result v8

    sub-int v8, v2, v8

    invoke-virtual {v7, v9, v8, v6, v2}, Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;->layout(IIII)V

    .line 540
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v5

    .line 542
    .local v5, root:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;
    if-nez v5, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-interface {v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->getDisplayRotation()I

    move-result v1

    .line 547
    .local v1, displayRotation:I
    invoke-interface {v5}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->getCompensation()I

    move-result v0

    .line 548
    .local v0, compensation:I
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mDisplayRotation:I

    if-ne v7, v1, :cond_2

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    if-eq v7, v0, :cond_3

    .line 549
    :cond_2
    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mDisplayRotation:I

    .line 550
    iput v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCompensation:I

    .line 555
    const/4 v3, -0x3

    .local v3, i:I
    :goto_1
    const/4 v7, 0x3

    if-le v3, v7, :cond_4

    .line 562
    invoke-direct {p0, v6, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->compensateUndoBarView(II)V

    .line 565
    .end local v3           #i:I
    :cond_3
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->updateCameraRect()V

    .line 566
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setConstrainedFrame(Landroid/graphics/Rect;)V

    .line 567
    if-eqz p1, :cond_0

    .line 568
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setViewSize(II)V

    goto :goto_0

    .line 556
    .restart local v3       #i:I
    :cond_4
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v7, v3}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    .line 557
    .local v4, p:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;
    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->isCamera()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 558
    invoke-interface {v4}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->forceSize()V

    .line 555
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1085
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mGestureRecognizer:Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1086
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1523
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showQuickView()V

    .line 1524
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->skipAnimation()V

    .line 1525
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->freeTextures()V

    .line 1526
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1529
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->hideUndoBar()V

    .line 1530
    return-void

    .line 1527
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->setScreenNail(Lcom/pantech/app/vegacamera/bridge/glui/ScreenNail;)V

    .line 1526
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected render(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1635
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v6, v8}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    invoke-interface {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->isCamera()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->isCenter()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1636
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->isAtMinimalScale()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v7

    .line 1637
    .local v0, full:Z
    :goto_0
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFullScreenCamera:Z

    if-eq v0, v6, :cond_0

    .line 1638
    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFullScreenCamera:Z

    .line 1639
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    invoke-interface {v6, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onFullScreenChanged(Z)V

    .line 1640
    if-eqz v0, :cond_0

    .line 1641
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendEmptyMessage(I)Z

    .line 1647
    :cond_0
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFullScreenCamera:Z

    if-eqz v6, :cond_2

    .line 1648
    const/4 v4, 0x0

    .line 1662
    .local v4, neighbors:I
    :goto_1
    move v1, v4

    .local v1, i:I
    :goto_2
    neg-int v6, v4

    if-ge v1, v6, :cond_6

    .line 1667
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mEdgeView:Lcom/pantech/app/vegacamera/bridge/glui/EdgeView;

    invoke-virtual {p0, p1, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->renderChild(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 1668
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mUndoBar:Lcom/pantech/app/vegacamera/bridge/glui/UndoBarView;

    invoke-virtual {p0, p1, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->renderChild(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Lcom/pantech/app/vegacamera/bridge/glui/GLView;)V

    .line 1670
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->advanceAnimation()V

    .line 1671
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->checkFocusSwitching()V

    .line 1672
    return-void

    .end local v0           #full:Z
    .end local v1           #i:I
    .end local v4           #neighbors:I
    :cond_1
    move v0, v8

    .line 1635
    goto :goto_0

    .line 1652
    .restart local v0       #full:Z
    :cond_2
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getFilmRatio()F

    move-result v6

    const/4 v9, 0x0

    cmpl-float v6, v6, v9

    if-nez v6, :cond_3

    move v3, v7

    .line 1653
    .local v3, inPageMode:Z
    :goto_3
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_4

    move v2, v7

    .line 1654
    .local v2, inCaptureAnimation:Z
    :goto_4
    if-eqz v3, :cond_5

    if-nez v2, :cond_5

    .line 1655
    const/4 v4, 0x1

    .line 1656
    .restart local v4       #neighbors:I
    goto :goto_1

    .end local v2           #inCaptureAnimation:Z
    .end local v3           #inPageMode:Z
    .end local v4           #neighbors:I
    :cond_3
    move v3, v8

    .line 1652
    goto :goto_3

    .restart local v3       #inPageMode:Z
    :cond_4
    move v2, v8

    .line 1653
    goto :goto_4

    .line 1657
    .restart local v2       #inCaptureAnimation:Z
    :cond_5
    const/4 v4, 0x3

    .restart local v4       #neighbors:I
    goto :goto_1

    .line 1663
    .end local v2           #inCaptureAnimation:Z
    .end local v3           #inPageMode:Z
    .restart local v1       #i:I
    :cond_6
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v6, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getPosition(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 1664
    .local v5, r:Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPictures:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v6, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;

    invoke-interface {v6, p1, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Picture;->draw(Lcom/pantech/app/vegacamera/bridge/glui/GLCanvas;Landroid/graphics/Rect;)V

    .line 1662
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method public resetToFirstPicture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1542
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->moveTo(I)V

    .line 1543
    invoke-virtual {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 1544
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->returnToPreview()V

    .line 1535
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->prepareTextures()V

    .line 1536
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->skipToFinalPosition()V

    .line 1537
    return-void
.end method

.method public returnToPreview()V
    .locals 4

    .prologue
    .line 1547
    const-string v0, "PhotoView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "removeQuickView showView_MS "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1548
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I

    if-lez v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/16 v1, 0x9

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1551
    :cond_0
    return-void
.end method

.method public setCameraRelativeFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "frame"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mCameraRelativeFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 641
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->updateCameraRect()V

    .line 646
    return-void
.end method

.method public setFilmMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1498
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-ne v0, p1, :cond_0

    .line 1511
    :goto_0
    return-void

    .line 1500
    :cond_0
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    .line 1501
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    invoke-virtual {v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setFilmMode(Z)V

    .line 1502
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->setNeedFullImage(Z)V

    .line 1503
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mFilmMode:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-interface {v3, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->setFocusHintDirection(I)V

    .line 1504
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->updateActionBar()V

    .line 1505
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    if-eqz p1, :cond_3

    :goto_3
    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;->onFilmModeChanged(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1502
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1503
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1505
    goto :goto_3
.end method

.method public setListener(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 2064
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Listener;

    .line 2065
    return-void
.end method

.method public setModel(Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;)V
    .locals 2
    .parameter "model"

    .prologue
    .line 340
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    .line 341
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mTileView:Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/TileImageView;->setModel(Lcom/pantech/app/vegacamera/bridge/glui/TileImageView$Model;)V

    .line 342
    return-void
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "rect"

    .prologue
    .line 1885
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setOpenAnimationRect(Landroid/graphics/Rect;)V

    .line 1886
    return-void
.end method

.method public setSwipingEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mGestureListener:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$MyGestureListener;->setSwipingEnabled(Z)V

    .line 1482
    return-void
.end method

.method public setWantPictureCenterCallbacks(Z)V
    .locals 0
    .parameter "wanted"

    .prologue
    .line 446
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mWantPictureCenterCallbacks:Z

    .line 447
    return-void
.end method

.method public showQuickView()V
    .locals 2

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->removeMessages(I)V

    .line 1555
    return-void
.end method

.method public stopScrolling()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mPositionController:Lcom/pantech/app/vegacamera/bridge/glui/PositionController;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->stopScrolling()V

    .line 336
    return-void
.end method

.method public switchToImage(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    invoke-interface {v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->moveTo(I)V

    .line 1845
    return-void
.end method

.method public switchToQuickView(I)V
    .locals 4
    .parameter "ms"

    .prologue
    const/4 v2, 0x0

    .line 1865
    const-string v0, "PhotoView"

    const-string v1, "[PhotoView] switchToQuickView"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHolding:I

    .line 1867
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mModel:Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Model;->moveTo(I)V

    .line 1868
    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->setFilmMode(Z)V

    .line 1870
    if-lez p1, :cond_0

    .line 1871
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I

    .line 1872
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/16 v1, 0x9

    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->showView_MS:I

    add-int/lit16 v2, v2, 0x1f4

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1874
    :cond_0
    const-string v0, "PhotoView"

    const-string v1, "switchToQuickView setFilmMode false"

    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1876
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->mHandler:Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;

    const/16 v1, 0xb

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1877
    return-void
.end method

.method public switchWithCaptureAnimation(I)Z
    .locals 3
    .parameter "offset"

    .prologue
    .line 1893
    const-string v1, "PhotoView"

    const-string v2, "[PhotoView] switchWithCaptureAnimation"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->getGLRoot()Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;

    move-result-object v0

    .line 1895
    .local v0, root:Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;
    if-nez v0, :cond_0

    .line 1896
    const/4 v1, 0x0

    .line 1899
    :goto_0
    return v1

    .line 1897
    :cond_0
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->lockRenderThread()V

    .line 1899
    :try_start_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView;->switchWithCaptureAnimationLocked(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 1901
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unlockRenderThread()V

    goto :goto_0

    .line 1900
    :catchall_0
    move-exception v1

    .line 1901
    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/GLRoot;->unlockRenderThread()V

    .line 1902
    throw v1
.end method
