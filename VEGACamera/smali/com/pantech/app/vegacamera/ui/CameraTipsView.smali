.class public Lcom/pantech/app/vegacamera/ui/CameraTipsView;
.super Landroid/widget/FrameLayout;
.source "CameraTipsView.java"


# static fields
.field private static final NORMAL_VIEW:I = 0x0

.field private static final REVERSE_VIEW:I = 0x1


# instance fields
.field private mCurrentIndex:I

.field private mOrientation:I

.field private mTipList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    .line 28
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method private hasReverse(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, tag:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    const-string v2, "has_reverse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private showIndex(I)V
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 92
    return-void

    .line 62
    :cond_0
    if-eq v0, p1, :cond_2

    .line 63
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 61
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 65
    :cond_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    .local v1, v:Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->hasReverse(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 69
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mOrientation:I

    if-nez v2, :cond_3

    .line 71
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 72
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 73
    :cond_3
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mOrientation:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_4

    .line 75
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 76
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 77
    :cond_4
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mOrientation:I

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_5

    .line 79
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 80
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 81
    :cond_5
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mOrientation:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1

    .line 83
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 84
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 87
    :cond_6
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mCurrentIndex:I

    return v0
.end method

.method public getIndexCount()I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    .line 97
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 101
    .end local v0           #i:I
    :cond_0
    return-void

    .line 98
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->init()V

    .line 35
    return-void
.end method

.method public remove()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 52
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    .line 58
    .end local v0           #i:I
    :cond_0
    return-void

    .line 53
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mTipList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 38
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mCurrentIndex:I

    .line 39
    invoke-direct {p0, p1}, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->showIndex(I)V

    .line 40
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "ori"

    .prologue
    .line 117
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/CameraTipsView;->mOrientation:I

    .line 118
    return-void
.end method
