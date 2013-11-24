.class public Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;
.super Landroid/view/View;
.source "LayoutNotifyView.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier;


# instance fields
.field private mLayoutChangeHelper:Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;->mLayoutChangeHelper:Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    invoke-direct {v0, p0}, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;->mLayoutChangeHelper:Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    .line 35
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 44
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 45
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;->mLayoutChangeHelper:Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->onLayout(ZIIII)V

    .line 46
    return-void
.end method

.method public setOnLayoutChangeListener(Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/LayoutNotifyView;->mLayoutChangeHelper:Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;

    invoke-virtual {v0, p1}, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->setOnLayoutChangeListener(Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;)V

    .line 40
    return-void
.end method
