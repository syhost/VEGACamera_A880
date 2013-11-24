.class public Lcom/pantech/app/vegacamera/PreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "PreviewFrameLayout.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;
    }
.end annotation


# instance fields
.field private mAspectRatio:D

.field private mLayoutChangeHelper:Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

.field private mListener:Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const-wide v0, 0x3ff5555555555555L

    invoke-virtual {p0, v0, v1}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->setAspectRatio(D)V

    .line 44
    new-instance v0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    .line 45
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 115
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 116
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->onLayout(ZIIII)V

    .line 117
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 78
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 79
    .local v2, previewWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 82
    .local v1, previewHeight:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getPaddingRight()I

    move-result v5

    add-int v0, v4, v5

    .line 83
    .local v0, hPadding:I
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 86
    .local v3, vPadding:I
    sub-int/2addr v2, v0

    .line 87
    sub-int/2addr v1, v3

    .line 90
    add-int/2addr v2, v0

    .line 91
    add-int/2addr v1, v3

    .line 94
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 95
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 94
    invoke-super {p0, v4, v5}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 96
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->mListener:Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->mListener:Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;

    invoke-interface {v0, p1, p2}, Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;->onSizeChanged(II)V

    .line 106
    :cond_0
    return-void
.end method

.method public setAspectRatio(D)V
    .locals 8
    .parameter "ratio"

    .prologue
    .line 52
    const-wide/16 v4, 0x0

    cmpg-double v4, p1, v4

    if-gtz v4, :cond_0

    .line 53
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 56
    const-wide/high16 v4, 0x3ff0

    div-double p1, v4, p1

    .line 62
    :cond_1
    const-wide v2, 0x3ff5555555555555L

    .line 63
    .local v2, exceptRatio:D
    const-wide v0, 0x3f9eb851eb851eb8L

    .line 64
    .local v0, RATIO_ANGLE_TOLERANCE:D
    const-wide v4, 0x3ff5555555555555L

    sub-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f9eb851eb851eb8L

    cmpg-double v4, v4, v6

    if-gez v4, :cond_2

    .line 65
    const-wide p1, 0x3ff5555555555555L

    .line 68
    :cond_2
    const-string v4, "PreviewFrameLayout"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mAspectRatio:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->mAspectRatio:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , ratio:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/vegacamera/util/CameraLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-wide p1, p0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->mAspectRatio:D

    .line 72
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->requestLayout()V

    .line 74
    return-void
.end method

.method public setOnLayoutChangeListener(Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->mLayoutChangeHelper:Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->setOnLayoutChangeListener(Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;)V

    .line 111
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/pantech/app/vegacamera/PreviewFrameLayout;->mListener:Lcom/pantech/app/vegacamera/PreviewFrameLayout$OnSizeChangedListener;

    .line 100
    return-void
.end method
