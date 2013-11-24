.class public Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;
.super Landroid/widget/FrameLayout;
.source "AOTLayoutSizeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AOTLayoutSizeControl"


# instance fields
.field private mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

.field mResizeBtn:Landroid/widget/ImageButton;

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;-><init>(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;-><init>(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    new-instance v0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$1;-><init>(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;FF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->setStartPoint(FF)V

    return-void
.end method

.method static synthetic access$2(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)F
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mX:F

    return v0
.end method

.method static synthetic access$3(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;)F
    .locals 1
    .parameter

    .prologue
    .line 28
    iget v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mY:F

    return v0
.end method

.method private setStartPoint(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 60
    iput p1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mX:F

    .line 61
    iput p2, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mY:F

    .line 62
    return-void
.end method


# virtual methods
.method public getOnSizeChangeListener()Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 53
    sget v0, Lcom/pantech/app/vegacamera/R$id;->aot_resizeBtn:I

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    .line 54
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setFocusableInTouchMode(Z)V

    .line 57
    return-void
.end method

.method public setOnSizeChangeFinish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    invoke-interface {v0}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;->onSizeChangeFinish()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mResizeBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/pantech/app/vegacamera/R$drawable;->aot_knob_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 69
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->setStartPoint(FF)V

    .line 70
    return-void
.end method

.method public setOnSizeChangeListener(Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;)V
    .locals 0
    .parameter "mOnSizeChangeListener"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController;->mOnSizeChangeListener:Lcom/pantech/app/vegacamera/aot/AOTLayoutSizeController$OnSizeChangeListener;

    .line 48
    return-void
.end method
