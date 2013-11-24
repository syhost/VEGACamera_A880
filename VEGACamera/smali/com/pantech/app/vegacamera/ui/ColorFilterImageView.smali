.class public Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;
.super Landroid/widget/ImageView;
.source "ColorFilterImageView.java"


# instance fields
.field private final DISABLED_ALPHA:F

.field private mFilterEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const v0, 0x3ecccccd

    iput v0, p0, Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;->DISABLED_ALPHA:F

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;->mFilterEnabled:Z

    .line 30
    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;->mFilterEnabled:Z

    .line 50
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 39
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;->setAlpha(F)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    const v0, 0x3ecccccd

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/ui/ColorFilterImageView;->setAlpha(F)V

    goto :goto_0
.end method
