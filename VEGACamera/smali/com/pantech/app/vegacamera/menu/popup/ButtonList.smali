.class public Lcom/pantech/app/vegacamera/menu/popup/ButtonList;
.super Lcom/pantech/app/vegacamera/menu/AbstractPopupList;
.source "ButtonList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;,
        Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;
    }
.end annotation


# static fields
.field public static final DEPTH_STYLE_1ST_DEP:Ljava/lang/String; = "first_depth"

.field public static final DEPTH_STYLE_2ND_DEP:Ljava/lang/String; = "second_depth"

.field public static final DISPLAY_VIEW_TYPE_ALL:Ljava/lang/String; = "type_all"

.field public static final DISPLAY_VIEW_TYPE_IMAGE_ONLY:Ljava/lang/String; = "type_image_only"

.field public static final DISPLAY_VIEW_TYPE_TEXT_ONLY:Ljava/lang/String; = "type_text_only"

#the value of this static final field might be set in the static constructor
.field private static final ID_1ST_DEPTH_ITEM_ICON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_1ST_DEPTH_ITEM_TITLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_2ND_DEPTH_ITEM_ICON:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_2ND_DEPTH_ITEM_TITLE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_LAYOUT_1ST_DEPTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_LAYOUT_2ND_DEPTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_POPUP_ARROW:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ID_ROTATE_LAYOUT_1ST_DEPTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_1ST_ITEM_BTN_SELECTOR:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_2ND_ITEM_BTN_SELECTOR_LEFT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_2ND_ITEM_BTN_SELECTOR_MEDIUM:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final IMAGE_2ND_ITEM_BTN_SELECTOR_RIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_1ST_DEPTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_ID_2ND_DEPTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LAYOUT_LIST_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ButtonList"


# instance fields
.field private iCurrPosition:I

.field private iItemBottom:I

.field private iItemTop:I

.field private ivPopUpArrow:Landroid/view/View;

.field private mListItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;

.field private mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

.field private sDepthStyle:Ljava/lang/String;

.field private sViewType:Ljava/lang/String;

.field private vgItemView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/pantech/app/vegacamera/R$id;->popup_list_vg:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->LAYOUT_LIST_VIEW:I

    .line 37
    sget v0, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_button_1st_depth_list_item:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->LAYOUT_ID_1ST_DEPTH:I

    .line 38
    sget v0, Lcom/pantech/app/vegacamera/R$id;->menu_arrow:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_POPUP_ARROW:I

    .line 39
    sget v0, Lcom/pantech/app/vegacamera/R$id;->button_1st_depth_item_rotate_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_ROTATE_LAYOUT_1ST_DEPTH:I

    .line 40
    sget v0, Lcom/pantech/app/vegacamera/R$id;->button_1st_depth_item_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_LAYOUT_1ST_DEPTH:I

    .line 41
    sget v0, Lcom/pantech/app/vegacamera/R$id;->button_1st_depth_item_icon:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_1ST_DEPTH_ITEM_ICON:I

    .line 42
    sget v0, Lcom/pantech/app/vegacamera/R$id;->button_1st_depth_item_title:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_1ST_DEPTH_ITEM_TITLE:I

    .line 44
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->menu_item_selector:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->IMAGE_1ST_ITEM_BTN_SELECTOR:I

    .line 47
    sget v0, Lcom/pantech/app/vegacamera/R$layout;->menu_popup_button_2nd_depth_list_item:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->LAYOUT_ID_2ND_DEPTH:I

    .line 48
    sget v0, Lcom/pantech/app/vegacamera/R$id;->button_2nd_depth_item_l:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_LAYOUT_2ND_DEPTH:I

    .line 49
    sget v0, Lcom/pantech/app/vegacamera/R$id;->button_2nd_depth_item_icon:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_2ND_DEPTH_ITEM_ICON:I

    .line 50
    sget v0, Lcom/pantech/app/vegacamera/R$id;->button_2nd_depth_item_title:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_2ND_DEPTH_ITEM_TITLE:I

    .line 52
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->menu_settings_list_button_left:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->IMAGE_2ND_ITEM_BTN_SELECTOR_LEFT:I

    .line 53
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->menu_settings_list_button_medium:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->IMAGE_2ND_ITEM_BTN_SELECTOR_MEDIUM:I

    .line 54
    sget v0, Lcom/pantech/app/vegacamera/R$drawable;->menu_settings_list_button_right:I

    sput v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->IMAGE_2ND_ITEM_BTN_SELECTOR_RIGHT:I

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    .line 58
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    .line 60
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;

    .line 62
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iItemTop:I

    .line 63
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iItemBottom:I

    .line 64
    iput v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iCurrPosition:I

    .line 66
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->sDepthStyle:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->sViewType:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ivPopUpArrow:Landroid/view/View;

    .line 70
    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    .line 85
    return-void
