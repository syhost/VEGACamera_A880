.class Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;
.super Ljava/lang/Object;
.source "ModesGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemView"
.end annotation


# instance fields
.field private _ButtonIconIv:Landroid/view/View;

.field private _ButtonLayout:Landroid/view/View;

.field private _ButtonTitleTv:Landroid/view/View;

.field private _HScrollIconIv:Landroid/view/View;

.field private _HScrollLayout:Landroid/view/View;

.field private _HScrollSelectdIv:Landroid/view/View;

.field private _HScrollTitleTv:Landroid/view/View;

.field private _ViewHeight:I

.field private _ViewStyle:Ljava/lang/String;

.field private _ViewWidth:I

.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

.field private viewer:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "layoutID"

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 950
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->this$0:Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->inflater:Landroid/view/LayoutInflater;

    .line 935
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    .line 936
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewStyle:Ljava/lang/String;

    .line 938
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollLayout:Landroid/view/View;

    .line 939
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollIconIv:Landroid/view/View;

    .line 940
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollTitleTv:Landroid/view/View;

    .line 941
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollSelectdIv:Landroid/view/View;

    .line 943
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonLayout:Landroid/view/View;

    .line 944
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonIconIv:Landroid/view/View;

    .line 945
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonTitleTv:Landroid/view/View;

    .line 947
    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewWidth:I

    .line 948
    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewHeight:I

    .line 951
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->inflater:Landroid/view/LayoutInflater;

    .line 952
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->inflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    .line 954
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$0()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollLayout:Landroid/view/View;

    .line 955
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$1()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollIconIv:Landroid/view/View;

    .line 956
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$2()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollTitleTv:Landroid/view/View;

    .line 957
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$3()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollSelectdIv:Landroid/view/View;

    .line 959
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$4()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonLayout:Landroid/view/View;

    .line 960
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$5()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonIconIv:Landroid/view/View;

    .line 961
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    invoke-static {}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup;->access$6()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonTitleTv:Landroid/view/View;

    .line 962
    return-void
.end method

.method private _AddButtonItem(ILjava/lang/String;)V
    .locals 1
    .parameter "icon"
    .parameter "text"

    .prologue
    .line 1024
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonIconIv:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1027
    :cond_0
    if-eqz p2, :cond_1

    .line 1028
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonTitleTv:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    :cond_1
    return-void
.end method

.method private _AddHScrollItem(ILjava/lang/String;)V
    .locals 2
    .parameter "icon"
    .parameter "text"

    .prologue
    .line 1001
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollIconIv:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1004
    :cond_0
    if-eqz p2, :cond_1

    .line 1005
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollTitleTv:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollTitleTv:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1008
    :cond_1
    return-void
.end method

.method private _Free()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 1049
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->inflater:Landroid/view/LayoutInflater;

    .line 1050
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    .line 1051
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewStyle:Ljava/lang/String;

    .line 1052
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollLayout:Landroid/view/View;

    .line 1053
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollIconIv:Landroid/view/View;

    .line 1054
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollTitleTv:Landroid/view/View;

    .line 1055
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollSelectdIv:Landroid/view/View;

    .line 1056
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonLayout:Landroid/view/View;

    .line 1057
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonIconIv:Landroid/view/View;

    .line 1058
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonTitleTv:Landroid/view/View;

    .line 1059
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewWidth:I

    .line 1060
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewHeight:I

    .line 1061
    return-void
.end method

.method private _GetViewStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewStyle:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public ItemButtonLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonLayout:Landroid/view/View;

    return-object v0
.end method

.method public ItemButtonTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonTitleTv:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public ItemHScrollIconView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 997
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollIconIv:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public ItemHScrollLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollLayout:Landroid/view/View;

    return-object v0
.end method

.method public ItemHScrollSelected()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollSelectdIv:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method public ItemHScrollTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollTitleTv:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public ItemView()Landroid/view/View;
    .locals 1

    .prologue
    .line 984
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->viewer:Landroid/view/View;

    return-object v0
.end method

.method public SetViewHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1037
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewHeight:I

    .line 1038
    return-void
.end method

.method public SetViewStyle(Ljava/lang/String;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 1041
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewStyle:Ljava/lang/String;

    .line 1042
    return-void
.end method

.method public SetViewWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 1033
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewWidth:I

    .line 1034
    return-void
.end method

.method public SetViews(ILjava/lang/String;I)V
    .locals 4
    .parameter "icon"
    .parameter "text"
    .parameter "viewId"

    .prologue
    const/4 v3, -0x1

    .line 965
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_GetViewStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scroll_style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 966
    if-eq p3, v3, :cond_0

    .line 967
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_HScrollLayout:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setId(I)V

    .line 970
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_AddHScrollItem(ILjava/lang/String;)V

    .line 981
    :cond_1
    :goto_0
    return-void

    .line 971
    :cond_2
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_GetViewStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text_style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 972
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewWidth:I

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 973
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonLayout:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonLayout:Landroid/view/View;

    check-cast v1, Landroid/widget/RelativeLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 975
    if-eq p3, v3, :cond_3

    .line 976
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_ButtonLayout:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setId(I)V

    .line 979
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_AddButtonItem(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1066
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ModesGroup$ListItemView;->_Free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1072
    return-void

    .line 1067
    :catch_0
    move-exception v0

    .line 1068
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1069
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 1070
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1071
    throw v1
.end method
