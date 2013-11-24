.class public Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;
.super Landroid/view/View;
.source "LoadingFrameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;
    }
.end annotation


# static fields
.field private static final LOADING_FRAME_ALPHA:I = 0x7d

.field private static final UPDATE_LOADING_FRAME:I = 0x1


# instance fields
.field private fAdjustSx:F

.field private iMove:I

.field private iReviewWx:I

.field private iReviewWy:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v1, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mPaint:Landroid/graphics/Paint;

    .line 18
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iMove:I

    .line 19
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWx:I

    .line 20
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWy:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->fAdjustSx:F

    .line 23
    new-instance v0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;-><init>(Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mMainHandler:Landroid/os/Handler;

    .line 27
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->_Init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v1, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mPaint:Landroid/graphics/Paint;

    .line 18
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iMove:I

    .line 19
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWx:I

    .line 20
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWy:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->fAdjustSx:F

    .line 23
    new-instance v0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;-><init>(Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mMainHandler:Landroid/os/Handler;

    .line 37
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->_Init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput-object v1, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mPaint:Landroid/graphics/Paint;

    .line 18
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iMove:I

    .line 19
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWx:I

    .line 20
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWy:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->fAdjustSx:F

    .line 23
    new-instance v0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;-><init>(Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;Lcom/pantech/app/vegacamera/panorama/LoadingFrameView$MainHandler;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mMainHandler:Landroid/os/Handler;

    .line 32
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->_Init()V

    .line 33
    return-void
.end method

.method private _Init()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 58
    return-void
.end method

.method private _ReleaseHandler()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public Reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->_ReleaseHandler()V

    .line 66
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iMove:I

    .line 67
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWx:I

    .line 68
    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWy:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->fAdjustSx:F

    .line 70
    return-void
.end method

.method public SetMeasure(IIFF)V
    .locals 2
    .parameter "dispWx"
    .parameter "dispWy"
    .parameter "reviewWx"
    .parameter "reviewWy"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->SetMoveLoading(I)V

    .line 86
    iput p1, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWx:I

    .line 87
    iput p2, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWy:I

    .line 88
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWx:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->fAdjustSx:F

    .line 89
    return-void
.end method

.method public SetMoveLoading(I)V
    .locals 2
    .parameter "measure"

    .prologue
    .line 80
    iput p1, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iMove:I

    .line 81
    iget-object v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 75
    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->fAdjustSx:F

    iget v1, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iMove:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    const/4 v2, 0x0

    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->fAdjustSx:F

    iget v3, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWx:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->iReviewWy:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/pantech/app/vegacamera/panorama/LoadingFrameView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 76
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method
