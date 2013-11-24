.class Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;
.super Ljava/lang/Object;
.source "ModesGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$7(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-lez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowLeft:Landroid/view/View;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$9(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$7(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iMaxScrollx:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$10(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 357
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowRight:Landroid/view/View;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$11(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$7(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->iMaxScrollx:I
    invoke-static {v1}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$10(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowRight:Landroid/view/View;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$11(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 362
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->hsvScroll:Landroid/widget/HorizontalScrollView;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$7(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/widget/HorizontalScrollView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$2;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    #getter for: Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->ivArrowLeft:Landroid/view/View;
    invoke-static {v0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$9(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 366
    :cond_1
    return v2
.end method
