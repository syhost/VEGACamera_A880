.class public Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;
.super Landroid/widget/SimpleAdapter;
.source "MenuSimpleAdapter.java"


# static fields
.field public static final TEXT_COLOR_BLACK:Ljava/lang/String; = "text_black_color"

.field public static final TEXT_COLOR_WHITE:Ljava/lang/String; = "text_white_color"


# instance fields
.field private iOrientation:I

.field private iResource:I

.field private iSelectedPos:I

.field private ivCurrImageSelected:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private mFrom:[Ljava/lang/String;

.field private mTo:[I

.field private rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

.field private sTextColorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "resource"
    .parameter "from"
    .parameter "to"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .prologue
    .local p2, data:Ljava/util/List;,"Ljava/util/List<+Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 20
    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iResource:I

    .line 21
    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iOrientation:I

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iSelectedPos:I

    .line 25
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->sTextColorType:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mTo:[I

    .line 28
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 33
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->ivCurrImageSelected:Landroid/widget/ImageView;

    .line 34
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mData:Ljava/util/List;

    .line 42
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mContext:Landroid/content/Context;

    .line 43
    iput p3, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iResource:I

    .line 44
    iput-object p2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mData:Ljava/util/List;

    .line 45
    iput-object p5, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mTo:[I

    .line 46
    iput-object p4, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method private _BindView(ILandroid/view/View;)V
    .locals 12
    .parameter "position"
    .parameter "view"

    .prologue
    .line 109
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mData:Ljava/util/List;

    invoke-interface {v10, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 111
    .local v4, dataSet:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-nez v4, :cond_1

    .line 160
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->getViewBinder()Landroid/widget/SimpleAdapter$ViewBinder;

    move-result-object v0

    .line 116
    .local v0, binder:Landroid/widget/SimpleAdapter$ViewBinder;
    iget-object v5, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 117
    .local v5, from:[Ljava/lang/String;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mTo:[I

    .line 118
    .local v8, to:[I
    array-length v2, v8

    .line 120
    .local v2, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 121
    aget v10, v8, v6

    invoke-virtual {p2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 122
    .local v9, v:Landroid/view/View;
    if-eqz v9, :cond_5

    .line 123
    aget-object v10, v5, v6

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 124
    .local v3, data:Ljava/lang/Object;
    if-nez v3, :cond_6

    const-string v7, ""

    .line 126
    .local v7, text:Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_2

    .line 127
    const-string v7, ""

    .line 130
    :cond_2
    const/4 v1, 0x0

    .line 132
    .local v1, bound:Z
    if-eqz v0, :cond_3

    .line 133
    invoke-interface {v0, v9, v3, v7}, Landroid/widget/SimpleAdapter$ViewBinder;->setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    .line 136
    :cond_3
    if-nez v1, :cond_5

    .line 137
    instance-of v10, v9, Landroid/widget/ImageView;

    if-eqz v10, :cond_4

    .line 138
    instance-of v10, v3, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_4

    move-object v10, v9

    .line 139
    check-cast v10, Landroid/widget/ImageView;

    check-cast v3, Landroid/graphics/Bitmap;

    .end local v3           #data:Ljava/lang/Object;
    invoke-direct {p0, v10, v3}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->_SetViewImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 143
    :cond_4
    instance-of v10, v9, Landroid/widget/TextView;

    if-eqz v10, :cond_5

    .line 144
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->GetSelectedPosition()I

    move-result v10

    if-ne v10, p1, :cond_7

    .line 145
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #v:Landroid/view/View;
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 146
    sget v11, Lcom/pantech/app/vegacamera/R$color;->menu_popup_button_vert_list_item_text_color_select:I

    .line 145
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .end local v1           #bound:Z
    .end local v7           #text:Ljava/lang/String;
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 124
    .restart local v3       #data:Ljava/lang/Object;
    .restart local v9       #v:Landroid/view/View;
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 148
    .end local v3           #data:Ljava/lang/Object;
    .restart local v1       #bound:Z
    .restart local v7       #text:Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->_GetTextColorType()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->_GetTextColorType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "text_black_color"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 149
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #v:Landroid/view/View;
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 150
    sget v11, Lcom/pantech/app/vegacamera/R$color;->menu_popup_list_item_text_color_black:I

    .line 149
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 152
    .restart local v9       #v:Landroid/view/View;
    :cond_8
    check-cast v9, Landroid/widget/TextView;

    .end local v9           #v:Landroid/view/View;
    iget-object v10, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 153
    sget v11, Lcom/pantech/app/vegacamera/R$color;->menu_popup_list_item_text_color_white:I

    .line 152
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2
.end method

.method private _CreateViewFromResourceEx(Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 0
    .parameter "v"
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"
    .parameter "resource"

    .prologue
    .line 104
    invoke-direct {p0, p2, p1}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->_BindView(ILandroid/view/View;)V

    .line 105
    return-object p1
.end method

.method private _Free()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iResource:I

    .line 179
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mTo:[I

    .line 180
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mFrom:[Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mData:Ljava/util/List;

    .line 183
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->mContext:Landroid/content/Context;

    .line 184
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 185
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->ivCurrImageSelected:Landroid/widget/ImageView;

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iSelectedPos:I

    .line 187
    iput-object v1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->sTextColorType:Ljava/lang/String;

    .line 188
    return-void
.end method

.method private _GetTextColorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->sTextColorType:Ljava/lang/String;

    return-object v0
.end method

.method private _SetViewImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "iv"
    .parameter "bitmap"

    .prologue
    .line 163
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    return-void
.end method


# virtual methods
.method public GetSelectedPosition()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iSelectedPos:I

    return v0
.end method

.method public SetOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 191
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iOrientation:I

    if-ne v0, p1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iOrientation:I

    .line 195
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public SetSelectedPosition(I)V
    .locals 0
    .parameter "pos"

    .prologue
    .line 199
    iput p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iSelectedPos:I

    .line 200
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->notifyDataSetChanged()V

    .line 201
    return-void
.end method

.method public SetTextColorType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->sTextColorType:Ljava/lang/String;

    .line 213
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
    .line 169
    :try_start_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->_Free()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 175
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, t:Ljava/lang/Throwable;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    .line 173
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 174
    throw v1
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 79
    .local v1, v:Landroid/view/View;
    iget v5, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->_CreateViewFromResourceEx(Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 81
    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 53
    .local v1, v:Landroid/view/View;
    iget v5, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iResource:I

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->_CreateViewFromResourceEx(Landroid/view/View;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    sget v0, Lcom/pantech/app/vegacamera/R$id;->item_rotate_l:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 57
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->rlItemG:Lcom/pantech/app/vegacamera/ui/RotateLayout;

    iget v2, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->iOrientation:I

    invoke-virtual {v0, v2}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 61
    :cond_0
    sget v0, Lcom/pantech/app/vegacamera/R$id;->current_image_selected:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->ivCurrImageSelected:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->ivCurrImageSelected:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->GetSelectedPosition()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 64
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->ivCurrImageSelected:Landroid/widget/ImageView;

    sget v2, Lcom/pantech/app/vegacamera/R$drawable;->camera_effect_color_selected:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 65
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->ivCurrImageSelected:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    :cond_1
    :goto_0
    return-object v1

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/adapter/MenuSimpleAdapter;->ivCurrImageSelected:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setViewImage(Landroid/widget/ImageView;I)V
    .locals 0
    .parameter "v"
    .parameter "value"

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;I)V

    .line 87
    return-void
.end method

.method public setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 1
    .parameter "v"
    .parameter "value"

    .prologue
    .line 91
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleAdapter;->setViewImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setViewText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "v"
    .parameter "text"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/SimpleAdapter;->setViewText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 101
    return-void
.end method
