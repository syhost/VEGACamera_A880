.class public abstract Lcom/pantech/app/vegacamera/ui/FocusIndicator;
.super Landroid/view/View;
.source "FocusIndicator.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/ui/FocusIndicator;->clear()V

    .line 44
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 31
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public showFail()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public showStart()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public showSuccess()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public switchResource(Z)V
    .locals 0
    .parameter "focusLock"

    .prologue
    .line 48
    return-void
.end method
