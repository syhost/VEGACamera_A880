.class public Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuDialogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;",
        ">;"
    }
.end annotation


# instance fields
.field private iLayoutId:I

.field private iOrientation:I

.field private inflater:Landroid/view/LayoutInflater;

.field private sListType:Ljava/lang/String;

.field private viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .parameter "style"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, objects:Ljava/util/List;,"Ljava/util/List<Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;>;"
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 18
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    .line 19
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->iLayoutId:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->iOrientation:I

    .line 23
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->sListType:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 28
    iput p2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->iLayoutId:I

    .line 29
    iput-object p4, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->sListType:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private _Free()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 97
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    .line 98
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->iLayoutId:I

    .line 99
    return-void
.end method


# virtual methods
.method public SetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 102
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->iOrientation:I

    if-ne v0, p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->iOrientation:I

    .line 106
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->notifyDataSetChanged()V

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
    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->_Free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 93
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 91
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 92
    throw v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 34
    move-object v1, p2

    .line 36
    .local v1, view:Landroid/view/View;
    if-nez v1, :cond_3

    .line 37
    new-instance v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    invoke-direct {v2, p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;-><init>(Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;)V

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    .line 38
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->iLayoutId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->title_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    .line 41
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->info_text:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->tvSubItemCurrValue:Landroid/widget/TextView;

    .line 42
    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    sget v2, Lcom/pantech/app/vegacamera/R$id;->radio_btn:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->ivRadioButton:Landroid/widget/ImageView;

    .line 44
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    :goto_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    iget-object v3, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->getItemValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->tvSubItemCurrValue:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 54
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->sListType:Ljava/lang/String;

    const-string v3, "type_all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 55
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    iget-object v3, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->tvSubItemCurrValue:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->getItemTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->ivRadioButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/popup/PopupDialog$DialogItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_setting_radio_on:I

    .line 63
    .local v0, radioB:I
    :goto_2
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->ivRadioButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    .end local v0           #radioB:I
    :cond_2
    return-object v1

    .line 46
    :cond_3
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    goto :goto_0

    .line 57
    :cond_4
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;

    iget-object v2, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter$ViewHolder;->tvSubItemCurrValue:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 62
    :cond_5
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->camera_setting_radio_off:I

    goto :goto_2
.end method

.method public getsListType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->sListType:Ljava/lang/String;

    return-object v0
.end method

.method public setsListType(Ljava/lang/String;)V
    .locals 0
    .parameter "sListType"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuDialogAdapter;->sListType:Ljava/lang/String;

    .line 75
    return-void
.end method