.end method

.method private _1stItemSetBackGround(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->IMAGE_1ST_ITEM_BTN_SELECTOR:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 280
    :cond_0
    return-void
.end method

.method private _2ndItemSetBackGroud(Landroid/view/View;I)V
    .locals 3
    .parameter "view"
    .parameter "pos"

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, draw:Landroid/graphics/drawable/Drawable;
    if-nez p2, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->IMAGE_2ND_ITEM_BTN_SELECTOR_LEFT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 317
    :goto_0
    if-eqz p1, :cond_0

    .line 318
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_0
    return-void

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_2

    .line 312
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->IMAGE_2ND_ITEM_BTN_SELECTOR_RIGHT:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 313
    goto :goto_0

    .line 314
    :cond_2
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->IMAGE_2ND_ITEM_BTN_SELECTOR_MEDIUM:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private _AddListView()V
    .locals 12

    .prologue
    const/4 v11, -0x1

    .line 180
    const/4 v6, -0x1

    .line 181
    .local v6, layoutID:I
    const/4 v4, -0x1

    .line 182
    .local v4, iconID:I
    const/4 v3, -0x1

    .line 184
    .local v3, icon:I
    const/4 v1, -0x1

    .line 185
    .local v1, iLayoutWidth:I
    const/4 v2, -0x1

    .line 187
    .local v2, iPerViewWidth:I
    const/4 v7, 0x0

    .line 189
    .local v7, title:Ljava/lang/String;
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_GetDepthStyle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "second_depth"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_2nd_button_list_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    .line 191
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    div-int v2, v1, v8

    .line 194
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v0, v8, :cond_1

    .line 260
    return-void

    .line 196
    :cond_1
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "id"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 197
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "id"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 200
    :cond_2
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->sViewType:Ljava/lang/String;

    const-string v9, "type_image_only"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 202
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "image"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 203
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "image"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 221
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_GetDepthStyle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "first_depth"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 222
    sget v6, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->LAYOUT_ID_1ST_DEPTH:I

    .line 224
    if-eq v6, v11, :cond_4

    .line 225
    new-instance v5, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, p0, v8, v6}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;-><init>(Lcom/pantech/app/vegacamera/menu/popup/ButtonList;Landroid/content/Context;I)V

    .line 227
    .local v5, item:Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;
    const-string v8, "first_depth"

    invoke-virtual {v5, v8}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->SetViewStyle(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v5, v3, v7, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->SetView(ILjava/lang/String;I)V

    .line 229
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->Item1stLayout()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->Item1stLayout()Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_1stItemSetBackGround(Landroid/view/View;I)V

    .line 233
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 194
    .end local v5           #item:Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 205
    :cond_5
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->sViewType:Ljava/lang/String;

    const-string v9, "type_text_only"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 207
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "text"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 208
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "text"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 210
    goto :goto_1

    .line 212
    :cond_6
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "image"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 213
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "image"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 216
    :cond_7
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "text"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 217
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v9, "text"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 236
    :cond_8
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_GetDepthStyle()Ljava/lang/String;

    move-result-object v8

    const-string v9, "second_depth"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 237
    sget v6, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->LAYOUT_ID_2ND_DEPTH:I

    .line 239
    if-eq v6, v11, :cond_4

    .line 240
    new-instance v5, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;

    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, p0, v8, v6}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;-><init>(Lcom/pantech/app/vegacamera/menu/popup/ButtonList;Landroid/content/Context;I)V

    .line 242
    .restart local v5       #item:Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;
    const-string v8, "second_depth"

    invoke-virtual {v5, v8}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->SetViewStyle(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v5, v3, v7, v4}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->SetView(ILjava/lang/String;I)V

    .line 244
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->Item2ndLayout()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    invoke-virtual {v5, v2}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->SetViewWidth(I)V

    .line 247
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v8

    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->Item2ndLayout()Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_2ndItemSetBackGroud(Landroid/view/View;I)V

    .line 250
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->Item2ndIconView()Landroid/widget/ImageView;

    move-result-object v8

    invoke-direct {p0, v8, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_Current2ndItemIconSetImage(Landroid/widget/ImageView;I)V

    .line 251
    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v8

    invoke-direct {p0, v8, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_Current2ndItemIconBackgroundSetImage(Landroid/view/View;I)V

    .line 255
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$ListItemView;->ItemView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method private _Current2ndItemIconBackgroundSetImage(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "pos"

    .prologue
    .line 341
    if-eqz p1, :cond_0

    .line 342
    iget v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iCurrPosition:I

    if-ne v0, p2, :cond_1

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0
.end method

.method private _Current2ndItemIconSetImage(Landroid/widget/ImageView;I)V
    .locals 3
    .parameter "iv"
    .parameter "pos"

    .prologue
    .line 323
    const/4 v0, -0x1

    .line 325
    .local v0, icon:I
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iCurrPosition:I

    if-ne v1, p2, :cond_2

    .line 326
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "set_image"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "set_image"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 335
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 336
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 338
    :cond_1
    return-void

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private _Dra1stTitleViewSelector(Landroid/widget/TextView;I)V
    .locals 3
    .parameter "tv"
    .parameter "pos"

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->menu_popup_1st_button_list_item_text_color_normal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 297
    .local v0, color:I
    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iCurrPosition:I

    if-ne v1, p2, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->menu_popup_1st_button_list_item_text_color_select:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 301
    :cond_0
    if-eqz p1, :cond_1

    .line 302
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 304
    :cond_1
    return-void
.end method

.method private _Draw1stIconViewSelector(Landroid/widget/ImageView;I)V
    .locals 3
    .parameter "iv"
    .parameter "pos"

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 285
    .local v0, filter:Landroid/graphics/ColorFilter;
    invoke-virtual {p1}, Landroid/widget/ImageView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iCurrPosition:I

    if-ne v1, p2, :cond_1

    .line 286
    :cond_0
    new-instance v0, Landroid/graphics/LightingColorFilter;

    .end local v0           #filter:Landroid/graphics/ColorFilter;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/R$color;->menu_item_image_color_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 289
    .restart local v0       #filter:Landroid/graphics/ColorFilter;
    :cond_1
    if-eqz p1, :cond_2

    .line 290
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 292
    :cond_2
    return-void
.end method

.method private _GetDepthStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->sDepthStyle:Ljava/lang/String;

    return-object v0
.end method

.method private _InitLayout()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 163
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_GetDepthStyle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "first_depth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ivPopUpArrow:Landroid/view/View;

    if-nez v2, :cond_0

    .line 165
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_POPUP_ARROW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ivPopUpArrow:Landroid/view/View;

    .line 166
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 168
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/pantech/app/vegacamera/R$dimen;->menu_popup_arrow_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    .line 169
    .local v0, _ArrowWH:I
    iget v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iItemTop:I

    iget v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iItemBottom:I

    iget v4, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iItemTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 170
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ivPopUpArrow:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    .end local v0           #_ArrowWH:I
    .end local v1           #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 175
    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->LAYOUT_LIST_VIEW:I

    invoke-virtual {p0, v2}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    .line 177
    :cond_1
    return-void
.end method

.method private _ListGetData()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 104
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    .line 106
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 107
    .local v2, entries:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 108
    .local v3, entryValues:[Ljava/lang/CharSequence;
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetItemIconIds()[I

    move-result-object v5

    .line 109
    .local v5, iconIds:[I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetItemSetIconIds()[I

    move-result-object v6

    .line 111
    .local v6, iconSetIds:[I
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetKey()Ljava/lang/String;

    move-result-object v8

    const-string v11, "pref_flash_mode_camera"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v0, v9

    .line 112
    .local v0, IsFlashKey:Z
    :goto_0
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mContext:Landroid/content/Context;

    check-cast v8, Lcom/pantech/app/vegacamera/Camera;

    invoke-virtual {v8}, Lcom/pantech/app/vegacamera/Camera;->GetCurrentModuleIndex()I

    move-result v8

    const/16 v11, 0xc

    if-ne v8, v11, :cond_1

    move v1, v9

    .line 115
    .local v1, IsRecord:Z
    :goto_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v8, v2

    if-lt v4, v8, :cond_2

    .line 132
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    return-object v8

    .end local v0           #IsFlashKey:Z
    .end local v1           #IsRecord:Z
    .end local v4           #i:I
    :cond_0
    move v0, v10

    .line 111
    goto :goto_0

    .restart local v0       #IsFlashKey:Z
    :cond_1
    move v1, v10

    .line 112
    goto :goto_1

    .line 116
    .restart local v1       #IsRecord:Z
    .restart local v4       #i:I
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    aget-object v8, v3, v4

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "auto"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 115
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 119
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v7, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "value"

    aget-object v9, v3, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v8, "text"

    aget-object v9, v2, v4

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    if-eqz v5, :cond_4

    .line 123
    const-string v8, "image"

    aget v9, v5, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_4
    if-eqz v6, :cond_5

    .line 126
    const-string v8, "set_image"

    aget v9, v6, v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_5
    const-string v8, "id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-object v8, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private _getCurrentIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "currentvalue"

    .prologue
    .line 154
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 159
    const/4 v0, -0x1

    .end local v0           #i:I
    :cond_0
    return v0

    .line 155
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_LAYOUT_1ST_DEPTH:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_1ST_DEPTH_ITEM_ICON:I

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 42
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_1ST_DEPTH_ITEM_TITLE:I

    return v0
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_LAYOUT_2ND_DEPTH:I

    return v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_2ND_DEPTH_ITEM_ICON:I

    return v0
.end method

.method static synthetic access$5()I
    .locals 1

    .prologue
    .line 50
    sget v0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_2ND_DEPTH_ITEM_TITLE:I

    return v0
.end method


# virtual methods
.method public Initialize(Lcom/pantech/app/vegacamera/preference/ButtonListPreference;)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    .line 144
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_ListGetData()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    .line 146
    iget-object v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v0}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_getCurrentIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iCurrPosition:I

    .line 148
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_InitLayout()V

    .line 149
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_AddListView()V

    .line 150
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_ReloadPreference()V

    .line 151
    return-void
.end method

.method public SetDepthStyle(Ljava/lang/String;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->sDepthStyle:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public SetItemChangedListener(Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;

    .line 89
    return-void
.end method

.method public SetItemRect(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 136
    iput p2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iItemTop:I

    .line 137
    iput p4, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iItemBottom:I

    .line 138
    return-void
.end method

.method public SetViewType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->sViewType:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public _ReloadPreference()V
    .locals 3

    .prologue
    .line 360
    const-string v1, "ButtonList"

    const-string v2, "[MenuController] _ReloadPreference()"

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->FindIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 362
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 365
    const-string v1, "ButtonList"

    const-string v2, "[MenuController] Invalid preference value."

    invoke-static {v1, v2}, Lcom/pantech/app/vegacamera/util/CameraLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v1}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->Print()V

    .line 368
    :cond_0
    return-void
.end method

.method public _UpdateListView()V
    .locals 3

    .prologue
    .line 263
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 272
    return-void

    .line 264
    :cond_0
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_GetDepthStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "second_depth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_2ND_DEPTH_ITEM_ICON:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_Current2ndItemIconSetImage(Landroid/widget/ImageView;I)V

    .line 266
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_Current2ndItemIconBackgroundSetImage(Landroid/view/View;I)V

    .line 263
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 372
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_UpdateListView()V

    .line 380
    return-void

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 374
    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "value"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->SetValue(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mListener:Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;

    iget-object v2, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v2}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->mPreference:Lcom/pantech/app/vegacamera/preference/ButtonListPreference;

    invoke-virtual {v3}, Lcom/pantech/app/vegacamera/preference/ButtonListPreference;->GetValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList$Listener;->OnChangedMenuItemValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iCurrPosition:I

    .line 372
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_GetDepthStyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_GetDepthStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_depth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 413
    .end local v0           #i:I
    :cond_0
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onDraw(Landroid/graphics/Canvas;)V

    .line 414
    return-void

    .line 409
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_1ST_DEPTH_ITEM_ICON:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_Draw1stIconViewSelector(Landroid/widget/ImageView;I)V

    .line 410
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_1ST_DEPTH_ITEM_TITLE:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {p0, v1, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_Dra1stTitleViewSelector(Landroid/widget/TextView;I)V

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 401
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->SetDisableRotation(Z)V

    .line 402
    invoke-super {p0, p1, p2}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->onMeasure(II)V

    .line 403
    return-void
.end method

.method public setDefault()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->iCurrPosition:I

    .line 384
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_GetDepthStyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->_GetDepthStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "first_depth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 396
    .end local v0           #i:I
    :cond_0
    invoke-super {p0, p1}, Lcom/pantech/app/vegacamera/menu/AbstractPopupList;->setOrientation(I)V

    .line 397
    return-void

    .line 390
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_ROTATE_LAYOUT_1ST_DEPTH:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    if-eqz v1, :cond_2

    .line 391
    iget-object v1, p0, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->vgItemView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/pantech/app/vegacamera/menu/popup/ButtonList;->ID_ROTATE_LAYOUT_1ST_DEPTH:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/vegacamera/ui/RotateLayout;

    .line 392
    invoke-virtual {v1, p1}, Lcom/pantech/app/vegacamera/ui/RotateLayout;->setOrientation(I)V

    .line 389
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
