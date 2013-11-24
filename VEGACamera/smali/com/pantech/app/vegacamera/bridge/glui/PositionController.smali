.class Lcom/pantech/app/vegacamera/bridge/glui/PositionController;
.super Ljava/lang/Object;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Animatable;,
        Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;,
        Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;,
        Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;,
        Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;,
        Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;
    }
.end annotation


# static fields
.field private static final ANIM_KIND_CAPTURE:I = 0x9

.field private static final ANIM_KIND_DELETE:I = 0x8

.field private static final ANIM_KIND_FLING:I = 0x6

.field private static final ANIM_KIND_FLING_X:I = 0x7

.field private static final ANIM_KIND_NONE:I = -0x1

.field private static final ANIM_KIND_OPENING:I = 0x5

.field private static final ANIM_KIND_SCALE:I = 0x1

.field private static final ANIM_KIND_SCROLL:I = 0x0

.field private static final ANIM_KIND_SLIDE:I = 0x3

.field private static final ANIM_KIND_SNAPBACK:I = 0x2

.field private static final ANIM_KIND_ZOOM:I = 0x4

.field private static final ANIM_TIME:[I = null

.field private static final BOX_MAX:I = 0x3

.field public static final CAPTURE_ANIMATION_TIME:I = 0x2bc

.field private static final CENTER_OUT_INDEX:[I = null

.field private static final DEFAULT_DELETE_ANIMATION_DURATION:I = 0xc8

.field private static final FILM_MODE_LANDSCAPE_HEIGHT:F = 0.7f

.field private static final FILM_MODE_LANDSCAPE_WIDTH:F = 0.7f

.field private static final FILM_MODE_PORTRAIT_HEIGHT:F = 0.48f

.field private static final FILM_MODE_PORTRAIT_WIDTH:F = 0.7f

.field public static final IMAGE_AT_BOTTOM_EDGE:I = 0x8

.field public static final IMAGE_AT_LEFT_EDGE:I = 0x1

.field public static final IMAGE_AT_RIGHT_EDGE:I = 0x2

.field public static final IMAGE_AT_TOP_EDGE:I = 0x4

.field private static final LAST_ANIMATION:J = -0x2L

.field private static final MAX_DELETE_ANIMATION_DURATION:I = 0x190

.field private static final NO_ANIMATION:J = -0x1L

.field private static final SCALE_LIMIT:F = 4.0f

.field private static final SCALE_MAX_EXTRA:F = 1.4f

.field private static final SCALE_MIN_EXTRA:F = 0.7f

.field public static final SNAPBACK_ANIMATION_TIME:I = 0x258

.field private static final TAG:Ljava/lang/String; = "PositionController"


# instance fields
.field private HORIZONTAL_SLACK:I

.field private IMAGE_GAP:I

.field private mBoundBottom:I

.field private mBoundLeft:I

.field private mBoundRight:I

.field private mBoundTop:I

.field private mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/RangeArray",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mConstrained:Z

.field private mConstrainedFrame:Landroid/graphics/Rect;

.field private mExtraScalingRange:Z

.field private mFilmMode:Z

.field private mFilmRatio:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;

.field private mFilmScroller:Landroid/widget/Scroller;

.field private mFocusX:F

.field private mFocusY:F

.field private mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/RangeArray",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mHasNext:Z

.field private mHasPrev:Z

.field private mInScale:Z

.field private mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

.field private volatile mOpenAnimationRect:Landroid/graphics/Rect;

.field private mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

.field private mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

.field mPopFromTop:Z

.field private mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/RangeArray",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mTempBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/RangeArray",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mTempGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pantech/app/vegacamera/bridge/util/RangeArray",
            "<",
            "Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;",
            ">;"
        }
    .end annotation
.end field

.field private mViewH:I

.field private mViewW:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x12c

    .line 63
    const/16 v2, 0xa

    new-array v2, v2, [I

    const/4 v3, 0x2

    .line 65
    const/16 v4, 0x258

    aput v4, v2, v3

    const/4 v3, 0x3

    .line 66
    const/16 v4, 0x190

    aput v4, v2, v3

    const/4 v3, 0x4

    .line 67
    aput v5, v2, v3

    const/4 v3, 0x5

    .line 68
    aput v5, v2, v3

    const/16 v3, 0x9

    .line 72
    const/16 v4, 0x2bc

    aput v4, v2, v3

    .line 63
    sput-object v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->ANIM_TIME:[I

    .line 100
    const/4 v2, 0x7

    new-array v2, v2, [I

    sput-object v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->CENTER_OUT_INDEX:[I

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->CENTER_OUT_INDEX:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 211
    return-void

    .line 206
    :cond_0
    add-int/lit8 v2, v0, 0x1

    div-int/lit8 v1, v2, 0x2

    .line 207
    .local v1, j:I
    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1

    .line 208
    neg-int v1, v1

    .line 209
    :cond_1
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->CENTER_OUT_INDEX:[I

    aput v1, v2, v0

    .line 205
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;)V
    .locals 7
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, -0x3

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mExtraScalingRange:Z

    .line 89
    iput-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    .line 102
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->IMAGE_GAP:I

    .line 103
    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->HORIZONTAL_SLACK:I

    .line 113
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    .line 114
    const/16 v1, 0x4b0

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrained:Z

    .line 168
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    invoke-direct {v1, p0, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    .line 169
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-direct {v1, v2, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    .line 172
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    .line 173
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;

    invoke-direct {v1, p0, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmRatio:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;

    .line 176
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-direct {v1, v2, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    .line 177
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-direct {v1, v2, v6}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    .line 180
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-direct {v1, v2, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;-><init>(II)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->photopage_box_image_gap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->IMAGE_GAP:I

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$dimen;->photopage_box_horizontal_slack:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->HORIZONTAL_SLACK:I

    .line 217
    iput-object p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    .line 218
    new-instance v1, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    invoke-direct {v1}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    .line 219
    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, p1, v5, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    .line 222
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->initPlatform()V

    .line 223
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-le v0, v4, :cond_0

    .line 228
    const/4 v0, -0x3

    :goto_1
    if-lt v0, v4, :cond_1

    .line 232
    return-void

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    invoke-direct {v2, p0, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)V

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->initBox(I)V

    .line 226
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    new-instance v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    invoke-direct {v2, p0, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;-><init>(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;)V

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 230
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->initGap(I)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;
    .locals 1
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z
    .locals 1
    .parameter

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mInScale:Z

    return v0
.end method

.method static synthetic access$10(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I

    return v0
.end method

.method static synthetic access$11(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z
    .locals 1
    .parameter

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrained:Z

    return v0
.end method

.method static synthetic access$12(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I
    .locals 1
    .parameter

    .prologue
    .line 113
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    return v0
.end method

.method static synthetic access$14(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I
    .locals 1
    .parameter

    .prologue
    .line 114
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    return v0
.end method

.method static synthetic access$15()[I
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->ANIM_TIME:[I

    return-object v0
.end method

.method static synthetic access$16(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Landroid/widget/Scroller;
    .locals 1
    .parameter

    .prologue
    .line 129
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$17(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasNext:Z

    return v0
.end method

.method static synthetic access$18(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasPrev:Z

    return v0
.end method

.method static synthetic access$19(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Lcom/pantech/app/vegacamera/bridge/util/RangeArray;
    .locals 1
    .parameter

    .prologue
    .line 169
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    return-object v0
.end method

.method static synthetic access$20(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1364
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(F)V

    return-void
.end method

.method static synthetic access$21(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;F)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1368
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)F
    .locals 1
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusY:F

    return v0
.end method

.method static synthetic access$23(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    return v0
.end method

.method static synthetic access$24(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    return v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mExtraScalingRange:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)Z
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    return v0
.end method

.method static synthetic access$5(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I
    .locals 1
    .parameter

    .prologue
    .line 103
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->HORIZONTAL_SLACK:I

    return v0
.end method

.method static synthetic access$6(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;FI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1339
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(FI)V

    return-void
.end method

.method static synthetic access$7(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;F)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1372
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)F
    .locals 1
    .parameter

    .prologue
    .line 120
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusX:F

    return v0
.end method

.method static synthetic access$9(Lcom/pantech/app/vegacamera/bridge/glui/PositionController;)I
    .locals 1
    .parameter

    .prologue
    .line 133
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I

    return v0
.end method

.method private calculateStableBound(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 1365
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(FI)V

    .line 1366
    return-void
.end method

.method private calculateStableBound(FI)V
    .locals 6
    .parameter "scale"
    .parameter "horizontalSlack"

    .prologue
    const/4 v5, 0x0

    .line 1340
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v5}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1343
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    invoke-direct {p0, v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;F)I

    move-result v2

    .line 1344
    .local v2, w:I
    invoke-direct {p0, v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;F)I

    move-result v1

    .line 1347
    .local v1, h:I
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v3, p2

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I

    .line 1348
    div-int/lit8 v3, v2, 0x2

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    add-int/2addr v3, p2

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I

    .line 1349
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x1

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    .line 1350
    div-int/lit8 v3, v1, 0x2

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    .line 1354
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1355
    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    iput v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    .line 1359
    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1360
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v3, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I

    .line 1362
    :cond_1
    return-void
.end method

.method private canScroll()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 581
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 582
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-wide v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 590
    :goto_0
    :sswitch_0
    return v1

    .line 584
    :cond_0
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    move v1, v2

    .line 590
    goto :goto_0

    .line 584
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method private convertBoxToRect(I)V
    .locals 10
    .parameter "i"

    .prologue
    .line 907
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 908
    .local v1, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 909
    .local v4, r:Landroid/graphics/Rect;
    iget v8, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iget-object v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v9, v9, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentY:I

    add-int/2addr v8, v9

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    div-int/lit8 v9, v9, 0x2

    add-int v7, v8, v9

    .line 910
    .local v7, y:I
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v5

    .line 911
    .local v5, w:I
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v3

    .line 912
    .local v3, h:I
    if-nez p1, :cond_0

    .line 913
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v8, v8, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget v9, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .line 914
    .local v6, x:I
    div-int/lit8 v8, v5, 0x2

    sub-int v8, v6, v8

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 915
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 927
    .end local v6           #x:I
    :goto_0
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v7, v8

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 928
    iget v8, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v3

    iput v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 929
    return-void

    .line 916
    :cond_0
    if-lez p1, :cond_1

    .line 917
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 918
    .local v0, a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 919
    .local v2, g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mCurrentGap:I

    add-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 920
    iget v8, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 922
    .end local v0           #a:Landroid/graphics/Rect;
    .end local v2           #g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    :cond_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    add-int/lit8 v9, p1, 0x1

    invoke-virtual {v8, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 923
    .restart local v0       #a:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v8, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 924
    .restart local v2       #g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    iget v8, v0, Landroid/graphics/Rect;->left:I

    iget v9, v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mCurrentGap:I

    sub-int/2addr v8, v9

    iput v8, v4, Landroid/graphics/Rect;->right:I

    .line 925
    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v5

    iput v8, v4, Landroid/graphics/Rect;->left:I

    goto :goto_0
.end method

.method private debugMoveBox([I)V
    .locals 5
    .parameter "fromIndex"

    .prologue
    .line 998
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveBox:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    .line 1008
    const-string v3, "PositionController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    return-void

    .line 1000
    :cond_0
    aget v1, p1, v0

    .line 1001
    .local v1, j:I
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1

    .line 1002
    const-string v3, " N"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1004
    :cond_1
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1005
    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private dumpRect(I)V
    .locals 4
    .parameter "i"

    .prologue
    .line 891
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 892
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 893
    .local v0, r:Landroid/graphics/Rect;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Rect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 894
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 896
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 897
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 898
    const-string v2, ") ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 902
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    const-string v2, "PositionController"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    return-void
.end method

.method private dumpState()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 873
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-lt v0, v5, :cond_0

    .line 877
    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x7

    if-lt v0, v2, :cond_1

    .line 881
    const/4 v0, -0x3

    :goto_2
    if-le v0, v5, :cond_2

    .line 888
    return-void

    .line 874
    :cond_0
    const-string v3, "PositionController"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Gap "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    iget v2, v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mCurrentGap:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 878
    :cond_1
    sget-object v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->CENTER_OUT_INDEX:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->dumpRect(I)V

    .line 877
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 882
    :cond_2
    add-int/lit8 v1, v0, 0x1

    .local v1, j:I
    :goto_3
    if-le v1, v5, :cond_3

    .line 881
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 883
    :cond_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v2, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-static {v2, v3}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 884
    const-string v2, "PositionController"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "rect "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and rect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "intersects!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method private gapToSide(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I
    .locals 3
    .parameter "b"

    .prologue
    .line 437
    iget v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    int-to-float v0, v0

    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMinimalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v1

    iget v2, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getDefaultGapSize(I)I
    .locals 5
    .parameter "i"

    .prologue
    .line 417
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    if-eqz v2, :cond_0

    .line 418
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->IMAGE_GAP:I

    .line 421
    :goto_0
    return v2

    .line 419
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 420
    .local v0, a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 421
    .local v1, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->IMAGE_GAP:I

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->gapToSide(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v3

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->gapToSide(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method private getMaximalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F
    .locals 1
    .parameter "b"

    .prologue
    .line 1311
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_0

    .line 1312
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMinimalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v0

    .line 1315
    :goto_0
    return v0

    .line 1313
    :cond_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrained:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1314
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMinimalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v0

    goto :goto_0

    .line 1315
    :cond_1
    const/high16 v0, 0x4080

    goto :goto_0
.end method

.method private getMinimalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F
    .locals 8
    .parameter "b"

    .prologue
    .line 1284
    const/high16 v4, 0x3f80

    .line 1285
    .local v4, wFactor:F
    const/high16 v0, 0x3f80

    .line 1288
    .local v0, hFactor:F
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrained:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 1289
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1290
    .local v3, viewW:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1296
    .local v2, viewH:I
    :goto_0
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    if-eqz v5, :cond_0

    .line 1297
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    if-le v5, v6, :cond_2

    .line 1298
    const v4, 0x3f333333

    .line 1299
    const v0, 0x3ef5c28f

    .line 1306
    :cond_0
    :goto_1
    int-to-float v5, v3

    mul-float/2addr v5, v4

    iget v6, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    int-to-float v6, v2

    mul-float/2addr v6, v0

    iget v7, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 1307
    .local v1, s:F
    const/high16 v5, 0x4080

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    return v5

    .line 1292
    .end local v1           #s:F
    .end local v2           #viewH:I
    .end local v3           #viewW:I
    :cond_1
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    .line 1293
    .restart local v3       #viewW:I
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    .restart local v2       #viewH:I
    goto :goto_0

    .line 1301
    :cond_2
    const v4, 0x3f333333

    .line 1302
    const v0, 0x3f333333

    goto :goto_1
.end method

.method private getTargetScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F
    .locals 4
    .parameter "b"

    .prologue
    .line 1377
    iget-wide v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToScale:F

    goto :goto_0
.end method

.method private heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 846
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    iget v1, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 856
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private initBox(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 950
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 951
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    .line 952
    iget v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    .line 953
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mUseViewSize:Z

    .line 954
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMinimalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    .line 955
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMaximalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    .line 956
    const/4 v1, 0x0

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 957
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    .line 958
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    .line 959
    const/4 v1, -0x1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    .line 960
    return-void
.end method

.method private initBox(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    const/4 v2, 0x0

    .line 964
    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 965
    :cond_0
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->initBox(I)V

    .line 978
    :goto_0
    return-void

    .line 968
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 969
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    .line 970
    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    .line 971
    iput-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mUseViewSize:Z

    .line 972
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMinimalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    .line 973
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMaximalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    .line 974
    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 975
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    .line 976
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    .line 977
    const/4 v1, -0x1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    goto :goto_0
.end method

.method private initGap(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 983
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 984
    .local v0, g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mDefaultSize:I

    .line 985
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mDefaultSize:I

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mCurrentGap:I

    .line 986
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mAnimationStartTime:J

    .line 987
    return-void
.end method

.method private initGap(II)V
    .locals 3
    .parameter "index"
    .parameter "size"

    .prologue
    .line 990
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 991
    .local v0, g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getDefaultGapSize(I)I

    move-result v1

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mDefaultSize:I

    .line 992
    iput p2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mCurrentGap:I

    .line 993
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mAnimationStartTime:J

    .line 994
    return-void
.end method

.method private initPlatform()V
    .locals 3

    .prologue
    .line 942
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->updateDefaultXY()V

    .line 943
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v1, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 944
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v1, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultY:I

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentY:I

    .line 945
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationStartTime:J

    .line 946
    return-void
.end method

.method private static isAlmostEqual(FF)Z
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 1319
    sub-float v0, p0, p1

    .line 1320
    .local v0, diff:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    neg-float v0, v0

    .end local v0           #diff:F
    :cond_0
    const v1, 0x3ca3d70a

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private layoutAndSetPosition()V
    .locals 2

    .prologue
    .line 865
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 869
    return-void

    .line 866
    :cond_0
    sget-object v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->convertBoxToRect(I)V

    .line 865
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private redraw()V
    .locals 1

    .prologue
    .line 791
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->layoutAndSetPosition()V

    .line 792
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->invalidate()V

    .line 793
    return-void
.end method

.method private setBoxSize(IIIZ)Z
    .locals 5
    .parameter "i"
    .parameter "width"
    .parameter "height"
    .parameter "isViewSize"

    .prologue
    const/4 v3, 0x0

    .line 306
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v4, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 307
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-boolean v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mUseViewSize:Z

    .line 310
    .local v2, wasViewSize:Z
    if-nez v2, :cond_1

    if-eqz p4, :cond_1

    .line 348
    :cond_0
    :goto_0
    return v3

    .line 313
    :cond_1
    iput-boolean p4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mUseViewSize:Z

    .line 315
    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    if-ne p2, v4, :cond_2

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    if-eq p3, v4, :cond_0

    .line 326
    :cond_2
    if-le p2, p3, :cond_6

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float v1, v3, v4

    .line 328
    .local v1, ratio:F
    :goto_1
    iput p2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    .line 329
    iput p3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    .line 334
    if-eqz v2, :cond_3

    if-eqz p4, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    if-nez v3, :cond_7

    .line 335
    :cond_4
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMinimalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    .line 336
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    .line 343
    :goto_2
    if-nez p1, :cond_5

    .line 344
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusX:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusX:F

    .line 345
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusY:F

    div-float/2addr v3, v1

    iput v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusY:F

    .line 348
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 326
    .end local v1           #ratio:F
    :cond_6
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    int-to-float v3, v3

    int-to-float v4, p3

    div-float v1, v3, v4

    goto :goto_1

    .line 338
    .restart local v1       #ratio:F
    :cond_7
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    .line 339
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mFromScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mFromScale:F

    .line 340
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToScale:F

    mul-float/2addr v3, v1

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToScale:F

    goto :goto_2
.end method

.method private snapAndRedraw()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 796
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->startSnapback()Z

    .line 797
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-le v0, v2, :cond_0

    .line 800
    const/4 v0, -0x3

    :goto_1
    if-lt v0, v2, :cond_1

    .line 803
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmRatio:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->startSnapback()Z

    .line 804
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->redraw()V

    .line 805
    return-void

    .line 798
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->startSnapback()Z

    .line 797
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->startSnapback()Z

    .line 800
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private startAnimation(IIFI)Z
    .locals 3
    .parameter "targetX"
    .parameter "targetY"
    .parameter "targetScale"
    .parameter "kind"

    .prologue
    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, changed:Z
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v2, v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v1, p1, v2, p4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;III)Z

    move-result v1

    or-int/2addr v0, v1

    .line 810
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, p2, p3, p4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;IFI)Z

    move-result v1

    or-int/2addr v0, v1

    .line 811
    if-eqz v0, :cond_0

    .line 812
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->redraw()V

    .line 813
    :cond_0
    return v0
.end method

.method private startOpeningAnimationIfNeeded()Z
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 352
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    if-nez v6, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v4

    .line 354
    :cond_1
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v6, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 355
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-boolean v6, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mUseViewSize:Z

    if-nez v6, :cond_0

    .line 359
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 360
    .local v3, r:Landroid/graphics/Rect;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 362
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 363
    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 364
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    iget v7, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    .line 365
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v6, v6, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    iget v7, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    invoke-direct {p0, v6, v4, v7, v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startAnimation(IIFI)Z

    .line 369
    const/4 v2, -0x1

    .local v2, i:I
    :goto_1
    if-lt v2, v5, :cond_2

    move v4, v5

    .line 375
    goto :goto_0

    .line 370
    :cond_2
    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v4, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 371
    .local v1, g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    iput v4, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mCurrentGap:I

    .line 372
    iget v4, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v4, v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->doAnimation(II)Z

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateScaleAndGapLimit()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 402
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-le v2, v4, :cond_0

    .line 408
    const/4 v2, -0x3

    :goto_1
    if-lt v2, v4, :cond_1

    .line 412
    return-void

    .line 403
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 404
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMinimalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    .line 405
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getMaximalScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v3

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    .line 402
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 409
    .end local v0           #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 410
    .local v1, g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getDefaultGapSize(I)I

    move-result v3

    iput v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mDefaultSize:I

    .line 408
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private viewTallerThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1369
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private viewWiderThanScaledImage(F)Z
    .locals 3
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 1373
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    invoke-direct {p0, v0, p1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;F)I

    move-result v0

    if-lt v2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I
    .locals 2
    .parameter "b"

    .prologue
    .line 841
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    iget v1, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;F)I
    .locals 2
    .parameter "b"
    .parameter "scale"

    .prologue
    .line 851
    iget v0, p1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public advanceAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 817
    const/4 v0, 0x0

    .line 818
    .local v0, changed:Z
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 819
    const/4 v1, -0x3

    .local v1, i:I
    :goto_0
    if-le v1, v3, :cond_1

    .line 822
    const/4 v1, -0x3

    :goto_1
    if-lt v1, v3, :cond_2

    .line 825
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmRatio:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 826
    if-eqz v0, :cond_0

    .line 827
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->redraw()V

    .line 828
    :cond_0
    return-void

    .line 820
    :cond_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 819
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 823
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->advanceAnimation()Z

    move-result v2

    or-int/2addr v0, v2

    .line 822
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public beginScale(FF)V
    .locals 5
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/high16 v4, 0x3f00

    .line 515
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    .line 516
    iget v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr p2, v2

    .line 517
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 518
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    .line 519
    .local v1, p:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mInScale:Z

    .line 520
    iget v2, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    int-to-float v2, v2

    sub-float v2, p1, v2

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusX:F

    .line 521
    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    div-float/2addr v2, v3

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusY:F

    .line 522
    return-void
.end method

.method public endScale()V
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mInScale:Z

    .line 553
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->snapAndRedraw()V

    .line 554
    return-void
.end method

.method public flingFilmX(I)Z
    .locals 13
    .parameter "velocityX"

    .prologue
    const/4 v2, 0x0

    .line 708
    if-nez p1, :cond_1

    .line 722
    :cond_0
    :goto_0
    return v2

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 712
    .local v9, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v11, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    .line 715
    .local v11, p:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;
    iget v10, v11, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    .line 716
    .local v10, defaultX:I
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasPrev:Z

    if-nez v0, :cond_2

    iget v0, v11, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    if-ge v0, v10, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasNext:Z

    if-nez v0, :cond_3

    iget v0, v11, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    if-le v0, v10, :cond_0

    .line 720
    :cond_3
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    iget v1, v11, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    const/high16 v5, -0x8000

    const v6, 0x7fffffff

    move v3, p1

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 721
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v12

    .line 722
    .local v12, targetX:I
    iget v0, v9, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iget v1, v9, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    const/4 v2, 0x7

    invoke-direct {p0, v12, v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startAnimation(IIFI)Z

    move-result v2

    goto :goto_0
.end method

.method public flingFilmY(II)I
    .locals 8
    .parameter "boxIndex"
    .parameter "velocityY"

    .prologue
    const/16 v7, 0x8

    .line 729
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v5, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 732
    .local v1, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    invoke-direct {p0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v3

    .line 734
    .local v3, h:I
    const/4 v0, 0x3

    .line 735
    .local v0, FUZZY:I
    if-ltz p2, :cond_0

    if-nez p2, :cond_1

    iget v5, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    if-gtz v5, :cond_1

    .line 736
    :cond_0
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, v3, 0x1

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    sub-int v4, v5, v0

    .line 743
    .local v4, targetY:I
    :goto_0
    if-eqz p2, :cond_2

    .line 744
    iget v5, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    sub-int v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v2, v5

    .line 745
    .local v2, duration:I
    const/16 v5, 0x190

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 751
    :goto_1
    sget-object v5, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->ANIM_TIME:[I

    aput v2, v5, v7

    .line 752
    iget v5, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v1, v4, v5, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;IFI)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 753
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->redraw()V

    .line 756
    .end local v2           #duration:I
    :goto_2
    return v2

    .line 738
    .end local v4           #targetY:I
    :cond_1
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v5, v6

    add-int v4, v5, v0

    .restart local v4       #targetY:I
    goto :goto_0

    .line 747
    :cond_2
    const/16 v2, 0xc8

    .restart local v2       #duration:I
    goto :goto_1

    .line 756
    :cond_3
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public flingPage(II)Z
    .locals 14
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 680
    .local v9, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v11, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    .line 683
    .local v11, p:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;
    iget v0, v9, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->viewWiderThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->viewTallerThanScaledImage(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    const/4 v0, 0x0

    .line 704
    :goto_0
    return v0

    .line 689
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getImageAtEdges()I

    move-result v10

    .line 690
    .local v10, edges:I
    if-lez p1, :cond_1

    and-int/lit8 v0, v10, 0x1

    if-nez v0, :cond_2

    :cond_1
    if-gez p1, :cond_3

    and-int/lit8 v0, v10, 0x2

    if-eqz v0, :cond_3

    .line 691
    :cond_2
    const/4 p1, 0x0

    .line 693
    :cond_3
    if-lez p2, :cond_4

    and-int/lit8 v0, v10, 0x4

    if-nez v0, :cond_5

    :cond_4
    if-gez p2, :cond_6

    and-int/lit8 v0, v10, 0x8

    if-eqz v0, :cond_6

    .line 694
    :cond_5
    const/16 p2, 0x0

    .line 697
    :cond_6
    if-nez p1, :cond_7

    if-nez p2, :cond_7

    .line 698
    const/4 v0, 0x0

    goto :goto_0

    .line 700
    :cond_7
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    iget v1, v11, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget v2, v9, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I

    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    move v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v8}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->fling(IIIIIIII)V

    .line 701
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getFinalX()I

    move-result v12

    .line 702
    .local v12, targetX:I
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getFinalY()I

    move-result v13

    .line 703
    .local v13, targetY:I
    sget-object v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->ANIM_TIME:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPageScroller:Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/bridge/glui/FlingScroller;->getDuration()I

    move-result v2

    aput v2, v0, v1

    .line 704
    iget v0, v9, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    const/4 v1, 0x6

    invoke-direct {p0, v12, v13, v0, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startAnimation(IIFI)Z

    move-result v0

    goto :goto_0
.end method

.method public forceImageSize(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V
    .locals 2
    .parameter "index"
    .parameter "s"

    .prologue
    .line 278
    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 281
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    .line 282
    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    iput v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    goto :goto_0
.end method

.method public getFilmRatio()F
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmRatio:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$FilmRatio;->mCurrentRatio:F

    return v0
.end method

.method public getImageAtEdges()I
    .locals 5

    .prologue
    .line 1231
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1232
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    .line 1233
    .local v2, p:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(F)V

    .line 1234
    const/4 v1, 0x0

    .line 1235
    .local v1, edges:I
    iget v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I

    if-gt v3, v4, :cond_0

    .line 1236
    or-int/lit8 v1, v1, 0x2

    .line 1238
    :cond_0
    iget v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I

    if-lt v3, v4, :cond_1

    .line 1239
    or-int/lit8 v1, v1, 0x1

    .line 1241
    :cond_1
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    if-gt v3, v4, :cond_2

    .line 1242
    or-int/lit8 v1, v1, 0x8

    .line 1244
    :cond_2
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iget v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    if-lt v3, v4, :cond_3

    .line 1245
    or-int/lit8 v1, v1, 0x4

    .line 1247
    :cond_3
    return v1
.end method

.method public getImageHeight()I
    .locals 3

    .prologue
    .line 1221
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1222
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageH:I

    return v1
.end method

.method public getImageScale()F
    .locals 3

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1227
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    return v1
.end method

.method public getImageWidth()I
    .locals 3

    .prologue
    .line 1216
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1217
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mImageW:I

    return v1
.end method

.method public getPosition(I)Landroid/graphics/Rect;
    .locals 1
    .parameter "index"

    .prologue
    .line 933
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasDeletingBox()Z
    .locals 3

    .prologue
    .line 1271
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 1276
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    iget v1, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 1273
    const/4 v1, 0x1

    goto :goto_1

    .line 1271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public hitTest(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 764
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x7

    if-lt v0, v3, :cond_1

    .line 772
    const v1, 0x7fffffff

    :cond_0
    return v1

    .line 765
    :cond_1
    sget-object v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->CENTER_OUT_INDEX:[I

    aget v1, v3, v0

    .line 766
    .local v1, j:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 767
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 764
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public inOpeningAnimation()Z
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x5

    const/4 v1, 0x0

    .line 831
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationKind:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-wide v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_2

    .line 832
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v0, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    iget-wide v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v0, v2, v5

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    .line 831
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAtMinimalScale()Z
    .locals 3

    .prologue
    .line 1206
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1207
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v1, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->isAlmostEqual(FF)Z

    move-result v1

    return v1
.end method

.method public isCenter()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1211
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1212
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v2, v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v3, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isScrolling()Z
    .locals 4

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v1, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToX:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveBox([IZZZ[Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V
    .locals 19
    .parameter "fromIndex"
    .parameter "hasPrev"
    .parameter "hasNext"
    .parameter "constrained"
    .parameter "sizes"

    .prologue
    .line 1030
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasPrev:Z

    .line 1031
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasNext:Z

    .line 1033
    new-instance v7, Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;

    const/16 v17, -0x3

    const/16 v18, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v7, v0, v1, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;-><init>([III)V

    .line 1036
    .local v7, from:Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->layoutAndSetPosition()V

    .line 1037
    const/4 v9, -0x3

    .local v9, i:I
    :goto_0
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v9, v0, :cond_4

    .line 1044
    const/4 v9, -0x3

    :goto_1
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v9, v0, :cond_5

    .line 1048
    const/4 v9, -0x3

    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v9, v0, :cond_6

    .line 1054
    const/4 v9, -0x3

    :goto_3
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v9, v0, :cond_7

    .line 1063
    const/4 v9, -0x3

    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v9, v0, :cond_9

    .line 1077
    const/4 v11, -0x3

    .line 1078
    .local v11, k:I
    const/4 v9, -0x3

    :goto_5
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v9, v0, :cond_c

    .line 1093
    const/4 v6, -0x3

    .local v6, first:I
    :goto_6
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v6, v0, :cond_f

    .line 1097
    :cond_0
    const/4 v13, 0x3

    .local v13, last:I
    :goto_7
    const/16 v17, -0x3

    move/from16 v0, v17

    if-ge v13, v0, :cond_10

    .line 1103
    :cond_1
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v6, v0, :cond_2

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    .line 1105
    const/4 v13, 0x0

    move v6, v13

    .line 1113
    :cond_2
    const/16 v17, 0x0

    add-int/lit8 v18, v6, 0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_8
    if-lt v9, v13, :cond_11

    .line 1129
    const/16 v17, -0x1

    add-int/lit8 v18, v13, -0x1

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v9

    :goto_9
    if-gt v9, v6, :cond_14

    .line 1145
    const/4 v11, -0x3

    .line 1146
    const/4 v9, -0x3

    :goto_a
    const/16 v17, 0x3

    move/from16 v0, v17

    if-lt v9, v0, :cond_17

    .line 1167
    add-int/lit8 v9, v6, -0x1

    :goto_b
    const/16 v17, -0x3

    move/from16 v0, v17

    if-ge v9, v0, :cond_1b

    .line 1176
    add-int/lit8 v9, v13, 0x1

    :goto_c
    const/16 v17, 0x3

    move/from16 v0, v17

    if-le v9, v0, :cond_1c

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    sub-int v5, v17, v18

    .line 1187
    .local v5, dx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFromX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFromX:I

    .line 1189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToX:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToX:I

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFlingOffset:I

    move/from16 v18, v0

    add-int v18, v18, v5

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFlingOffset:I

    .line 1192
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrained:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move/from16 v1, p4

    if-eq v0, v1, :cond_3

    .line 1193
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrained:Z

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->updateDefaultXY()V

    .line 1195
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->updateScaleAndGapLimit()V

    .line 1198
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->snapAndRedraw()V

    .line 1199
    return-void

    .line 1038
    .end local v5           #dx:I
    .end local v6           #first:I
    .end local v11           #k:I
    .end local v13           #last:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1039
    .local v4, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mRects:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 1040
    .local v14, r:Landroid/graphics/Rect;
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    .line 1037
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 1045
    .end local v4           #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    .end local v14           #r:Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1044
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 1049
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1048
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1055
    :cond_7
    invoke-virtual {v7, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1056
    .local v10, j:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_8

    .line 1054
    :goto_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1058
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 1064
    .end local v10           #j:I
    :cond_9
    invoke-virtual {v7, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;->get(I)I

    move-result v10

    .line 1065
    .restart local v10       #j:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-ne v10, v0, :cond_b

    .line 1063
    :cond_a
    :goto_e
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_4

    .line 1067
    :cond_b
    add-int/lit8 v17, v9, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;->get(I)I

    move-result v11

    .line 1068
    .restart local v11       #k:I
    const v17, 0x7fffffff

    move/from16 v0, v17

    if-eq v11, v0, :cond_a

    .line 1070
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ne v0, v11, :cond_a

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    goto :goto_e

    .line 1079
    .end local v10           #j:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_e

    .line 1078
    :goto_f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 1082
    :cond_d
    add-int/lit8 v11, v11, 0x1

    .line 1081
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_d

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .local v12, k:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1085
    add-int/lit8 v17, v9, 0x3

    aget-object v17, p5, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v9, v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->initBox(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;)V

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_f

    .line 1094
    .restart local v6       #first:I
    :cond_f
    invoke-virtual {v7, v6}, Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1093
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    .line 1098
    .restart local v13       #last:I
    :cond_10
    invoke-virtual {v7, v13}, Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1097
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_7

    .line 1114
    :cond_11
    invoke-virtual {v7, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_12

    .line 1113
    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_8

    .line 1116
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1117
    .local v3, a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1118
    .restart local v4       #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v15

    .line 1119
    .local v15, wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v16

    .line 1120
    .local v16, wb:I
    iget v0, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    add-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    .line 1121
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPopFromTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 1122
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    goto :goto_10

    .line 1124
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    goto :goto_10

    .line 1130
    .end local v3           #a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    .end local v4           #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_14
    invoke-virtual {v7, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeIntArray;->get(I)I

    move-result v17

    const v18, 0x7fffffff

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 1129
    :goto_11
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_9

    .line 1132
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1133
    .restart local v3       #a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1134
    .restart local v4       #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v15

    .line 1135
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v16

    .line 1136
    .restart local v16       #wb:I
    iget v0, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getDefaultGapSize(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    .line 1137
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPopFromTop:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    goto :goto_11

    .line 1140
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    move/from16 v17, v0

    div-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->heightOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v18

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    goto :goto_11

    .line 1147
    .end local v3           #a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    .end local v4           #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_19

    .line 1146
    :goto_12
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_a

    .line 1150
    :cond_18
    add-int/lit8 v11, v11, 0x1

    .line 1149
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_18

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mTempGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v12, v11, 0x1

    .end local v11           #k:I
    .restart local v12       #k:I
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v9, v1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->put(ILjava/lang/Object;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1154
    .restart local v3       #a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1155
    .restart local v4       #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v15

    .line 1156
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v16

    .line 1157
    .restart local v16       #wb:I
    if-lt v9, v6, :cond_1a

    if-ge v9, v13, :cond_1a

    .line 1158
    iget v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    iget v0, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    sub-int v8, v17, v18

    .line 1159
    .local v8, g:I
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->initGap(II)V

    move v11, v12

    .line 1160
    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_12

    .line 1161
    .end local v8           #g:I
    .end local v11           #k:I
    .restart local v12       #k:I
    :cond_1a
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->initGap(I)V

    move v11, v12

    .end local v12           #k:I
    .restart local v11       #k:I
    goto :goto_12

    .line 1168
    .end local v3           #a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    .end local v4           #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1169
    .restart local v3       #a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1170
    .restart local v4       #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v15

    .line 1171
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v16

    .line 1172
    .restart local v16       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 1173
    .local v8, g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    iget v0, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    sub-int v18, v16, v18

    sub-int v17, v17, v18

    iget v0, v8, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    .line 1167
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_b

    .line 1177
    .end local v3           #a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    .end local v4           #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    .end local v8           #g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    .end local v15           #wa:I
    .end local v16           #wb:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1178
    .restart local v3       #a:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 1179
    .restart local v4       #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v15

    .line 1180
    .restart local v15       #wa:I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->widthOf(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)I

    move-result v16

    .line 1181
    .restart local v16       #wb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, -0x1

    invoke-virtual/range {v17 .. v18}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 1182
    .restart local v8       #g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    iget v0, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x2

    sub-int v18, v15, v18

    add-int v17, v17, v18

    div-int/lit8 v18, v16, 0x2

    add-int v17, v17, v18

    iget v0, v8, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mCurrentGap:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAbsoluteX:I

    .line 1176
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_c
.end method

.method public resetToFullView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 510
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 511
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v1, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x4

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startAnimation(IIFI)Z

    .line 512
    return-void
.end method

.method public scaleBy(FFF)I
    .locals 8
    .parameter "s"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x3f00

    .line 530
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p2, v6

    .line 531
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr p3, v6

    .line 532
    iget-object v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v6, v5}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 533
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    .line 540
    .local v1, p:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;
    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->getTargetScale(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;)F

    move-result v6

    mul-float/2addr v6, p1

    invoke-virtual {v0, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->clampScale(F)F

    move-result p1

    .line 541
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_1

    iget v2, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 542
    .local v2, x:I
    :goto_0
    iget-boolean v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    if-eqz v6, :cond_2

    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 543
    .local v3, y:I
    :goto_1
    invoke-direct {p0, v2, v3, p1, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startAnimation(IIFI)Z

    .line 544
    iget v6, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    cmpg-float v6, p1, v6

    if-gez v6, :cond_3

    .line 545
    const/4 v4, -0x1

    .line 548
    :cond_0
    :goto_2
    return v4

    .line 541
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_1
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusX:F

    mul-float/2addr v6, p1

    sub-float v6, p2, v6

    add-float/2addr v6, v7

    float-to-int v2, v6

    goto :goto_0

    .line 542
    .restart local v2       #x:I
    :cond_2
    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFocusY:F

    mul-float/2addr v6, p1

    sub-float v6, p3, v6

    add-float/2addr v6, v7

    float-to-int v3, v6

    goto :goto_1

    .line 546
    .restart local v3       #y:I
    :cond_3
    iget v6, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    cmpl-float v6, p1, v6

    if-gtz v6, :cond_0

    move v4, v5

    .line 548
    goto :goto_2
.end method

.method public scrollFilmX(I)V
    .locals 8
    .parameter "dx"

    .prologue
    const/4 v7, 0x0

    .line 633
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->canScroll()Z

    move-result v3

    if-nez v3, :cond_0

    .line 666
    :goto_0
    return-void

    .line 636
    :cond_0
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 637
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    .line 641
    .local v1, p:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;
    iget-wide v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 642
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationKind:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 652
    :cond_1
    :sswitch_0
    iget v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    add-int v2, v3, p1

    .line 656
    .local v2, x:I
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v3, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    sub-int/2addr v2, v3

    .line 657
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasPrev:Z

    if-nez v3, :cond_3

    if-lez v2, :cond_3

    .line 658
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onPull(II)V

    .line 659
    const/4 v2, 0x0

    .line 664
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v3, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    add-int/2addr v2, v3

    .line 665
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    iget v4, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v2, v3, v4, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 660
    :cond_3
    iget-boolean v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasNext:Z

    if-nez v3, :cond_2

    if-gez v2, :cond_2

    .line 661
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    neg-int v4, v2

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onPull(II)V

    .line 662
    const/4 v2, 0x0

    goto :goto_1

    .line 642
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public scrollFilmY(II)V
    .locals 4
    .parameter "boxIndex"
    .parameter "dy"

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->canScroll()Z

    move-result v2

    if-nez v2, :cond_0

    .line 676
    :goto_0
    return-void

    .line 672
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v2, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 673
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    add-int v1, v2, p2

    .line 674
    .local v1, y:I
    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    const/4 v3, 0x0

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;IFI)Z

    .line 675
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->redraw()V

    goto :goto_0
.end method

.method public scrollPage(II)V
    .locals 9
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v8, 0x0

    .line 594
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->canScroll()Z

    move-result v5

    if-nez v5, :cond_0

    .line 630
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v5, v8}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 598
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    .line 600
    .local v1, p:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;
    iget v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v5}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(F)V

    .line 602
    iget v5, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    add-int v3, v5, p1

    .line 603
    .local v3, x:I
    iget v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    add-int v4, v5, p2

    .line 607
    .local v4, y:I
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    if-eq v5, v6, :cond_1

    .line 608
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    if-ge v4, v5, :cond_3

    .line 609
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    sub-int/2addr v6, v4

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onPull(II)V

    .line 615
    :cond_1
    :goto_1
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    invoke-static {v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(III)I

    move-result v4

    .line 619
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasPrev:Z

    if-nez v5, :cond_4

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I

    if-le v3, v5, :cond_4

    .line 620
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I

    sub-int v2, v3, v5

    .line 621
    .local v2, pixels:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onPull(II)V

    .line 622
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I

    .line 629
    .end local v2           #pixels:I
    :cond_2
    :goto_2
    iget v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startAnimation(IIFI)Z

    goto :goto_0

    .line 610
    :cond_3
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    if-le v4, v5, :cond_1

    .line 611
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    iget v6, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    sub-int v6, v4, v6

    invoke-interface {v5, v6, v8}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onPull(II)V

    goto :goto_1

    .line 623
    :cond_4
    iget-boolean v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mHasNext:Z

    if-nez v5, :cond_2

    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I

    if-ge v3, v5, :cond_2

    .line 624
    iget v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I

    sub-int v2, v5, v3

    .line 625
    .restart local v2       #pixels:I
    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mListener:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Listener;->onPull(II)V

    .line 626
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I

    goto :goto_2
.end method

.method public setConstrainedFrame(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "cFrame"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 272
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->updateDefaultXY()V

    .line 273
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->updateScaleAndGapLimit()V

    .line 274
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setExtraScalingRange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mExtraScalingRange:Z

    if-ne v0, p1, :cond_1

    .line 396
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mExtraScalingRange:Z

    .line 393
    if-nez p1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setFilmMode(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 379
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    if-ne p1, v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 381
    :cond_0
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    .line 383
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->updateDefaultXY()V

    .line 384
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->updateScaleAndGapLimit()V

    .line 385
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->stopAnimation()V

    .line 386
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setImageSize(ILcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "index"
    .parameter "s"
    .parameter "cFrame"

    .prologue
    .line 287
    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    if-eqz v1, :cond_0

    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    if-nez v1, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    const/4 v0, 0x0

    .line 291
    .local v0, needUpdate:Z
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 292
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 293
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->updateDefaultXY()V

    .line 294
    const/4 v0, 0x1

    .line 296
    :cond_2
    iget v1, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->width:I

    iget v2, p2, Lcom/pantech/app/vegacamera/bridge/glui/PhotoView$Size;->height:I

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setBoxSize(IIIZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 298
    if-eqz v0, :cond_0

    .line 300
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->updateScaleAndGapLimit()V

    .line 301
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->snapAndRedraw()V

    goto :goto_0
.end method

.method public setOpenAnimationRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 235
    iput-object p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mOpenAnimationRect:Landroid/graphics/Rect;

    .line 236
    return-void
.end method

.method public setPopFromTop(Z)V
    .locals 0
    .parameter "top"

    .prologue
    .line 1267
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPopFromTop:Z

    .line 1268
    return-void
.end method

.method public setViewSize(II)V
    .locals 5
    .parameter "viewW"
    .parameter "viewH"

    .prologue
    .line 239
    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    if-ne p2, v3, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->isAtMinimalScale()Z

    move-result v2

    .line 244
    .local v2, wasMinimal:Z
    iput p1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    .line 245
    iput p2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    .line 246
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->initPlatform()V

    .line 248
    const/4 v1, -0x3

    .local v1, i:I
    :goto_1
    const/4 v3, 0x3

    if-le v1, v3, :cond_3

    .line 252
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->updateScaleAndGapLimit()V

    .line 256
    if-eqz v2, :cond_2

    .line 257
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 258
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    .line 263
    .end local v0           #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startOpeningAnimationIfNeeded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 264
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->skipToFinalPosition()V

    goto :goto_0

    .line 249
    :cond_3
    const/4 v3, 0x1

    invoke-direct {p0, v1, p1, p2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->setBoxSize(IIIZ)Z

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public skipAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const-wide/16 v5, -0x1

    .line 452
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-wide v3, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 453
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v4, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToX:I

    iput v4, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    .line 454
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v4, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToY:I

    iput v4, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentY:I

    .line 455
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iput-wide v5, v3, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationStartTime:J

    .line 457
    :cond_0
    const/4 v2, -0x3

    .local v2, i:I
    :goto_0
    if-le v2, v7, :cond_1

    .line 465
    const/4 v2, -0x3

    :goto_1
    if-lt v2, v7, :cond_3

    .line 472
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->redraw()V

    .line 473
    return-void

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 459
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-wide v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 457
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 461
    :cond_2
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToY:I

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    .line 462
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mToScale:F

    iput v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    .line 463
    iput-wide v5, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    goto :goto_2

    .line 466
    .end local v0           #b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    :cond_3
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v2}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 467
    .local v1, g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    iget-wide v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mAnimationStartTime:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 465
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    :cond_4
    iget v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mToGap:I

    iput v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mCurrentGap:I

    .line 470
    iput-wide v5, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mAnimationStartTime:J

    goto :goto_3
.end method

.method public skipToFinalPosition()V
    .locals 0

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->stopAnimation()V

    .line 481
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->snapAndRedraw()V

    .line 482
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->skipAnimation()V

    .line 483
    return-void
.end method

.method public snapback()V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->snapAndRedraw()V

    .line 477
    return-void
.end method

.method public startCaptureAnimationSlide(I)V
    .locals 8
    .parameter "offset"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x9

    .line 567
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, v7}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 568
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 569
    .local v2, n:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v3, p1}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    .line 571
    .local v1, g:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;
    iget-object v3, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-object v4, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v4, v4, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    iget-object v5, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v5, v5, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultY:I

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->doAnimation(III)Z
    invoke-static {v3, v4, v5, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;III)Z

    .line 572
    iget v3, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v0, v7, v3, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;IFI)Z

    .line 573
    iget v3, v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    #calls: Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->doAnimation(IFI)Z
    invoke-static {v2, v7, v3, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->access$1(Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;IFI)Z

    .line 574
    iget v3, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mDefaultSize:I

    invoke-virtual {v1, v3, v6}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->doAnimation(II)Z

    .line 575
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->redraw()V

    .line 576
    return-void
.end method

.method public startHorizontalSlide()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 558
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, v4}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 559
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v1, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mDefaultX:I

    iget v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    const/4 v3, 0x3

    invoke-direct {p0, v1, v4, v2, v3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startAnimation(IIFI)Z

    .line 560
    return-void
.end method

.method public stopAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-wide/16 v2, -0x1

    .line 442
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iput-wide v2, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationStartTime:J

    .line 443
    const/4 v0, -0x3

    .local v0, i:I
    :goto_0
    if-le v0, v4, :cond_0

    .line 446
    const/4 v0, -0x3

    :goto_1
    if-lt v0, v4, :cond_1

    .line 449
    return-void

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    iput-wide v2, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mAnimationStartTime:J

    .line 443
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 447
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mGaps:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    invoke-virtual {v1, v0}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;

    iput-wide v2, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Gap;->mAnimationStartTime:J

    .line 446
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public stopScrolling()V
    .locals 4

    .prologue
    .line 1255
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-wide v0, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1260
    :goto_0
    return-void

    .line 1257
    :cond_0
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmMode:Z

    if-eqz v0, :cond_1

    .line 1258
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mFilmScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1259
    :cond_1
    iget-object v0, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v2, v2, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    iput v2, v1, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mToX:I

    iput v2, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mFromX:I

    goto :goto_0
.end method

.method public zoomIn(FFF)V
    .locals 10
    .parameter "tapX"
    .parameter "tapY"
    .parameter "targetScale"

    .prologue
    const/high16 v9, 0x3f00

    .line 490
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewW:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p1, v7

    .line 491
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mViewH:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float/2addr p2, v7

    .line 492
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoxes:Lcom/pantech/app/vegacamera/bridge/util/RangeArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/pantech/app/vegacamera/bridge/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;

    .line 495
    .local v0, b:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;
    iget-object v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mPlatform:Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;

    iget v7, v7, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Platform;->mCurrentX:I

    int-to-float v7, v7

    sub-float v7, p1, v7

    iget v8, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    div-float v3, v7, v8

    .line 496
    .local v3, tempX:F
    iget v7, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentY:I

    int-to-float v7, v7

    sub-float v7, p2, v7

    iget v8, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mCurrentScale:F

    div-float v4, v7, v8

    .line 498
    .local v4, tempY:F
    neg-float v7, v3

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v5, v7

    .line 499
    .local v5, x:I
    neg-float v7, v4

    mul-float/2addr v7, p3

    add-float/2addr v7, v9

    float-to-int v6, v7

    .line 501
    .local v6, y:I
    invoke-direct {p0, p3}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->calculateStableBound(F)V

    .line 502
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundLeft:I

    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundRight:I

    invoke-static {v5, v7, v8}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(III)I

    move-result v1

    .line 503
    .local v1, targetX:I
    iget v7, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundTop:I

    iget v8, p0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->mBoundBottom:I

    invoke-static {v6, v7, v8}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(III)I

    move-result v2

    .line 504
    .local v2, targetY:I
    iget v7, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMin:F

    iget v8, v0, Lcom/pantech/app/vegacamera/bridge/glui/PositionController$Box;->mScaleMax:F

    invoke-static {p3, v7, v8}, Lcom/pantech/app/vegacamera/bridge/common/Utils;->clamp(FFF)F

    move-result p3

    .line 506
    const/4 v7, 0x4

    invoke-direct {p0, v1, v2, p3, v7}, Lcom/pantech/app/vegacamera/bridge/glui/PositionController;->startAnimation(IIFI)Z

    .line 507
    return-void
.end method
