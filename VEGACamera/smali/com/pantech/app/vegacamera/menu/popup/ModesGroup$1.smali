.class Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$1;
.super Ljava/lang/Object;
.source "ModesGroup.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->_HScrollViewInit(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;


# direct methods
.method constructor <init>(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$7(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 348
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$7(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/widget/HorizontalScrollView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$1;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$7(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/widget/HorizontalScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    #setter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iMaxScrollx:I
    invoke-static {v0, v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$8(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;I)V

    .line 349
    return-void
.end method
