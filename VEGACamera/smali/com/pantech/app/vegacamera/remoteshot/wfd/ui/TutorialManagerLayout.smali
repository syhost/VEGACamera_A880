.class public Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;
.super Landroid/widget/RelativeLayout;
.source "TutorialManagerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;
    }
.end annotation


# static fields
.field public static TUTORIAL_01:I

.field public static TUTORIAL_02:I

.field public static TUTORIAL_03:I

.field public static TUTORIAL_NONE:I

.field public static mTutorPage:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFirstTutorialLayout:Landroid/widget/RelativeLayout;

.field private mIsInitialized:Z

.field private mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

.field private mOrientation:I

.field private mSecondTutorialLayout:Landroid/widget/RelativeLayout;

.field private mThirdTutorialLayout:Landroid/widget/RelativeLayout;

.field private mTutoFirstNextBtn:Landroid/widget/Button;

.field private mTutoPivot:I

.field private mTutoSecNextBtn:Landroid/widget/Button;

.field private mTutoSecPrevBtn:Landroid/widget/Button;

.field private mTutoThirdCompleteBtn:Landroid/widget/Button;

.field private mTutoThirdPrevBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    sput v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutorPage:I

    .line 34
    const/4 v0, 0x1

    sput v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    .line 35
    const/4 v0, 0x2

    sput v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    .line 36
    const/4 v0, 0x3

    sput v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    .line 37
    const/4 v0, 0x4

    sput v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 20
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mContext:Landroid/content/Context;

    .line 22
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoFirstNextBtn:Landroid/widget/Button;

    .line 23
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoSecPrevBtn:Landroid/widget/Button;

    .line 24
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoSecNextBtn:Landroid/widget/Button;

    .line 25
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoThirdPrevBtn:Landroid/widget/Button;

    .line 26
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoThirdCompleteBtn:Landroid/widget/Button;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mIsInitialized:Z

    .line 39
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    .line 41
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

    .line 54
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mContext:Landroid/content/Context;

    .line 22
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoFirstNextBtn:Landroid/widget/Button;

    .line 23
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoSecPrevBtn:Landroid/widget/Button;

    .line 24
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoSecNextBtn:Landroid/widget/Button;

    .line 25
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoThirdPrevBtn:Landroid/widget/Button;

    .line 26
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoThirdCompleteBtn:Landroid/widget/Button;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mIsInitialized:Z

    .line 39
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    iput v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    .line 41
    iput-object v1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

    .line 59
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method


