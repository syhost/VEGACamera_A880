.class public Lcom/pantech/app/vegacamera/util/PerformanceView;
.super Ljava/lang/Object;
.source "PerformanceView.java"


# instance fields
.field mTestLogview:Landroid/widget/TextView;

.field mText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 5
    .parameter "context"
    .parameter "rootView"

    .prologue
    const/4 v3, 0x0

    const/4 v4, -0x2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .local v0, LL:Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/ScrollView;

    invoke-direct {v1, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 20
    .local v1, sv:Landroid/widget/ScrollView;
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 21
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setEnabled(Z)V

    .line 22
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 23
    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->setClickable(Z)V

    .line 24
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {p1}, Lcom/pantech/app/vegacamera/util/Util;->GetDeviceWidth(Landroid/content/Context;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 27
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    .line 28
    iget-object v2, p0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    iget-object v2, p0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object v2, p0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 32
    check-cast p2, Landroid/view/ViewGroup;

    .end local p2
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 33
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 40
    iput-object p1, p0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mText:Ljava/lang/CharSequence;

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    new-instance v1, Lcom/pantech/app/vegacamera/util/PerformanceView$1;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/util/PerformanceView$1;-><init>(Lcom/pantech/app/vegacamera/util/PerformanceView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    .line 53
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pantech/app/vegacamera/util/PerformanceView;->mTestLogview:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    return-void
.end method
