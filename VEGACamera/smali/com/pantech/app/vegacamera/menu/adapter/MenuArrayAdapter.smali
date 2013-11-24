.class public Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MenuArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final NOT_CURRENT_TITLE_IMAGE:I

.field private static final NOT_USED_TYPE_ICON:Z


# instance fields
.field private iLayoutId:I

.field private iOrientation:I

.field private iSelectedPos:I

.field private iSelectedRes:I

.field private inflater:Landroid/view/LayoutInflater;

.field private viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 2
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, arrays:Ljava/util/List;,"Ljava/util/List<Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    .line 23
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 24
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iLayoutId:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iOrientation:I

    .line 28
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iSelectedPos:I

    .line 29
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iSelectedRes:I

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 34
    iput p2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iLayoutId:I

    .line 35
    return-void
.end method

.method private _Free()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 192
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iLayoutId:I

    .line 194
    return-void
.end method


# virtual methods
.method public GetSelectedPosition()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iSelectedPos:I

    return v0
.end method

.method public SetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 197
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iOrientation:I

    if-ne v0, p1, :cond_0

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iOrientation:I

    .line 201
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public SetSelectedPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 205
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iSelectedPos:I

    .line 206
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->notifyDataSetChanged()V

    .line 207
    return-void
.end method

.method public SetSelectedRes(I)V
    .locals 0
    .parameter "res"

    .prologue
    .line 214
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iSelectedRes:I

    .line 215
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
    .line 182
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->_Free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 188
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 186
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 187
    throw v1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;
    .locals 1
    .parameter "position"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition(Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPosition(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getPosition(Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 59
    move-object v0, p2

    .line 61
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_6

    .line 62
    new-instance v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;-><init>(Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;)V

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    .line 63
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iLayoutId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 65
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->item_rotate_l:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v1, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 66
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->used_camera_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedCamera:Landroid/widget/ImageView;

    .line 67
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->used_video_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedVideo:Landroid/widget/ImageView;

    .line 68
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->current_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImage:Landroid/widget/ImageView;

    .line 69
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->current_image_selected:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImageSelectd:Landroid/widget/ImageView;

    .line 70
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    sget v1, Lcom/pantech/app/vegacamera/R$id;->current_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iOrientation:I

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrTitleImage()I

    move-result v1

    if-nez v1, :cond_7

    .line 85
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImageSelectd:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 102
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrTitleImage()I

    move-result v1

    if-nez v1, :cond_a

    .line 103
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImageSelectd:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 116
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    .line 117
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 134
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedCamera:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 135
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->UsedTypeIcon()Z

    move-result v1

    if-nez v1, :cond_e

    .line 136
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 150
    :cond_4
    :goto_4
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedVideo:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 151
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->UsedTypeIcon()Z

    move-result v1

    if-nez v1, :cond_11

    .line 152
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    :cond_5
    :goto_5
    return-object v0

    .line 74
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    goto/16 :goto_0

    .line 87
    :cond_7
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->GetSelectedPosition()I

    move-result v1

    if-ne v1, p1, :cond_9

    .line 88
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrTitleSetImage()I

    move-result v1

    if-eq v1, v6, :cond_8

    .line 89
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrTitleSetImage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :goto_6
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 91
    :cond_8
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrTitleImage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 94
    :cond_9
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImage:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrTitleImage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    .line 105
    :cond_a
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->GetSelectedPosition()I

    move-result v1

    if-ne v1, p1, :cond_b

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iSelectedRes:I

    if-eq v1, v6, :cond_b

    .line 106
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImageSelectd:Landroid/widget/ImageView;

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->iSelectedRes:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImageSelectd:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 109
    :cond_b
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->ivCurrImageSelectd:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 120
    :cond_c
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->GetSelectedPosition()I

    move-result v1

    if-ne v1, p1, :cond_d

    .line 121
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 122
    sget v3, Lcom/pantech/app/vegacamera/R$color;->menu_popup_modes_item_text_color_select:I

    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :goto_7
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_3

    .line 124
    :cond_d
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->tvCurrTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 125
    sget v3, Lcom/pantech/app/vegacamera/R$color;->menu_popup_modes_item_text_color_normal:I

    .line 124
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_7

    .line 138
    :cond_e
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrUsedType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    .line 139
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 141
    :cond_f
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrUsedType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "camera_only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 142
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 144
    :cond_10
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedCamera:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4

    .line 154
    :cond_11
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrUsedType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    .line 155
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 157
    :cond_12
    invoke-virtual {p0, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->getItem(I)Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/menu/data/SubItemInfoClass;->CurrUsedType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_only"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 158
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 160
    :cond_13
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter;->viewHolder:Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/vegacamera/menu/adapter/MenuArrayAdapter$ViewHolder;->rlUsedVideo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5
.end method
