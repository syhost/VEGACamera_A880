.class Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;
.super Ljava/lang/Object;
.source "MenuControlBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/MenuControlBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemView"
.end annotation


# instance fields
.field private _Inflater:Landroid/view/LayoutInflater;

.field private _Layout:Landroid/view/View;

.field private _Viewer:Landroid/view/View;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/MenuControlBar;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/menu/MenuControlBar;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 698
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->this$0:Lcom/pantech/app/vegacamera/menu/MenuControlBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 693
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Inflater:Landroid/view/LayoutInflater;

    .line 694
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Viewer:Landroid/view/View;

    .line 696
    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Layout:Landroid/view/View;

    .line 699
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Inflater:Landroid/view/LayoutInflater;

    .line 700
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/pantech/app/vegacamera/R$layout;->menu_control_bar_item:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Viewer:Landroid/view/View;

    .line 701
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Viewer:Landroid/view/View;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->control_bar_item_l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Layout:Landroid/view/View;

    .line 702
    return-void
.end method

.method private _Free()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Inflater:Landroid/view/LayoutInflater;

    .line 722
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Viewer:Landroid/view/View;

    .line 723
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Layout:Landroid/view/View;

    .line 724
    return-void
.end method


# virtual methods
.method public ItemLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Layout:Landroid/view/View;

    return-object v0
.end method

.method public ItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Viewer:Landroid/view/View;

    return-object v0
.end method

.method public SetView(I)V
    .locals 2
    .parameter "viewId"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Layout:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 706
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Layout:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 707
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Layout:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setId(I)V

    .line 710
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 729
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/MenuControlBar$ListItemView;->_Free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 735
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 732
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 733
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 734
    throw v1
.end method
