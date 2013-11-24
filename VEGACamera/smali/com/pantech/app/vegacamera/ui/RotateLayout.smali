.class public Lcom/pantech/app/vegacamera/ui/RotateLayout;
.super Landroid/view/ViewGroup;
.source "RotateLayout.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/Rotatable;


# instance fields
.field private bDisableRotation:Z

.field private iOrientation:I

.field private mChild:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    .line 31
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->bDisableRotation:Z

    .line 32
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->iOrientation:I

    .line 40
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setBackgroundResource(I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    .line 31
    iput-boolean v1, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->bDisableRotation:Z

    .line 32
    iput v1, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->iOrientation:I

    .line 49
    const v0, 0x106000d

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setBackgroundResource(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public SetDisableRotation(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->bDisableRotation:Z

    .line 146
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 56
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 57
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "change"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 61
    sub-int v1, p4, p2

    .line 62
    .local v1, width:I
    sub-int v0, p5, p3

    .line 64
    .local v0, height:I
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->bDisableRotation:Z

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 78
    :goto_0
    return-void

    .line 67
    :cond_0
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->iOrientation:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 70
    :sswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 74
    :sswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 67
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
    .locals 5
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    const/4 v4, 0x0

    .line 82
    const/4 v1, 0x0

    .local v1, w:I
    const/4 v0, 0x0

    .line 84
    .local v0, h:I
    iget-boolean v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->bDisableRotation:Z

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 86
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 87
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 88
    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 126
    :goto_0
    return-void

    .line 90
    :cond_0
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->iOrientation:I

    sparse-switch v2, :sswitch_data_0

    .line 104
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setMeasuredDimension(II)V

    .line 106
    iget v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->iOrientation:I

    sparse-switch v2, :sswitch_data_1

    .line 124
    :goto_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    iget v3, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->iOrientation:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    goto :goto_0

    .line 93
    :sswitch_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p1, p2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 94
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 96
    goto :goto_1

    .line 99
    :sswitch_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {p0, v2, p2, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->measureChild(Landroid/view/View;II)V

    .line 100
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 101
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    .line 108
    :sswitch_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 109
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 112
    :sswitch_3
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 113
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 116
    :sswitch_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 117
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 120
    :sswitch_5
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 121
    iget-object v2, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->mChild:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch

    .line 106
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x5a -> :sswitch_3
        0xb4 -> :sswitch_4
        0x10e -> :sswitch_5
    .end sparse-switch
.end method

.method public setOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 136
    rem-int/lit16 p1, p1, 0x168

    .line 137
    iget v0, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->iOrientation:I

    if-ne v0, p1, :cond_0

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/ui/RotateLayout;->iOrientation:I

    .line 141
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->requestLayout()V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method
