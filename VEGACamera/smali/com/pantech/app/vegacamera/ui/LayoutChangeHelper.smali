.class public Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;
.super Ljava/lang/Object;
.source "LayoutChangeHelper.java"

# interfaces
.implements Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier;


# instance fields
.field private mFirstTimeLayout:Z

.field private mListener:Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->mView:Landroid/view/View;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->mFirstTimeLayout:Z

    .line 30
    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->mListener:Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;

    if-nez v0, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->mFirstTimeLayout:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_0

    .line 41
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->mFirstTimeLayout:Z

    .line 42
    iget-object v0, p0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->mListener:Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->mView:Landroid/view/View;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;->onLayoutChange(Landroid/view/View;IIII)V

    goto :goto_0
.end method

.method public setOnLayoutChangeListener(Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/pantech/app/vegacamera/ui/LayoutChangeHelper;->mListener:Lcom/pantech/app/vegacamera/ui/LayoutChangeNotifier$Listener;

    .line 35
    return-void
.end method