# virtual methods
.method public Init()V
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 69
    sget v0, Lcom/pantech/app/vegacamera/R$id;->first_tuto:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    .line 70
    sget v0, Lcom/pantech/app/vegacamera/R$id;->second_tuto:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    .line 71
    sget v0, Lcom/pantech/app/vegacamera/R$id;->third_tuto:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mIsInitialized:Z

    .line 75
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 155
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mIsInitialized:Z

    if-eqz v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 159
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 160
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v1, c:Landroid/graphics/Canvas;
    const/high16 v2, -0x3400

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 164
    invoke-virtual {p1, v0, v5, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 171
    return-void
.end method

.method public getIsInitialize()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mIsInitialized:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getVisiblePivot()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->tuto_first_next_btn:I

    if-ne v0, v1, :cond_1

    .line 131
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisiblePivot(I)V

    .line 132
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;->OnChangePage(I)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->tuto_sec_prev_btn:I

    if-ne v0, v1, :cond_2

    .line 135
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisiblePivot(I)V

    .line 136
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;->OnChangePage(I)V

    goto :goto_0

    .line 138
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->tuto_sec_next_btn:I

    if-ne v0, v1, :cond_3

    .line 139
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisiblePivot(I)V

    .line 140
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;->OnChangePage(I)V

    goto :goto_0

    .line 142
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->tuto_third_prev_btn:I

    if-ne v0, v1, :cond_4

    .line 143
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisiblePivot(I)V

    .line 144
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;->OnChangePage(I)V

    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/pantech/app/vegacamera/R$id;->tuto_third_complete_btn:I

    if-ne v0, v1, :cond_0

    .line 147
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisiblePivot(I)V

    .line 148
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;->OnChangePage(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 343
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 347
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    goto :goto_0

    .line 349
    :cond_2
    iget v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    .line 351
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 361
    sub-int v1, p4, p2

    .line 362
    .local v1, width:I
    sub-int v0, p5, p3

    .line 363
    .local v0, height:I
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 366
    :sswitch_0
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_0

    .line 369
    :cond_1
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 370
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_0

    .line 372
    :cond_2
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4, v4, v1, v0}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_0

    .line 379
    :sswitch_1
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 380
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_0

    .line 382
    :cond_3
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_4

    .line 383
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_0

    .line 385
    :cond_4
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4, v4, v0, v1}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_0

    .line 363
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/16 v8, 0x5a

    const/high16 v7, 0x4387

    const/high16 v6, 0x4334

    const/high16 v5, 0x42b4

    const/4 v4, 0x0

    .line 181
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 182
    .local v0, h:I
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 234
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setMeasuredDimension(II)V

    .line 236
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_a

    .line 237
    :cond_1
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_8

    .line 238
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 239
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 291
    :cond_2
    :goto_1
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    if-nez v2, :cond_10

    .line 292
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_e

    .line 293
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 335
    :cond_3
    :goto_2
    return-void

    .line 185
    :sswitch_0
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_4

    .line 186
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, p1, p2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->measureChild(Landroid/view/View;II)V

    .line 188
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 192
    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_5

    .line 193
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 194
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, p1, p2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->measureChild(Landroid/view/View;II)V

    .line 195
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 196
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 198
    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_0

    .line 199
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 200
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, p1, p2}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->measureChild(Landroid/view/View;II)V

    .line 201
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v1

    .line 202
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    .line 206
    goto/16 :goto_0

    .line 210
    :sswitch_1
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_6

    .line 211
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, p2, p1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->measureChild(Landroid/view/View;II)V

    .line 213
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 217
    goto/16 :goto_0

    :cond_6
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_7

    .line 218
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 219
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, p2, p1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->measureChild(Landroid/view/View;II)V

    .line 220
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 221
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    .line 223
    goto/16 :goto_0

    :cond_7
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_0

    .line 224
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 225
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v2, p2, p1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->measureChild(Landroid/view/View;II)V

    .line 226
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 227
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v0

    goto/16 :goto_0

    .line 241
    :cond_8
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_9

    .line 242
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 243
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto/16 :goto_1

    .line 245
    :cond_9
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 247
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto/16 :goto_1

    .line 249
    :cond_a
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    if-eq v2, v8, :cond_b

    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_2

    .line 251
    :cond_b
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_c

    .line 252
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 253
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto/16 :goto_1

    .line 255
    :cond_c
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_d

    .line 256
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 257
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto/16 :goto_1

    .line 259
    :cond_d
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    .line 261
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    sub-int v3, v0, v1

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    goto/16 :goto_1

    .line 295
    :cond_e
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_f

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_f

    .line 296
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 298
    :cond_f
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 299
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 301
    :cond_10
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_13

    .line 302
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_11

    .line 303
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 305
    :cond_11
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_12

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_12

    .line 306
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 308
    :cond_12
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 309
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 311
    :cond_13
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    if-ne v2, v8, :cond_16

    .line 312
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_14

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_14

    .line 314
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 316
    :cond_14
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_15

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_15

    .line 317
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 319
    :cond_15
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 320
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 322
    :cond_16
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_3

    .line 323
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_17

    .line 325
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 327
    :cond_17
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne v2, v3, :cond_18

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_18

    .line 328
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 330
    :cond_18
    iget v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    sget v3, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v7}, Landroid/widget/RelativeLayout;->setRotation(F)V

    goto/16 :goto_2

    .line 182
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public setOnTutorialManagerListener(Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

    .line 49
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 394
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mOrientation:I

    .line 395
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->requestLayout()V

    .line 396
    return-void
.end method

.method public setVisiblePivot(I)V
    .locals 0
    .parameter "pivot"

    .prologue
    .line 78
    iput p1, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoPivot:I

    .line 79
    return-void
.end method

.method public showTutorial(I)V
    .locals 3
    .parameter "viewFlag"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 88
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    if-ne p1, v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 91
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tuto_first_next_btn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoFirstNextBtn:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoFirstNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisiblePivot(I)V

    .line 94
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mListener:Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;

    sget v1, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_01:I

    invoke-interface {v0, v1}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout$TutorialManagerListener;->OnChangePage(I)V

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    if-ne p1, v0, :cond_2

    .line 98
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tuto_sec_prev_btn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoSecPrevBtn:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoSecPrevBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tuto_sec_next_btn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoSecNextBtn:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoSecNextBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_02:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisiblePivot(I)V

    goto :goto_0

    .line 105
    :cond_2
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    if-ne p1, v0, :cond_3

    .line 107
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tuto_third_prev_btn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoThirdPrevBtn:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoThirdPrevBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    sget v0, Lcom/pantech/app/vegacamera/R$id;->tuto_third_complete_btn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoThirdCompleteBtn:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mTutoThirdCompleteBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_03:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisiblePivot(I)V

    goto :goto_0

    .line 114
    :cond_3
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    if-ne p1, v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mFirstTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 118
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mSecondTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    iget-object v0, p0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->mThirdTutorialLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 123
    sget v0, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->TUTORIAL_NONE:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/remoteshot/wfd/ui/TutorialManagerLayout;->setVisiblePivot(I)V

    goto/16 :goto_0
.end method
